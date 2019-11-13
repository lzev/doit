# install

## 安装依赖

1. 安装golang

```
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -zxvf go1.12.7.linux-amd64.tar.gz -C /opt

vi /etc/profile

export GOROOT=/opt/go
export GOPATH=/opt/gopath
export GOPROXY=https://goproxy.io
export GOARCH=amd64
export GOOS=linux
export GOTOOLS=$GOROOT/pkg/tool
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

source /etc/profile
```

2. 安装docker

```
sudo apt-get remove docker docker-engine docker-ce docker.io // 删除老版本

sudo apt-get update // 更新索引

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common // 安装以下包以使apt可以通过HTTPS使用存储库（repository）

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - // 添加Docker官方的GPG密钥

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" // 设置stable存储库

sudo apt-get update // 更新索引

sudo apt-get install -y docker-ce // 最新版本的Docker CE

apt-cache madison docker-ce // 列出可用的版本

sudo apt-get install docker-ce=<VERSION> // 选择要安装的特定版本


systemctl status docker // 查看docker服务是否启动

sudo systemctl start docker // 启动docker服务
```

## 下载文件

- 创建目录

`mkdir -p $GOPATH/src/github.com/hyperledger`

- 下载fabric源码

`git clone https://github.com/hyperledger/fabric.git`

- 安装相关依赖软件

```
go get github.com/golang/protobuf/protoc-gen-go
apt install cmake
sudo apt-get purge  libcurl3-gnutls
sudo apt-get install curl
apt-get purge git-man
apt-get purge git
```

- 编译fabric模块

`make release`

*如果出现以下错误，则说明没有安装gcc，需要先安装gcc：apt install gcc*
```
Building release/linux-amd64/bin/configtxgen for linux-amd64
mkdir -p release/linux-amd64/bin
CGO_CFLAGS=" " GOOS=linux GOARCH=amd64 go build -o /root/gopath/src/github.com/hyperledger/fabric/release/linux-amd64/bin/configtxgen -tags "" -ldflags "-X github.com/hyperledger/fabric/common/tools/configtxgen/metadata.CommitSHA=e91c57c" github.com/hyperledger/fabric/common/tools/configtxgen
# runtime/cgo
exec: "gcc": executable file not found in $PATH
make: *** [release/linux-amd64/bin/configtxgen] 错误 2
```

- 直接执行脚本first-network

`cd script & ./bootstrap.sh`

- 根据配置文件生成各种文件

`sudo ./byfn.sh generate`

- 启动网络

`sudo ./byfn.sh up`

## 问题

1. Error: error getting endorser client for channel: endorser client failed to connect to peer0.org1.example.com:7051: failed to create new connection: context deadline exceeded peer0.org1 failed to join the channel, Retry after 3 seconds

- 报错：fatal error: unexpected signal during runtime execution


```

```
