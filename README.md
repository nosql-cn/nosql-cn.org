# NoSQL-CN 社区官网

> 存储领域的从业者和爱好者自发组织的民间技术交流社区 - **无广告、零推广、不包装**

本项目是基于 [Hugo](https://gohugo.io/) 构建的 NoSQL-CN 社区官网，旨在为存储技术爱好者提供一个纯粹的技术交流平台。

## 目录结构简介

- `content/`：站点内容（文章、页面等）
- `themes/`：主题（本项目使用 dot-org-hugo-theme）
- `config/`：多环境配置
- `static/`：静态资源（图片、JS、CSS 等）
- `archetypes/`：内容模板
- `layouts/`：自定义布局
- `assets/`：前端资源（如 SCSS、JS）
- `data/`：结构化数据
- `i18n/`：多语言支持

## 环境依赖

- [Hugo](https://gohugo.io/) ≥ 0.110（建议使用 extended 版本以支持 SCSS）
- [Node.js](https://nodejs.org/) ≥ 14（用于前端构建，如 PostCSS）

## 安装依赖

```bash
# 安装 Hugo（推荐使用包管理器）
brew install hugo

# 安装 Node.js 依赖
npm install
```

## 本地开发启动

```bash
# 启动本地开发服务器（支持热重载）
hugo server --disableFastRender
```

- 访问地址：`http://localhost:1313`
- `--disableFastRender` 确保完整渲染

## 快速部署

```bash
# 一键部署到 GitHub Pages（推荐）
./deploy.sh
```

或手动构建：

```bash
# 生成生产环境静态文件到 public/ 目录
hugo --environment production
```

### 部署说明

- **部署目标**: GitHub Pages gh-pages 分支
- **网站地址**: https://nosql-cn.org
- **仓库地址**: https://github.com/nosql-cn/nosql-cn.org
- **SSH 地址**: git@github.com:nosql-cn/nosql-cn.org.git

### 部署流程

1. **自动部署**: 运行 `./deploy.sh` 脚本
2. **构建检查**: 脚本会自动检查 Hugo 构建结果
3. **分支管理**: 自动创建/更新 gh-pages 分支
4. **推送部署**: 自动推送到远程仓库
5. **生效时间**: GitHub Pages 可能需要几分钟生效

## 社区特色

- 🔧 **技术导向**：纯技术交流，无商业广告
- 🤝 **社区驱动**：自发组织，无人专职运营
- 🌐 **开放包容**：欢迎所有存储技术爱好者
- 📚 **知识共享**：汇集各方技术资源

## 投稿方式

### 📝 方式一：私信投稿（推荐新手）
- 微信群私信发送 Markdown 文件给管理员
- 包含作者署名、公众号链接等信息
- 管理员审核后发布到网站

### 💻 方式二：GitHub 投稿（推荐开发者）

**仓库地址**: https://github.com/nosql-cn/nosql-cn.org

**详细流程**:

1. **Fork 仓库**
   ```bash
   # 访问仓库点击 Fork 按钮
   # 或使用 GitHub CLI
   gh repo fork nosql-cn/nosql-cn.org
   ```

2. **克隆到本地**
   ```bash
   git clone git@github.com:YOUR_USERNAME/nosql-cn.org.git
   cd nosql-cn.org
   ```

3. **创建文章分支**
   ```bash
   git checkout -b add-article-标题
   ```

4. **添加文章文件**
   - 在 `content/zh/blog/` 目录创建 Markdown 文件
   - 文件名建议使用英文，如 `mysql-tuning.md`
   - 参考 [投稿指南](/contribute/) 的文章模板

5. **提交并创建 PR**
   ```bash
   git add content/zh/blog/你的文章.md
   git commit -m "添加文章: 文章标题"
   git push origin add-article-标题
   ```
   - 在 GitHub 创建 Pull Request 到 `master` 分支
   - 等待社区管理员 Review

**优势**: 完全开源透明、社区共同 Review、版本控制管理

## 网站结构

- **首页** (`/`)：社区介绍和快速导航
- **技术博客** (`/blog/`)：技术文章集合
- **关于社区** (`/about/`)：社区详细介绍
- **投稿指南** (`/contribute/`)：投稿方式和要求

## 主题与样式

- 主题位于 `themes/dot-org-hugo-theme/`
- 样式使用 SCSS，自动编译（需 Hugo extended 版本）
- 如需自定义样式，可修改 `assets/` 或主题下的 SCSS 文件

## 常见问题

- **主题子模块未初始化？**
  ```bash
  git submodule update --init --recursive
  ```
- **样式未生效？**
  请确保使用 Hugo extended 版本，并已安装 Node.js 依赖。

- **多语言支持？**
  配置见 `config/_default/languages.yaml`，内容见 `content/zh/`、`content/en/` 等。

## 参考文档

- [Hugo 官方文档](https://gohugo.io/documentation/)
- [dot-org-hugo-theme 主题文档](themes/dot-org-hugo-theme/README.md)
