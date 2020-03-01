# 错误信息

1. No space left on device

```
由于每个文件都必须有一个inode，因此有可能发生inode已经用光，但是硬盘还未存满的情况

查找文件夹下的文件数量
for i in /var/; do echo $i; find $i |wc -l|sort -nr; done

du -sh 显示占用空间

du -i 显示inode占用空间

删除七天前的文件：find /var/session -ctime +7 -type f | xargs rm -rf
删除当前文件夹下的所有文件：find . -name "*" | xargs rm -rf
删除某一文件夹下的所有文件：find /var/test/ -type f -name "*" -print0 | xargs -0 rm -rf
```
