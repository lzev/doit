# supervisor

## 安装supervisor

`pip install supervisor`

## 创建配置文件

`echo_supervisord_conf > /etc/supervisor/supervisord.conf`
`sudo su - root -c "echo_supervisord_conf > /etc/supervisord.conf"`

## 启动supervisor

`supervisord -c /etc/supervisord.conf`

## 使用supervisorctl

```
supervisorctl -c /etc/supervisord.conf
> status    # 查看程序状态
> stop usercenter   # 关闭 usercenter 程序
> start usercenter  # 启动 usercenter 程序
> restart usercenter    # 重启 usercenter 程序
> reread    # 读取有更新(增加)的配置文件，不会启动新添加的程序
> update    # 重启配置文件修改过的程序
```
## supervisorctl 命令介绍

```
# 停止某一个进程，program_name 为 [program:x] 里的 x
supervisorctl stop program_name
# 启动某个进程
supervisorctl start program_name
# 重启某个进程
supervisorctl restart program_name
# 结束所有属于名为 groupworker 这个分组的进程 (start，restart 同理)
supervisorctl stop groupworker:
# 结束 groupworker:name1 这个进程 (start，restart 同理)
supervisorctl stop groupworker:name1
# 停止全部进程，注：start、restart、stop 都不会载入最新的配置文件
supervisorctl stop all
# 载入最新的配置文件，停止原有进程并按新的配置启动、管理所有进程
supervisorctl reload(最好不要使用，建议进入supervisorctl后执行update)
# 根据最新的配置文件，启动新配置或有改动的进程，配置没有改动的进程不会受影响而重启
supervisorctl update
```

## supervisor管理程序---配置程序的工作路径

```
supervisord里支持environment参数，所以可以在你的进程配置下面增加以下参数：
environment=PWD=/data/server/  #通过系统宏观变量PWD来改变工作路径，剑走偏锋。
```

## 错误

1. Error: Another program is already listening on a port that one of our HTTP servers is configured to use. Shut this program down first before starting supervisord.

```
unlink /var/run/supervisor.sock
unlink /tmp/supervisor.sock
```

2. BACKOFF unknown error making dispatchers for ‘web_server’: EACCES FATAL unknown error making dispatchers for ‘web_server’: EACCES

- log.log文件是管理员创建，普通用户没有修改的权利

```
chmod 777 log.log
```

3. unix:///tmp/supervisor.sock no such file

- 端口被占用

```
ps aux | grep supervisor
kill PID
```
