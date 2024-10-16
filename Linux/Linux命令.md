## 基础概念
- ###盘符
> Linux 没有 Windows系统 的 C盘，D盘等概念，只有一个根目录(root目录) /。
```
# 常见目录名如下：
/       # 虚拟目录的根目录，通常不会在这里放置文件
/bin    # 二进制文件目录，存放了很多用户级的GNU实用工具
/boot   # 引导目录，存放引导文件
/dev    # 设备目录，linux在其中创建设备节点
/etc    # 系统配置文件目录
/home   # 主目录，linux在其中创建用户目录
/lib    # 库目录，存放系统和应用程序的库文件
/media  # 媒介目录，可移动存储设备的常用挂载点
/mnt    # 挂载目录，用于临时挂载文件系统的常用挂载点
/opt    # 可选目录，存放第三方软件包
/proc   # 进程目录，存放现有内核，系统以及进程的相关信息
/root   # root用户的主目录
/run    # 运行目录，存放系统的运行时数据
/sbin   # 系统二进制文件目录，Super User ，存放了很多管理级的GNU实用工具
/srv    # 服务目录，存放本地服务的相关文件
/sys    # 系统目录，存放设备，驱动程序以及部分内核特性信息
/tmp    # 临时目录，可以在其中创建和删除临时工作文件
/usr    # 用户目录，unix shared resources(共享资源) 的缩写，一个次目录层级结构(secondary directory hierarchy)
/var    # 可变目录，存放经常变化的文件，比如日志文件
```
- ### 命令格式
> command [-options] [parameter]   # 命令 [-选项] [-参数] 
- ### 文件属性
```
[root@www /]# ls -l
total 64
dr-xr-xr-x   2 root root 4096 Dec 14  2012 bin
dr-xr-xr-x   4 root root 4096 Apr 19  2012 boot
……
```
在 Linux 中第一个字符代表这个文件是目录、文件或链接文件等等。
- 当为 d 则是目录
- 当为 - 则是文件；
- 若是 l 则表示为链接文档(link file)；
    - 符号连接：(也称为软链接）是一个实实在在的文件，该文件指向存放在虚拟目录结构中某个地方的另一个文件。这两个以符号方式链接在一起的文件彼此的内容并不相同。要为一个文件创建符号链接，原始文件必须事先存在。然后可以使用ln命令以及-s选项来创建符号链接(ln -s file linkfile)
    - 硬连接：硬链接创建的是一个独立的虚拟文件，其中包含了原始文件的信息以及位置。但是两者就根本而言是同一个文件。要想创建硬链接，原始文件也必须事先存在，只不过这次使用ln命令时不需要再加入额外的选项了(ln file linkfile)
※只能对处于同一存储设备的文件创建硬链接。要想在位于不同存储设备的文件之间创建链接，只能使用符号链接
- 若是 b 则表示为装置文件里面的可供储存的接口设备(可随机存取装置)；
- 若是 c 则表示为装置文件里面的串行端口设备，例如键盘、鼠标(一次性读取装置)。

接下来的字符中，以三个为一组，共三组九位且均为 rwx 的三个参数的组合。
- 第一组：表示用户权限
- 第二组：表示组员权限
- 第三组：表示其他者权限
- r=4 代表可读(read)
- w=2 代表可写(write)
- x=1 代表可执行(execute)
- 如果没有权限，就会出现减号 - 

更改文件属性
```
# 1.chgrp：更改文件属组
chgrp [-R] 属组名 文件名    # -R：递归更改文件属组
# 2.chown：更改文件属主，也可以同时更改文件属组
chown [–R] 属主名 文件名
chown [-R] 属主名：属组名 文件名
# 3.chmod：更改文件9个属性
chmod [-R] 777 文件或目录
```
## 快捷操作
- ### 命令帮助
> - man [command] / [command] --help  # man man 或者 man --help
> - Tab键（命令补全）
> - ↑、↓键（命令快速切换）
> - history（历史命令）/history -c（清除历史命令）
> - ctrl + l（清屏）/ctrl + c（强行停止）/ctrl + u（取消输入）

## 系统命令
- ### 关机
``` 
poweroff / init 0 / shutdown -h now
```
- ### 重启
```
reboot / init 6
```
- ### 注销（登出）
```
exit / logout
```
## 常用命令
- ### 查看目录文件
```
# list files
ls -a  # 显示隐藏的文件
ls -d  # 仅列出目录本身，而不是列出目录内的文件数\据
ls -F  # 区分目录或文件，目录后有斜线，可执行文件后有(*)
ls -l  # 以长列表的形式显示
ls -h  # 以人性化的方式显示文件内容大小,横向显示没有隐藏文件
ls -R  # 递归显示子目录所有信息
ls -al # 相当于 ll
ll filename # ls还可以搭配通配符过滤信息
```
- ### 显示当前路径
```
# print work directory
pwd -P  # 显示出确实的路径，而非使用链接 (link) 路径。
# 绝对路径
路径的写法，由根目录 / 写起，例如： /usr/share/doc 这个目录。
# 相对路径
路径的写法，不是由 / 写起，例如由 /usr/share/doc 要到 /usr/share/man 底下时，可以写成： cd ../man 这就是相对路径的写法。
```
- ### 切换工作目录
```
# change directory
cd .  # 切换到当前路径
cd ..  # 切换到上一级目录
cd ~  # 切换到家目录（主目录）
cd -  # 和上一次工作目录互相切换
cd /  # 切换到根目录
```
## 文件命令
- ### 增(create)
新建文件
```
touch filename  # 创建0size的空文件，还可以用来修改文件时间(内容和内存地址不变，等价于touch已存在文件)
常见用法：touch 1.txt 2.py  同时创建多个文件
```
新建文件夹
```
mkdir -p 	递归创建文件夹
常见用法：mkdir -p 11/22/33  递归创建文件夹
```
- ### 删(delete)
删除文件
  危险操作！！！请勿随便使用这个命令！！！
```
rm  remove的简称
    -r 	递归地删除目录下的内容，删除文件夹时必须加此参数
    -f 	强制删除，忽略不存在的文件，无需提示
    -i  提示是否删除
常见用法：rm -rf 1.txt  
shell没有回收站或者垃圾箱这样的东西，文件一旦被删除，就再也找不回来了
```
删除文件夹
```
rmdir file/ # rmdir只能删除空文件夹/目录
```
- ### 改(update)
修改文件内容
```
vi　filename
    - 命令模式
		- ESC
    - 插入模式
		- i
    - 末行模式
		- 退出
			- :wq   # 退出并保存
			- :q!	# 退出不保存
			- :/查找内容
				- n: 下一个/N：上一个
```
移动/重命名
```
mv  # 移动或者叫重命名，不影响属性，只影响文件名，也可移动目录
    -v 显示移动进度
    -i 	覆盖前询问
    -f 覆盖前不询问
常见用法：mv -vf 1.txt 2.txt（如果移动前后，文件名不同，即文件重命名，可以移动同时重命名）

cp  源对象 目标对象  # 复制 目标对象可以是文件也可以是目录
    -r      递归复制，复制文件夹，需加上-r
    -a      保持文件原有属性
    -i       覆盖前提示
    -f       覆盖不提示
    -v       显示进度
常见用法：cp -rvf 1.txt 2.txt
```
- ### 查(read)
查看文件类型(file)
```
file filename  # file命令是一个方便的小工具，能够探测文件的内部并判断文件类型(包含目录及链接)
```
查看内容较少的文件(cat)
```
cat filename
    -n       输出行编号
    -s       不输出多行空行
    -b       对非空行进行编号
常见用法：cat 1.txt
tac filename
cat 反过来的意思，从后往前输出
```
查看内容较多的文件(more and less)
```
more filename
	翻页：
	空格      前进
	回车      前进一行
	f         前进
	b         后退
	q         退出
常见用法：more 1.txt

less filename
less命令的操作和more命令基本一样，一次显示一屏的文件文本。除了支持和more命令相同的命令集，它还包括更多的选项
```
查看文件末尾(head and tail)
```
tail filename  # 默认查看末尾10行
    -n        表示查看末尾任意n行
    -f        允许你在其他进程使用此文件时查看文件的内容。
# tail命令会保持活动状态并持续地显示添加到文件中的内容。这是实时监测系统日志的绝佳方式
tail -f filename

查看文件开头
head filename  # 默认查看开头10行
    -n         表示查看开头任意n行
```
查找文件(find)
```
find [path] [expression]
常见用法：find ./ -name 1.txt -size +5M
（在“当前目录”下，查找一个“文件名为1.txt”的文件，要求“该文件大于5M”)
find . -name "*.c"   #将当前目录及其子目录下所有文件后缀为 .c 的文件列出来
# 查找 /var/log 目录中更改时间在 7 日以前的普通文件，并在删除之前询问它们
find /var/log -type f -mtime +7 -ok rm {} \;
```
排序文件
```
sort filename  # 将数字视为字符并执行标准的字符排序
sort -n file2  # 将数字按值排序
sort testfile -k 2  # 对第二列的值进行重排
sort -r testfile # 选项对数值按照降序排列
```
检索文件
```
grep  选项 关键字 对象文件
    - 普通模式：grep redis（匹配文本：redis）
    - 正则模式：grep -E "redis"（匹配正则表达式：redis）
    -v    反向检索，输出不匹配的内容
    -n    显示文本行号
    -c    显示匹配结果的个数
    -e    可以指定多个检索关键字
```
### 管道符
```
- |
	- 将左边的输出当右边的输入
		- 常见用法：ps aux | grep redis
		  将 ps 命令的输出结果进入 grep 命令匹配
```
### 重定向IO交互
```
/dev/null 2>&1
# 文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）
    - 输出重定向
        - 常见用法：cat 1.txt 2.txt > 3.txt
    - 输出追加重定向
        - 常见用法：cat 1.txt 2.txt >> 3.txt
    - 输入重定向
        - command < file1  # 从键盘获取输入的命令会转移到文件读取内容
输入input命令

输出output命令
echo $HOME
# 格式替代符 %s %c %d %f类型，%-10s指一个宽度为 10 个字符（- 表示左对齐，没有则表示右对齐）
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg   
```
### 环境变量
```
set  # 输出所有的变量，包括全局变量和局部变量；set -o命令显示bash Shell的所有参数配置信息
unset
env  # 命令只显示全局变量
printenv
export  # 用export内置命令导出变量
declare  # 输出所有的变量、函数、整数和已经导出的变量 declare -x 变量名=value
```
### 打包（归档）
-c	创建打包文件
-v	显示进度
-f	指定档案文件名称，f后面一定是.tar文件，所以必须放选项最后
-x	解开档案文件
- 打包：tar -cvf xxx.tar 文件名1 文件名2 文件名3
- 解包：tar -xvf xxx.tar
### 压缩
Linux系统中，压缩文件的类型有很多，其中最常用的就是gzip，gz就是gzip的缩写
- 压缩：tar -zcvf xxx.tar.gz 文件名1 文件名2 文件名3
gzip filename
- 解压：tar -zxvf xxx.tar.gz
gunzip filename
- 将当前目录下的PocTest文件夹打包成PocTest.zip:
zip -q -r  PocTest.zip  PocTest/
- 把本目录下的test.zip文件解压：
unzip test.zip
### 磁盘命令
磁盘挂载
```
mount [-t 文件系统] [-L Label名] [-o 额外选项] [-n]  装置文件名  挂载点
mount 输出当前系统已挂载的设备列表
mount -t type device directory
常见用法：
mount -t vfat /dev/sdb1 /media/dish  # vfat:Windows FAT32文件系统，支持长文件名
```
磁盘卸载
```
umount [-fn] 装置文件名或挂载点
    -f ：强制卸除！可用在类似网络文件系统 (NFS) 无法读取到的情况下；
    -n ：不升级 /etc/mtab 情况下卸除。
常见用法：
umount directory/device 
```
df (disk free)： 列出文件系统的整体磁盘使用量
```
df  [-ahikHTm] [目录或文件名]
    -a ：列出所有的文件系统，包括系统特有的 /proc 等文件系统
    -k ：以 KBytes 的容量显示各文件系统
    -m ：以 MBytes 的容量显示各文件系统
    -h ：以人们较易阅读的 GBytes, MBytes, KBytes 等格式自行显示
    -H ：以 M=1000K 取代 M=1024K 的进位方式
    -T ：显示文件系统类型, 连同该 partition 的 filesystem 名称 (例如 ext3) 也列出
    -i ：不用硬盘容量，而以 inode 的数量来显示
常见用法：
    df -t ext4 -t vfat   逐个显示已挂载的文件系统
    df -h /etc  # 将 /etc 底下的可用的磁盘容量以易读的容量格式显示
```
du (disk used)：  检查磁盘空间使用量
```
du [-chs] 文件或目录名称
-c：显示所有已列出文件的总大小
-h：按人类易读格式输出大小，分别用K表示千字节、M表示兆字节、G表示吉字节
-s：输出每个参数的汇总信息
```
fdisk ：Linux 的磁盘分区表操作工具
```
fdisk [-l] 装置名称   
    -l ：输出后面接的装置所有的分区内容。若仅有 fdisk -l 时， 则系统将会把整个系统内能够搜寻到的装置的分区均列出来
```
fsck (file system check) ：用来检查和维护不一致的文件系统
```
fsck [-t 文件系统] [-ACay] 装置名称
    -t : 给定档案系统的型式，若在 \etc\fstab 中已有定义或 kernel 本身已支援的则不需加上此参数
```
mkfs (make filesystem) ：磁盘格式化
```
mkfs [-t 文件系统格式] 装置文件名
    -t ：可以接文件系统格式，例如 ext3, ext2, vfat 等(系统有支持才会生效)
```

## 进程命令
- ### 查看进程
```
ps  # 只能显示某个特定时间点的信息
  -a	显示终端上的所有进程，包括其他用户的进程
  -u	显示进程的详细状态
  -e    显示所有进程
  -f    显示完整格式的输出
  -l    显示长列表
  -x	显示没有控制终端的进程
  -w	显示加宽，以便显示更多的信息
  -r	只显示正在运行的进程
常见用法：ps aux/ps -ef/ps -l
```
- ### 查看活跃进程
```
top  # 实时显示进程信息
 -d       指定显示信息更新的时间间隔
  q        退出
  f        选择用于对输出进行排序的字段
  h        获得帮助
常见用法：top -d 1
```
- ### 结束进程
```
kill
常见用法：kill -9 进程号  / kill -s HUP 3940  # -s选项支持指定其他信号

pkill  # 可以实用通配符
常见用法：pkill http*  # 终止所有名称以http起始的进程
```
## 用户、权限命令
- ### 获取管理员权限
sudo
- ### 用户
新建用户
```
useradd 选项 用户名
    -d    指定新账户的家目录
    -s    Shell文件 指定用户的登录Shell。
    -g    指定用户的所属组
    -G    指定用户附加组
    -m    自动创建家目录
常见用法：useradd –d  /home/sam -m sam
常见用法：useradd -s /bin/sh -g group –G adm,root gem  # 创建用户gem，登录Shell是 /bin/sh，属于adm和root用户组
```
修改用户
```
usermod 选项 用户名
    - usermod+3*Tab（查看所有用户）
常见用法：usermod -g 用户组 用户名
usermod -s /bin/ksh -d /home/z –g developer sam # 将用户sam的登录Shell修改为ksh，主目录改为/home/z，用户组改为developer
    - 为用户提权
    - sudo usermod -a -G adm 用户名
    - sudo usermod -a -G sudo 用户名
```
删除用户
```
userdel 选项 用户名
常见用法：userdel 用户名（通常不删除该用户的家目录）
不推荐用法：userdel -r 用户名 # 把用户的主目录一起删除
```
修改密码
```
passwd 选项 用户名 # 普通用户直接passwd即可修改密码
		- passwd 用户名
```
切换用户
```
su 
    - su 用户名
		- 切换用户，但是不切换家目录
	- su - 用户名
		- 直接切换到对应用户的家目录
```
- ### 用户组
新建用户组
```
groupadd 选项 用户组
常见用法：groupadd group1
```
修改用户组
```
groupmod 选项 用户组
	- groupmod+3*Tab（查看所有用户组）
常见用法：groupmod –g 10000 -n group3 group2  # 将组group2的标识号改为10000，组名修改为group3
newgrp root # 将当前用户切换到root用户组，newgrp命令可以切换到其他用户组
```
删除用户组
```
groupdel 用户组
常见用法：groupdel group1
```
## 网络服务命令

- ### 查看网络通信
```
ping
Linux系统ping默认不会结束，使用Ctrl + C强制结束
常见用法：ping www.baidu.com
```
- ### 查看系统IP地址
```
ip addr
```
- ### 远程登录
SSH、SFTP
  SSH是一种网络协议，用于计算机之间的加密登录。
  SSH为Secure Shell的缩写，由 IETF 的网络工作小组（Network Working Group）所制定；SSH 为建立在应用层和传输层基础上的安全协议。
  SSH是目前较可靠，专为远程登录会话和其他网络服务提供安全性的协议。常用于远程登录，以及用户之间进行资料拷贝。原则上，SSH应是每个Linux服务器必须安装的服务，但是万一没有安装，可以使用下面命令来安装：
```
安装命令：
sudo apt install openssh-server  或
yum install ssh

开启服务：
sudo service ssh start  或
service sshd start

登录远程服务器：
ssh -p 端口 主机
ssh -p 50022 my@127.0.0.1  端口50022  服务器用户名my 服务器 ip 127.0.0.1
输入密码：

-p可以指定端口。ssh一般使用默认的22。
看到提示welcome表示已经连接成功

SCP-Linux文件传输  在不同主机之间复制文件
	- scp -r [己/对方文件] [对/己方文件]
常见用法：scp -r 用户名@主机地址:文件路径 文件路径
```
- ### FTP文件传输
FTP 是File Transfer Protocol（文件传输协议）的英文简称，而中文简称为“文传协议”。常用于Internet上文件的双向传输。
同时，它也是一个应用程序（Application）。基于不同的操作系统有不同的FTP应用程序，而所有这些应用程序都遵守同一种协议以传输文件。
- FTP服务端口号：21
- 1）sudo apt-get install vsftpd（安装ftp）
- 2）sudo chmod 646 /etc/vsftpd.conf（修改权限646） 
- 3）vi /etc/vsftpd.conf（编辑ftp的配置文件vsftpd）
- 4）解开注释write_enable=YES，保存并退出
- 5）sudo service vsftpd restart（重启ftp服务）
### 软件安装
- yum 命令
yum（ Yellow dog Updater, Modified）：Fedora 和 RedHat 以及 SUSE 中的 Shell 前端软件包管理器
```
yum [options] [command] [package ...]
yum常用命令：
    yum check-update           ：列出所有可更新的软件清单命令
    yum update                 ：更新所有软件命令
    yum list                   ：列出所有可安裝的软件清单命令
    yum install <package_name> ：仅安装指定的软件命令
    yum update <package_name>  ：仅更新指定的软件命令
    yum remove <package_name   ：删除软件包命令
    yum search <keyword        ：查找软件包命令
    yum clean packages         ：清除缓存目录下的软件包
    yum clean headers          ：清除缓存目录下的 headers
    yum clean oldheaders       ：清除缓存目录下旧的 headers
```
- apt 命令
apt (Advanced Packaging Tool)：Debian 和 Ubuntu 中的 Shell 前端软件包管理器(需要root权限)
```
apt [options] [command] [package ...]
sudo apt update && sudo apt upgrade -y  可以将两个命令组合起来，一键升级
apt 常用命令：
- 安装软件包
apt list --upgradeable  ：列出可更新的软件包及版本信息
apt list --installed    ：列出所有已安装的包
apt list --all-versions ：列出所有已安装的包的版本信息

sudo apt show 软件包名    ：显示软件包具体信息,例如：版本号，安装大小，依赖关系
sudo apt search 关键字    ：查找软件包命令
sudo apt install 软件包名 ：安装指定的软件命令
- 卸载软件包
sudo apt remove 软件包名  ：删除软件包命令
sudo apt autoremove      ：清理不再使用的依赖和库文件
sudo apt purge 软件包名   ：移除软件包及配置文件
- 更新已安装的包
sudo apt full-upgrade ：升级软件包，升级前先删除需要更新软件包
sudo apt-get upgrade 软件包名 --no-upgrade   # 如果软件包已经存在，则不要升级它
                             --only-upgrade # 只想升级，不要安装可以使用 
```
