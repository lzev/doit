# 磁盘挂载

```
fdisk -l
parted /dev/vdb mklabel gpt
parted /dev/vdb mkpart primary 0% 100%
mkfs.ext4 /dev/vdb1

硬盘开机自动挂载：


获取磁盘的ID
blkid /dev/vdb1
/dev/vdb1: UUID="387190ba-ce7c-4270-a9fd-5d273ee650dd" TYPE="ext4" PARTLABEL="primary" PARTUUID="295b1e9c-5b89-45d8-aa4d-65217f0c688c"


添加磁盘自动启动
vim /etc/fstab
UUID=387190ba-ce7c-4270-a9fd-5d273ee650dd /data ext4 defaults 0 0


挂载/data磁盘
mkdir /data; mount /data; ls /data
确认磁盘已经挂载成功
```
