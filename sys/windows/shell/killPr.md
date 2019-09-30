# windows杀死进程

## 根据端口号查找对应的进程号

`netstat -ano | findstr 9527` // 9527为端口号

## 据进程号寻找进程名称或者使用命令杀手进程

`tasklist | findstr 268 // 发现进程名称, 286为PID`
`taskkill -PID 268 -F // 使用命令行强制关闭某个进程, 286为PID`
