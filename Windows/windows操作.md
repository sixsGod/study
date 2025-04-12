### 1. windows应用程序通用快捷键
 |功能 | 快捷键|
|- | -|
 |复制 | CTRL + C|
 |粘贴 | CTRL + V|
 |剪切 | CTRL + X|
 |撤销 | CTRL + Z|
 |还原 | CTRL + Y|
 |新建 | CTRL + N|
 |保存 | CTRL + S|
 |全选 | CTRL + A|
 |检索 | CTRL + F|
 |置换 | CTRL + H|
 |切换应用程序(往后) | ALT + TAB|
 |切换应用程序(往前) | ALT + SHIFT + TAB|
 |切换输入法 | ALT + SHIFT或者CTRL + SPACE空格|
 |打开任务管理器 | CTRL + ALT + DEL|
 |快速打开资源管理器 | WIN + E|
 |快速回到桌面 | WIN + D|
 |快速锁屏 | WIN + L|
 |快速运行窗口 | WIN + R|

### 2. 快速运行窗口
![WIN + R运行窗口](https://upload-images.jianshu.io/upload_images/26371686-35a85ce433b04c6b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

|可运行程序 | 输入内容(不区分大小写)|
|- | -|
|记事本 | notepad|
|计算器 | calc|
|远程登陆 | mstsc|
|注册表 | regedit|
|系统配置程序 | msconfig|
|画图板 | mspaint|
|屏幕键盘 | osk|
|放大镜 | magnify|
|ncpa.cpl | 本地网络|
|services.msc | 服务窗口|
|cmd窗口 | cmd|

### 3. cmd窗口
![cmd命令符窗口](https://upload-images.jianshu.io/upload_images/26371686-d9d797398cee548a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
```BAT
# 查看cmd版本信息  cmd
C:\Users\liush>cmd
Microsoft Windows [Version 10.0.22000.556]
(c) Microsoft Corporation. All rights reserved.

# 切换盘符（盘符 + ：） D：
C:\Users\liush>D:

# 查看当前使用用户 whoami
C:\Users\liush>whoami
liusheng\liush

# 切换到上一层目录 cd ..
C:\Users\liush>cd ..
C:\Users>

# 切换上两层目录 cd ../..
C:\Users\liush>cd ../..
C:\>

# 查看文件夹有哪些内容 dir
C:\workspace>dir
 ドライブ C のボリューム ラベルは OS です
 ボリューム シリアル番号は 84FF-1DCB です

 C:\workspace のディレクトリ

2022/03/12  15:37    <DIR>          .
2022/03/12  15:41    <DIR>          java
2022/03/10  19:56    <DIR>          python
2022/03/10  19:49    <DIR>          PythonHackingBook1-master
               0 個のファイル                   0 バイト
               4 個のディレクトリ  264,893,349,888 バイトの空き領域

C:\workspace>

# 查看文件夹中所有文件  tree [DRIVE:][PATH] (option：/A ，/F)
C:\workspace>tree java /F
フォルダー パスの一覧:  ボリューム OS
ボリューム シリアル番号は 00000294 84FF:1DCB です
C:\WORKSPACE\JAVA
├─.metadata
│  │  .copied.metadata.default
│  │  .lock
│  │  .log
│  │  init.gradle
│  │  version.ini

# 查看IP地址 ipconfig
C:\>ipconfig
# 查看网络通信状况 ping ip地址
C:\>ping 192.168.0.1
192.168.0.1 に ping を送信しています 32 バイトのデータ:
要求がタイムアウトしました。

# 更多命令提示帮助 help
C:\>help
```
