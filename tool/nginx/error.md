# nginx error

1. nginx -s reload 报错：nginx: [error] invalid PID number "" in "/run/nginx.pid"
```
需要先执行

nginx -c /etc/nginx/nginx.conf

nginx.conf文件的路径可以从nginx -t的返回中找到。

nginx -s reload
```

2. client intended to send too large body

```
http {
  client_max_body_size 20M;
}
```

3. nginx支持下载apk文件

```
在conf/mime.types中加入

application/vnd.android.package-archive  apk;
```

4. 414 Request-URI Too Large
```

解决办法：

client_header_buffer_size 512k;
large_client_header_buffers 4 512k;
```
