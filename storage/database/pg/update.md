# update

## Postgresql去掉某个字段多余的空格
```
Trim()函数：用来删除数据前后的空格。
RTrim()函数：用来删除数据前的空格。
LTrim()函数：用来删除数据后的空格。

update keyword_info set keyword_name = trim(keyword_name);
```
