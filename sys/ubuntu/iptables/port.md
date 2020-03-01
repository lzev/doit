# 端口配置

## 开放8000端口的

1. 修改/etc/sysconfig/iptables文件，增加如下一行

```
-A RH-Firewall-1-INPUT -m state --state NEW -m tcp -p tcp --dport 10000 -j ACCEPT

重启 iptables

service iptables restart

或者用menu-system-administration-firewall 去添加用户需要的端口。

若不想修改iptables,直接使用命令  iptables -I INPUT -p tcp --dport 80 -j ACCEPT
```

2. 重启防火墙

```
重启后生效

开启： chkconfig iptables on
关闭： chkconfig iptables off 　

即时生效，重启后失效

开启： service iptables start
关闭： service iptables stop
```

3. LINUX

```
LINUX通过下面的命令可以开启允许对外访问的网络端口：

/sbin/iptables -I INPUT -p tcp --dport 8000 -j ACCEPT #开启8000端口

/etc/rc.d/init.d/iptables save #保存配置

/etc/rc.d/init.d/iptables restart #重启服务

查看端口是否已经开放

/etc/init.d/iptables status
```
