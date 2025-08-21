---
title: NoSQL-CN 社区
description: 存储领域的从业者和爱好者自发组织的民间技术交流社区，无广告、零推广、不包装，专注于 Not Only SQL 技术交流
showHeader: false
---

{{< intro >}}
**存储领域的从业者和爱好者自发组织的民间技术交流社区**

我们的宗旨：**无广告、零推广、不包装**，专注于 Not Only SQL 相关技术交流。

## 关于我们

NOSQL 的意思是 **Not Only SQL**，我们讨论的话题不仅限于 SQL，而是涵盖整个存储领域。本社区由基础设施开发工程师自发组织，致力于打造一个纯粹的技术交流平台。

## 社区特色

- 🔧 **技术导向**：纯技术交流，无商业广告
- 🤝 **社区驱动**：自发组织，无人专职运营
- 🌐 **开放包容**：欢迎所有存储技术爱好者
- 📚 **知识共享**：汇集各方技术资源

## 最新投稿

{{ range first 3 (where .Site.RegularPages "Type" "blog") }}
### [{{ .Title }}]({{ .RelPermalink }})
**作者：** {{ .Params.author }} | **发布时间：** {{ .Date.Format "2006-01-02" }}

{{ .Summary | plainify | truncate 100 "..." }}
{{ end }}

## 快速导航

- [📋 关于社区](/about/) - 了解社区详情
- [✍️ 投稿指南](/contribute/) - 如何参与投稿
- [❓ 常见问题](/faq/) - 常见问题解答
- [💻 GitHub](https://github.com/nosql-cn) - 参与开源贡献
{{< /intro >}}
