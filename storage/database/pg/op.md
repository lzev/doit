# 索引

1. 创建索引
```
create index  tbl_bb_index  on  tbl_bb(id,name);
注：tbl_bb  位表名称，  tbl_bb_index  为创建的索引名称，  id 和 name 为 表里的字段

CREATE UNIQUE INDEX name ON table (column [, ...]);
```

2. 删除索引
```
DROP INDEX index;  
index是要删除的索引名

ALTER TABLE feature DROP CONSTRAINT feature_constraint;
```
