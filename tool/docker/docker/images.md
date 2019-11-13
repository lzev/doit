# images

## 启动

`systemctl start docker`

## 守护进程重启

`sudo systemctl daemon-reload`

## 重启docker服务

`systemctl restart  docker`

## 重启docker服务
`sudo service docker restart`

## 关闭docker
`service docker stop`

## 杀死所有的镜像容器

 `docker kill $(docker ps -a -q)`

## 删除所有已经停止的容器

`docker rm $(docker ps -a -q)`

## 删除所有未打 dangling 标签的镜

`docker rmi $(docker images -q -f dangling=true)`

## 删除所有镜像

`docker rmi $(docker images -q)`

## 强制删除 无法删除的镜像

```
docker rmi -f <IMAGE_ID>
docker rmi -f $(docker images -q)
```
