# 缓存的区别

1. redis/memcache

```
1. redis可以用来做存储(storge), 而memccached是用来做缓存(cache), 因为redis有”持久化”的功能
2. 存储的数据有”结构”,对于memcached来说,存储的数据,只有1种类型--”字符串”,而redis则可以存储字符串,链表,哈希结构,集合,有序集合
```

详细对比
```
性能方面
内存使用效率
数据持久化
数据结构
网络IO模型
内存管理
数据的一致性方面
```