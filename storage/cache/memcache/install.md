# memacahe

```
sudo apt-get install memcached
```

## 允许公网访问

```
iptables -A INPUT -p tcp --dport 11211 -j ACCEPT
iptables -A INPUT -p udp --dport 11211 -j ACCEPT

service iptables save
service iptables restart
```
