# pip

## 问题

1. Unable to locate package python-pip

  - 备份软件源

  ```
  sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup

  sudo vi /etc/apt/sources.list
  ```

  - 添加软件源

  ```
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial universe
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates universe
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial multiverse
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates multiverse
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security universe
  deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security multiverse
  ```

  - 更新软件源

  ```
  apt install update
  ```
