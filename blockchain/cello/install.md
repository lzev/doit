# Cello

## 安装服务依赖

```
sudo apt install git make python-pip -y
pip install --upgrade pip
pip install docker-compose
pip install setuptools
pip install tox
```

## 下载cello文件

`git clone https://github.com/hyperledger/cello.git & cd cello`

## 安装cello依赖

```
cd cello/
./scripts/master_node/setup.sh
./scripts/worker_node/setup.sh
```

## 启动master node

```
make start // DEV=True make start 开发模式启动
make stop
make restart
make redeploy service=dashboard
```

## 查看日志

```
make logs
make logs service=watchdog #查看特定服务的日志
```

## 启动worker node

```
sudo systemctl stop docker.service
sudo dockerd -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock --api-cors-header='*' --default-ulimit=nofile=8192:16384 --default-ulimit=nproc=8192:16384 -D &
```
