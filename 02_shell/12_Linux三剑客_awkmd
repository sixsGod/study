## awk 
一种文本处理工具，可用于对文本进行格式化和转换。它可以读取文本文件、执行数学运算、进行逻辑操作、创建变量和数组等,gawk:GNU版本，属于编程语言级别

```sh
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
