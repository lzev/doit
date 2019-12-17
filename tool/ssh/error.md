# ssh问题处理

```
ssh -vvv root@ip 查询登陆问题

netstat -nat | grep -i '22' | wc -l 或者lsof -i:22 |wc -l 查看ssh连接数
```

1. debug1: expecting SSH2_MSG_KEX_ECDH_REPLY

```
cat  /etc/ssh/ssh_config |grep Ciphers

ssh -c aes192-ctr root@IP
```

2. ssh_exchange_identification: read: Connection reset by peer

```
ssh -v root@ip地址或域名

vi /etc/hosts.allow

添加 sshd: ALL
```

3. ssh_exchange_identification: read: Software caused connection abort

```
ssh -T git用户@git所在的IP

```

4. Software caused connection abort

```
Software caused connection abort的意思是软件的原因造成的网络中断，所以解决办法就要用软件入手，用putty连接你的linux，修改服务器中/etc/ssh /sshd.config 文件，将LoginGraceTime的值设为0,默认为2m，TCPKeepAlive 设为yes， 然后使用service sshd restart来重启sshd服务
```
