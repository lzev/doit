# nginx URL rewrite

## 介绍
  和apache等web服务软件一样，rewrite的组要功能是实现RUL地址的重定向。Nginx的rewrite功能需要PCRE软件的支持，即通过perl兼容正则表达式语句进行规则匹配的。默认参数编译nginx就会支持rewrite的模块，但是也必须要PCRE的支持

  rewrite是实现URL重写的关键指令，根据regex（正则表达式）部分内容，重定向到replacement，结尾是flag标记。

## 语法

```
rewrite    <regex>    <replacement>    [flag];

关键字      正则        替代内容          flag标记


关键字：其中关键字error_log不能改变

正则：perl兼容正则表达式语句进行规则匹配

替代内容：将正则匹配的内容替换成replacement

flag标记：rewrite支持的flag标记


flag标记说明：

last  #本条规则匹配完成后，继续向下匹配新的location URI规则

break  #本条规则匹配完成即终止，不再匹配后面的任何规则

redirect  #返回302临时重定向，浏览器地址会显示跳转后的URL地址

permanent  #返回301永久重定向，浏览器地址栏会显示跳转后的URL地址
```

## 参数的标签段位置

`server,location,if`

## 应用场景

u 可以调整用户浏览的URL，看起来更规范，合乎开发及产品人员的需求。

u 为了让搜索引擎搜录网站内容及用户体验更好，企业会将动态URL地址伪装成静态地址提供服务。

u 网址换新域名后，让旧的访问跳转到新的域名上。例如，访问京东的360buy.com会跳转到jd.com

u 根据特殊变量、目录、客户端的信息进行URL调整等
