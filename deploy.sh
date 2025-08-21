#!/bin/bash

# NoSQL-CN 社区网站部署脚本
# 部署到 GitHub Pages gh-pages 分支
# 使用方法: ./deploy.sh

set -e

# 配置
REMOTE_REPO="git@github.com:nosql-cn/nosql-cn.org.git"
DEPLOY_BRANCH="gh-pages"
BUILD_DIR="public"

echo "🚀 开始部署 NoSQL-CN 社区网站到 GitHub Pages..."

# 检查 Hugo 是否安装
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo 未安装，请先安装 Hugo"
    echo "   macOS: brew install hugo"
    echo "   其他系统: https://gohugo.io/installation/"
    exit 1
fi

# 检查 Git 是否安装
if ! command -v git &> /dev/null; then
    echo "❌ Git 未安装，请先安装 Git"
    exit 1
fi

# 检查是否在 Git 仓库中
if [ ! -d ".git" ]; then
    echo "❌ 当前目录不是 Git 仓库"
    exit 1
fi

# 清理旧的构建文件
echo "🧹 清理旧的构建文件..."
rm -rf $BUILD_DIR

# 构建生产版本
echo "🔨 构建生产版本..."
hugo --environment production

# 检查构建是否成功
if [ ! -d "$BUILD_DIR" ]; then
    echo "❌ 构建失败，$BUILD_DIR 目录不存在"
    exit 1
fi

# 检查关键页面是否存在
echo "✅ 检查关键页面..."
required_pages=("index.html" "about/index.html" "contribute/index.html" "faq/index.html")
for page in "${required_pages[@]}"; do
    if [ ! -f "$BUILD_DIR/$page" ]; then
        echo "❌ 页面不存在: $page"
        exit 1
    fi
done

echo "✅ 构建成功！"
echo "📊 页面统计:"
echo "   - 总页面数: $(find $BUILD_DIR -name "*.html" | wc -l)"
echo "   - 总文件数: $(find $BUILD_DIR -type f | wc -l)"
echo "   - 总大小: $(du -sh $BUILD_DIR | cut -f1)"

# 检查是否有未提交的更改
if [ -n "$(git status --porcelain)" ]; then
    echo ""
    echo "⚠️  检测到未提交的更改:"
    git status --porcelain
    echo ""
    read -p "是否继续部署? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "❌ 部署已取消"
        exit 1
    fi
fi

# 初始化 gh-pages 分支（如果不存在）
echo ""
echo "📦 准备部署到 $DEPLOY_BRANCH 分支..."

# 创建临时目录
TEMP_DEPLOY_DIR=$(mktemp -d)
echo "📁 使用临时目录: $TEMP_DEPLOY_DIR"

# 复制构建文件到临时目录
cp -r $BUILD_DIR/* $TEMP_DEPLOY_DIR/

# 检查远程分支是否存在
if git show-ref --verify --quiet refs/remotes/origin/$DEPLOY_BRANCH; then
    echo "📥 检出现有的 $DEPLOY_BRANCH 分支..."
    git checkout $DEPLOY_BRANCH
    git pull origin $DEPLOY_BRANCH
else
    echo "🌟 创建新的 $DEPLOY_BRANCH 分支..."
    git checkout --orphan $DEPLOY_BRANCH
    git rm -rf .
    touch README.md
    echo "# NoSQL-CN 社区官网" > README.md
    echo "## GitHub Pages 部署" >> README.md
    echo "此分支由 Hugo 自动生成，请勿直接修改。" >> README.md
    git add README.md
    git commit -m "初始化 gh-pages 分支"
fi

# 清理现有文件（保留 .git）
echo "🧹 清理现有文件..."
find . -maxdepth 1 ! -name '.git' ! -name '.' ! -name '..' -exec rm -rf {} +

# 复制新文件
echo "📋 复制构建文件..."
cp -r $TEMP_DEPLOY_DIR/* .

# 添加所有文件
git add .

# 检查是否有更改
if git diff --staged --quiet; then
    echo "ℹ️  没有需要部署的更改"
    echo "🎯 切换回 master 分支"
    git checkout master
    exit 0
fi

# 提交更改
echo "💾 提交更改..."
git commit -m "🤖 自动部署网站更新

$(date '+%Y-%m-%d %H:%M:%S')

构建统计:
- 页面数: $(find . -name "*.html" | wc -l)
- 文件数: $(find . -type f | wc -l)
- 大小: $(du -sh . | cut -f1)"

# 推送到远程
echo "🚀 推送到远程仓库 $DEPLOY_BRANCH 分支..."
git push origin $DEPLOY_BRANCH

# 切换回原分支
ORIGINAL_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$ORIGINAL_BRANCH" != "master" ]; then
    echo "🔄 切换回 $ORIGINAL_BRANCH 分支"
    git checkout $ORIGINAL_BRANCH
fi

# 清理临时目录
rm -rf $TEMP_DEPLOY_DIR

echo ""
echo "🎉 部署成功完成！"
echo "🌐 网站地址: https://nosql-cn.org"
echo "⏱️  GitHub Pages 可能需要几分钟时间生效"
echo "📋 部署分支: $DEPLOY_BRANCH"
echo "🔗 仓库地址: $REMOTE_REPO"