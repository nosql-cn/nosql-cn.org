# 🧐 FAQ

### 开启 Raft log 的同时需要开启 RocksDB 的 WAL 吗？

* @\_Axel 的观点，有了 Raft WAL, RocksDB WAL 应该要关闭，不关闭会重放，导致 cmd 操作两次。
