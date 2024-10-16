### SHELL的种类
- Bourne Shell（/usr/bin/sh或/bin/sh）
- Bourne Again Shell（/bin/bash）
- C Shell（/usr/bin/csh）
- K Shell（/usr/bin/ksh）
- Shell for Root（/sbin/sh）

### SHELL的程序结构
````sh
#!/bin/bash
# 单行注释用#号
:<<'多行注释,<<后面也可以使用其他符号，前后要匹配一致
注释内容...
注释内容...
注释内容...
'
echo "Hello World !"
echo "执行的文件名：$0";  # 执行的文件名（包含文件路径）
echo "第一个参数为：$1";  # 第一个参数 1
echo "第二个参数为：$2";  # 第二个参数 2
echo "第三个参数为：$3";  # 第三个参数 3
# 另外，还有几个特殊字符用来处理参数：
$# # 传递到脚本的参数个数
$* # 以一个单字符串显示所有向脚本传递的参数。等价于 "1 2 3"
$@ # 与$*相同，但是使用时加引号，并在引号中返回每个参数。等价于 "1" "2" "3"
$$ # 脚本运行的当前进程ID号
$! # 后台运行的最后一个进程的ID号
$- # 显示Shell使用的当前选项，与[set命令]功能相同。
$? # 显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
$0 返回执行shell名称  # basename命令可以返回不包含路径的脚本名
````
\#! 是一个约定的标记，它告诉系统这个脚本需要什么解释器来执行，即使用哪一种 Shell。

### SHELL的运行方法
1. 作为可执行程序
````sh
chmod +x ./test.sh  #使脚本具有执行权限
./test.sh  1 2 3 #执行脚本，向脚本传递三个参数 1 2 3
````
注意，一定要写成 ./test.sh，而不是 test.sh，运行其它二进制的程序也一样，直接写 test.sh，linux 系统会去 PATH 里寻找有没有叫 test.sh 的，而只有 /bin, /sbin, /usr/bin，/usr/sbin 等在 PATH 里，你的当前目录通常不在 PATH 里，所以写成 test.sh 是会找不到命令的，要用 ./test.sh 告诉系统说，就在当前目录找。
2. 作为解释器参数
````sh
/bin/sh test.sh # 这种方式运行的脚本，不需要在第一行指定解释器信息，写了也没用。
bash test.sh
sh test.sh
# 推荐下面的去执行
source test.sh # 没有权限的脚本不能直接被执行，但是可以通过source或者.空格来执行
. test.sh # .+空格+shell文件名
````
3.查看执行结果码
```
echo $?
    正常 ： 0
    异常 ： 0以外的正整数，如1：无效的参数，126：没有权限执行，127：无效的命令
exit 常量或变量  # 自定义程序返回码，0~255
```
### 变量
定义变量时，变量名不加美元符号（$，PHP语言中变量需要），如：
````sh
# 自定义变量 
say_hi=hello,world  # 不加引号时，值里有变量的会被解析后再输出
say_hi='hello,world' # 单引号时，不转义不解析变量
say_hi="hello,world"  # 双引号时，值里有变量的会被解析后再输出,有命令要反引号一下(``)
# 自定义环境变量 /etc/profile-> ~/.bash_profile->~/.bashrc->/etc/bashrc
export 变量名=value # 1.变量名=value 2. export 变量名 的合并写法
declare -x 变量名=value
# 环境变量,一般是指用export内置命令导出的变量
export TOMCAT=/home/tom
# 有3个命令可以显示变量的值
:<<'
set命令输出所有的变量，包括全局变量和局部变量；set -o命令显示bash Shell的所有参数配置信息。
env命令只显示全局变量；
declare命令输出所有的变量、函数、整数和已经导出的变量。
'
````
使用一个定义过的变量，只要在变量名前面加美元符号即可，如：
````sh
say_hi="hello,world"
echo $say_hi
echo ${say_hi} 
# 加花括号是为了帮助解释器识别变量的边界，比如下面这种情况：
for skill in Ada Coffe Action Java; do
    # 如果不给skill变量加花括号，写成echo "I am good at $skillScript"，解释器就会把$skillScript当成一个变量（其值为空）
    echo "I am good at ${skill}Script"
done
# 只读变量,使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被改变。
myUrl="https://www.google.com"
readonly myUrl
# 删除变量,  变量被删除后不能再次使用。
unset myUrl # unset 命令不能删除只读变量。
# 引号拼接字符串
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting  $greeting_1
# 获取字符串长度
string="abcd"
echo ${#string}   # 输出 4,变量为数组时，${#string} 等价于 ${#string[0]}:
# 切片，提取子字符串
string="runoob is a great site"
echo ${string:1:4} # 输出 unoo，注意：第一个字符的索引值为 0。
# 查找子字符串
string="runoob is a great site"
echo `expr index "$string" io`  # 输出 4，查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)：
# 定义数组
array_name=(value0 value1 value2 value3)  # 数组名=(值1 值2 ... 值n)
array_name[0]=value0
# 读取数组
valuen=${array_name[n]} # ${数组名[下标]}
echo ${array_name[@]}  # 使用 @ 符号可以获取数组中的所有元素
length=${#array_name[*]} # 或者*获取数组中的所有元素（个数）
````
### 运算符
原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
- 算术运算符
````sh
#!/bin/bash
a = 10
b = 20
# 通过方括号实现计算
$[ operation ] 
echo $[a * b]  # 结果为 200。

# 通过expr命令实现计算
echo `expr $a + $b` # 结果为 30。
echo `expr $a \* $b` # 结果为 200。
echo `expr $b / $a` # 结果为 2。
echo `expr $b % $a` # 结果为 0。

# 通过bash bc计算器实现计算
c = $(bc << EOF    # -q选项可以不显示欢迎信息，通过print打印计算结果
scala=4    # 定义4位小数
a=10
b=20
a * b
EOF
)
echo c

echo a=$b # 赋值,把变量 b 的值赋给 a。
echo [ $a == $b ] # 比较两个数字,返回 false。
echo [ $a != $b ] # 不相等,返回 true。
````
- 关系运算符
````sh
#!/bin/bash
a = 10
b = 20
echo [ $a -eq $b ] # 检测两个数是否相等,返回 false。
echo [ $a -ne $b ] # 不相等,返回 true。
echo [ $a -gt $b ] # 大于,返回 false。
echo [ $a -lt $b ] # 小于,返回 true。
echo [ $a -ge $b ] # 大于等于,返回 false。
echo [ $a -le $b ] # 小于等于,返回 true。
````
- 布尔运算符
````sh
#!/bin/bash
a = 10
b = 20
echo [ ! false ] # 非运算,返回 true。
echo [ $a -lt 20 -o $b -gt 100 ] # 或运算,返回 true。
echo [ $a -lt 20 -a $b -gt 100 ] # 与运算,返回 false。
echo [[ $a -lt 100 && $b -gt 100 ]] # 逻辑的 AND,返回 false
echo [[ $a -lt 100 || $b -gt 100 ]] # 逻辑的OR返回 true
````
- 字符串运算符
````sh
#!/bin/bash
a = "abc"
b = "efg"
echo [ $a = $b ] # 检测两个字符串是否相等,返回 false。
echo [ $a != $b ] # 是否不相等,返回 true。
echo [ -z $a ] # 字符串长度是否为0,返回 false。
echo [ -n "$a" ] # 字符串长度是否不为 0,返回 true。
echo [ $a ] 返回 # 字符串是否不为空,true。
````
- 文件测试运算符
````sh
#!/bin/bash
echo [ -d $file ]  # 检测文件是否是目录，如果是，则返回 true。
echo[ -f $file ] # 是否是普通文件,返回 true。
echo [ -r $file ] # 是否可读，返回 true。
echo [ -w $file ] # 是否可写，返回 true。
echo [ -x $file ] # 是否可执行，返回 true。
echo [ -s $file ] # 检测文件是否为空（文件大小是否大于0），不为空返回 true。
echo [ -e $file ] # 检测文件（包括目录）是否存在，如果是，则返回 true。
````
### 命令
- echo
````sh
#!/bin/bash
# 显示普通字符串:
echo "It is a test"  # 这里的双引号完全可以省略，以下命令与上面实例效果一致：
echo It is a test
# 显示转义字符
echo "\"It is a test\""  # "It is a test"
# 显示变量
read name # 从标准输入中读取一行
echo "$name It is a test"  # 把输入行的每个字段的值指定给 shell 变量 + It is a test
# 显示换行
echo -e "OK! \n" # -e 开启转义
# 显示不换行
echo -e "OK! \c" # -e 开启转义 \c 不换行
# 显示结果定向至文件
echo "It is a test" > myfile
# 原样输出字符串，不进行转义或取变量(用单引号)
echo '$name\"'   # $name\"
# 显示命令执行结果
echo `date`  # Thu Jul 24 10:08:46 CST 2022
````
- printf
````sh
#!/bin/bash
echo "Hello, Shell"  # Hello, Shell
printf "Hello, Shell\n" # echo同样的结果,手动添加 \n
# 格式替代符 %s %c %d %f类型，%-10s指一个宽度为 10 个字符（- 表示左对齐，没有则表示右对齐）
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg   
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
````
- test
````sh
#!/bin/bash
# 用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试。
num1=100
num2=100
if test $[num1] -eq $[num2]  # 两个数相等！
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi
cd /bin
if test -e ./notFile -o -e ./bash  # 如果文件存在则为真 ,与( -a )、或( -o )、非( ! )
then
    echo '至少有一个文件存在!'
else
    echo '两个文件都不存在'
fi
````
### 流程控制
- 分支
````sh
#!/bin/bash
# if后面接命令，返回码为0则执行then语句，否则else语句。通过test命令才可实现表达式的判定
# 单括号允许在if语句中使用子shell
# 双括号命令允许在test比较过程中使用高级数学表达式
# 双方括号命令提供了针对字符串比较的高级特性
# 单分支
if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi
# 多分支
a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi
# case ... esac
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac
````
- 循环
````sh
#!/bin/bash
# for 循环  for var in list
# 环境变量IFS=$'\n'  or \t  ,internal field separator，内部字段分隔符
for var in item1 item2 ... itemN; do command1; command2… done;
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done > output.txt # 结果输出到output.txt而非屏幕上
# while 循环
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done
# until 循环
a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done
# break 跳出所有循环（终止执行后面的所有循环）, break n 跳出n层循环
# continue 不会跳出所有循环，仅仅跳出当前循环。continue n 继续执行n级循环
````
### 函数
````sh
#!/bin/bash
funWithReturn(){
    echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字: "
    read aNum
    echo "输入第二个数字: "
    read anotherNum
    echo "两个数字分别为 $aNum 和 $anotherNum !"
    return $(($aNum+$anotherNum)) # 如果不加，将以最后一条命令运行结果，作为返回值。 return后跟数值n(0-255)
}
funWithReturn  # 调用函数时可以向其传递参数。在函数体内部，通过 $n 的形式来获取参数的值,无须括号
echo "输入的两个数字之和为 $? !"  # 函数返回值在调用该函数后通过 $? 来获得。
````
### SHELL的IO交互
- /dev/null 文件
/dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果。如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null
````sh
# 如果希望屏蔽 stdout 和 stderr，可以这样写：
command > /dev/null 2>&1
````
- 输出重定向
````sh
# 文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）
command > file1  # 输出重定向会覆盖文件内容
command >> file1  # 如果不希望文件内容被覆盖，可以使用 >> 追加到文件末尾
````
- 输入重定向
````sh
# 需要从键盘获取输入的命令会转移到文件读取内容
command < file1
command << EOF  # 直到输入EOF才会停止接收
````
### SUB调用
````sh
#!/bin/bash
# 封装一些公用的代码作为一个独立的文件，然后【. 文件名】来调用，FULLPATH
. filename   # 注意点号(.)和文件名中间有一空格
source filename # 或者这样调用其他文件
# 被调用的文件 filename 不需要可执行权限。
````
Linux三剑客
- grep 
在文件或标准输入中搜索指定的字符串或正则表达式，并输出包含该字符串或匹配该正则表达式的所有行
```
grep "error" logfile.txt
```
- sed 
用于编辑文本流的流编辑器，可以对输入的文本进行替换、删除、插入和打印等操作(不会修改源文件)。
```
sed 's/old/new/g' file.txt  # 将file.txt文件中所有 "old" 替换为 "new" g替换全部,w可写入文件
    -e 执行多个命令# sed -e 's /old/new;s/my/you/ test.txt'  命令之间必须以分号（;）分隔
    -f 指定从文件读取sed命令  # sed -f command.sed  file.txt
    -n 命令执行后不显示屏幕信息,sed -n ’s/old/new/p’ ,加了p则表示屏幕显示替换后文本信息

替代字符/
    sed编辑器允许选择其他字符作为替换命令的替代分隔符
    sed 's!/bin/bash!/bin/csh' /etc/passwd  # 感叹号（!）被用作替换命令的分隔符

使用地址
    sed '2s/dog/cat/' data.txt  # 第二行的dog变cat
    sed '2，3s/dog/cat/' data.txt  # 2-3行区间的被替换
    sed '^&s/dog/cat/' data.txt  # 开头到结尾的被替换
使用文本模式过滤
    sed '/rich/s/bash/csh/' etc/passwd  # 替换只应用于包含匹配模式的行,只修改用户rich的默认shell
使用命令组
    sed '2,{    # 可以用花括号将其组合在一起执行
    >s/old/new/
    >s/cat/dog/
    }' data.txt
单行next命令
sed '/Header/{n;d}' data.txt  # 先查找Header的那一行，找到之后next命令会移动到文本的下一行
多行next命令，合并文本行
sed '/Frist/{N;s/\n/ /}' data.txt  # 先查找First那行，使用N命令将下一行与该行合并，然后将换行符（\n）替换成空格
多行删除
sed 'N;/System\nAdmin/D'data.txt
多行打印
sed 'N;/System\nAdmin/P'data.txt
```
删除
```
sed 'd' data.txt  # 删除全部文本
sed '3d' data.txt  # 删除指定文本
sed '/number 1/d'data.txt  # 匹配到number 1的行被删除
```
插入
```
当使用插入命令时，文本会出现在数据流文本之前
  插入（insert）（i）命令会在指定行前增加一行
    echo "line 2" | sed 'i \line 1'  # 结果是line 1 换行line2
  附加（append）（a）命令会在指定行后增加一行
    echo "line 1" | sed 'a \line 2'  # 结果是line 2 换行line1
    sed '$a \   # 末尾追加多行，末尾必须追加反斜线
    > text1
    > text2
    ' data.txt
```
修改
```
修改(change)（c）命令允许修改数据流中整行文本的内容
  sed '2c\  # 修改第二行
  > line2
  'data.txt

sed '/test 1/c\  # 把匹配到的test 1 替换成text 2
>text 2
>'data.txt
```
转换
```
转换（y）命令是唯一可以处理单个字符的sed编辑器命令
  sed 'y/123/789/'data.txt  # 把inchar的第一个字符替换成outchar的第一个字符
```
- awk 
一种文本处理工具，可用于对文本进行格式化和转换。它可以读取文本文件、执行数学运算、进行逻辑操作、创建变量和数组等,gawk:GNU版本，属于编程语言级别
```
awk '{ sum += $1 } END { print sum }' numbers.txt  # 计算文件中所有数字的总和，Ctrl+D等于EOF
awk '{print $1}' file.txt 从 file.txt 文件中提取第一列，即每行第一个字段，默认分隔符时空白
    -F 指定分隔符，awk -F:  '{print $1}' /etc/passwd  ,F后面指定冒号分隔符
                  awk -F: -f command.awk /etc/passwd ,f跟sed一样从文件读取命令
    ；分号  使用多条命令时用分号拼接
    $0 表示整个文本行
    $1...n  表示第几个字段，即第几列
    BEGIN  读取数据前执行BEGIN关键字之后指定的脚本
    END  指定一段脚本，gawk会在处理完数据后执行这段脚本
　　　　gawk 'BEGIN {print "The data3 FILE Contens:"}
　　　　>{print $}
　　　　>END {print "End of File}' data3.txt
gawk 'BEGIN {FS=","} {print $1,$2,$3}'  data  # 逗号，分割字段，并打印第1，2，3列
gawk 'BEGIN {FS=","；OFS="-"} {print $1,$2,$3}'  data # 逗号分隔后用-连接第1，2，3列
```
### 正则表达式
在 Linux 系统中，正则表达式经常被用来进行文件搜索、文本处理、日志分析等操作。例如，可以使用 grep 命令来搜索包含某个正则表达式的文件，使用 sed 命令来对文本进行替换或删除等操作。
```
字符类 []：
  匹配一组字符中的任意一个字符。例如，[abc] 匹配字符 a、b 或 c。

元字符 .：
  匹配除了换行符之外的任意单个字符。例如，a.b 匹配 "aab"、"abb"、"acb" 等。

量词 {}：
  用来指定某个模式的匹配次数。例如，a{3} 匹配 "aaa"，a{1,3} 匹配 "a"、"aa" 或 "aaa"。

字符转义 \：
  用于将具有特殊含义的字符转义为字面值。例如，\. 匹配 "."。

分组 ()：
  用于将多个模式组合成一个整体，以便对整个组合进行量词或转义。例如，(abc)+ 匹配 "abc"、"abcabc" 等。

锚点 ^和$：
  用于匹配文本的开头和结尾。例如，^abc 匹配以 "abc" 开头的字符串，xyz$ 匹配以 "xyz" 结尾的字符串。
```
