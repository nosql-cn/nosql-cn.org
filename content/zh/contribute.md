---
title: 投稿指南
description: 如何向 NoSQL-CN 社区投稿，包括投稿方式、内容要求和审核流程
---

{{< intro >}}
# 投稿指南

NoSQL-CN 社区欢迎所有存储领域的技术爱好者投稿分享。我们相信知识的价值在于分享，每个技术人的经验都值得被记录和传播。

## 投稿方式

### 方式一：私信投稿（推荐新手）

1. **准备内容**：将文章整理为 Markdown 格式
2. **发送投稿**：通过微信群私信发送给社区管理员
3. **信息包含**：
   - 文章标题
   - 作者署名
   - 个人简介（可选）
   - 公众号/博客链接（可选）
   - GitHub 链接（可选）

4. **发布流程**：管理员审核后会在网站发布，并注明作者信息

### 方式二：GitHub 投稿（推荐开发者）

**仓库地址**：https://github.com/nosql-cn/nosql-cn.org

**详细流程**：

1. **Fork 仓库**
   ```bash
   # 访问仓库地址点击 Fork 按钮
   # 或使用命令行（需要 GitHub CLI）
   gh repo fork nosql-cn/nosql-cn.org
   ```

2. **克隆本地仓库**
   ```bash
   git clone git@github.com:YOUR_USERNAME/nosql-cn.org.git
   cd nosql-cn.org
   ```

3. **创建新分支**
   ```bash
   git checkout -b add-article-你的文章标题
   ```

4. **添加文章文件**
   - 在 `content/zh/blog/` 目录下创建新的 Markdown 文件
   - 文件名建议使用英文，如：`mysql-optimization-tips.md`
   - 文件格式参考下面的文章模板

5. **提交更改**
   ```bash
   git add content/zh/blog/你的文章文件.md
   git commit -m "添加文章: 文章标题"
   git push origin add-article-你的文章标题
   ```

6. **提交 Pull Request**
   - 在 GitHub 上创建 PR 到 `master` 分支
   - PR 标题格式：`添加文章: 文章标题`
   - PR 描述中简要说明文章内容

7. **等待审核**
   - 社区管理员会 Review 你的文章
   - 可能会提出修改建议
   - 通过后会合并到 `master` 分支
   - 网站会自动部署到 `gh-pages` 分支

**GitHub 投稿优势**：
- ✅ 完全开源透明
- ✅ 社区共同 Review
- ✅ 自动化部署
- ✅ 版本控制管理

## 内容要求

### 适合的主题

- **数据库技术**：MySQL, PostgreSQL, MongoDB, Redis, Cassandra 等
- **存储架构**：分布式存储、对象存储、文件系统等
- **缓存技术**：Redis, Memcached, 本地缓存等
- **消息队列**：Kafka, RabbitMQ, RocketMQ 等
- **大数据**：Hadoop, Spark, Flink 等存储相关
- **云存储**：AWS S3, Azure Blob, Google Cloud Storage 等
- **性能优化**：查询优化、索引设计、存储引擎等
- **实践经验**：生产环境的问题排查、架构设计等

### 文章格式

- **标题**：简洁明了，突出重点
- **摘要**：200 字以内的内容概要
- **正文**：结构清晰，代码块语法高亮
- **总结**：要点回顾，经验总结
- **参考**：相关链接和资料

### 质量标准

- **原创性**：鼓励原创，转载请注明出处
- **技术性**：有实际技术内容，避免泛泛而谈
- **实用性**：对读者有实际参考价值
- **准确性**：技术概念和代码示例准确无误
- **时效性**：技术内容保持时效性

## 文章模板

```markdown
---
title: "文章标题"
description: "文章描述，200字以内"
date: 2024-01-01
author: "作者名称"
author_link: "https://github.com/username"
blog_link: "https://example.com"
tags: ["标签1", "标签2"]
---

# 文章标题

## 引言

简要介绍文章背景和要解决的问题

## 正文内容

### 技术细节

详细的技术分析和实现

### 代码示例

```代码语言
// 代码示例
```

## 总结

要点回顾和经验总结

## 参考

- [相关链接1](https://example.com)
- [相关链接2](https://example.com)
```

## 审核标准

### ✅ 通过标准

- 内容符合社区主题
- 技术准确，逻辑清晰
- 格式规范，易于阅读
- 有实际参考价值

### ❌ 不通过情况

- 纯商业推广内容
- 抄袭未注明出处
- 技术错误较多
- 格式混乱难以阅读

## 版权说明

- 投稿者保留文章版权
- 社区获得发布和传播授权
- 转载请注明作者和出处
- 鼓励知识共享和传播

## 常见问题

### Q: 投稿有报酬吗？
A: 社区完全由志愿者运营，暂无稿酬。

### Q: 文章会被转载吗？
A: 会在发布前与作者确认转载意向。

### Q: 如何修改已发布的文章？
A: 可通过 GitHub PR 或联系管理员修改。

### Q: 可以投英文文章吗？
A: 目前主要接受中文投稿。

---

*感谢您对 NoSQL-CN 社区的贡献！让我们一起构建更好的技术交流平台。*
{{< /intro >}}