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
