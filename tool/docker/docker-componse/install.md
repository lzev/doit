# Docker-Componse

## ubuntu 18.04

1. 下载文件

  `sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose`

2. 添加权限

  `sudo chmod +x /usr/local/bin/docker-compose`

3. 检查版本号，检验安装是否成功

  `docker-compose --version`

4. 卸载

  - `sudo rm /usr/local/bin/docker-compose`
  - `pip uninstall docker-compose`
