# pip


## 问题

1. pip3 ImportError: cannot import name 'sysconfig'

```
vi /etc/apt/sources.list

// 添加
deb http://cn.archive.ubuntu.com/ubuntu bionic main multiverse restricted universe
deb http://cn.archive.ubuntu.com/ubuntu bionic-updates main multiverse restricted universe
deb http://cn.archive.ubuntu.com/ubuntu bionic-security main multiverse restricted universe
deb http://cn.archive.ubuntu.com/ubuntu bionic-proposed main multiverse restricted universe

sudo apt-get update // 更新命令

sudo apt-get install python3-pip // 执行
```
