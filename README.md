# nosql-cn.org

本项目是基于 [Hugo](https://gohugo.io/) 的静态网站，旨在为 NoSQL 相关内容提供高效、易维护的文档与博客平台。

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
hugo server -D
```

- 访问地址：`http://localhost:1313`
- `-D` 参数表示包含草稿内容

## 编译构建

```bash
# 生成生产环境静态文件到 public/ 目录
hugo
```

- 构建完成后，静态文件位于 `public/` 目录，可直接部署到任意静态托管平台（如 GitHub Pages、Vercel、Netlify 等）

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
