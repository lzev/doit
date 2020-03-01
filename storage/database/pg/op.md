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

3. unique约束的添加与删除
```
给red_packet_pay表payment_acc字段添加unique约束：

create unique index uix_rpp_payment_acc on red_packet_pay(payment_acc);

删除payment_acc字段上的unique约束：

drop index if exists uix_rpp_payment_acc cascade;
```

4. 修改字符串长度
```
ALTER TABLE your_table_name alter COLUMN your_column_name type character varying(3000);
```

5. 添加主键
```
alter table goods add primary key(sid);
```

6. 添加外键
```
alter table orders add foreign key(goods_id) references goods(sid)  on update cascade on delete cascade;

on update cascade: 被引用行更新时，引用行自动更新； 

on update restrict: 被引用的行禁止更新；

on delete cascade: 被引用行删除时，引用行也一起删除；

on dellete restrict: 被引用的行禁止删除；
```

7. 删除外键
```
alter table orders drop constraint orders_goods_id_fkey;
```

8. 添加唯一约束
```
alter table goods add constraint unique_goods_sid unique(sid);
```

9. 删除默认值
```
alter table goods  alter column sid drop default;
```

10. 修改字段的数据类型
```
alter table goods alter column sid type character varying;
```

11. 重命名字段
```
alter table goods rename column sid to ssid;
```
