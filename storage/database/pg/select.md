# 查询

# 如果查询出的数据为空，则设为0的方法

  `select COALESCE(b.price, 0) as price from fruit_sale b`

## sql合并多列成一个字符串，多行成一个字符串

```
select GROUP_CONCAT(prov_code SEPARATOR ',') AS prov_code from tb_prov_code


select concat(prov_code,'-',prov_name) as haha from tb_prov_code
```
