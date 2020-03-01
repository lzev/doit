# 文件操作

## 查看文件个数及大小

1. 当前目录下的文件数量

```
ls -l |grep "^-"|wc -l
或
find ./folder_name -type f | wc -l
```

2. 某文件夹下文件的个数，包括子文件夹里的。

```
ls -lR|grep "^-"|wc -l
```

3. linux查看文件大小：

```
du -sh 查看当前文件夹大小
du -sh * | sort -n 统计当前文件夹(目录)大小，并按文件大小排序
du -sk filename 查看指定文件大小
```
