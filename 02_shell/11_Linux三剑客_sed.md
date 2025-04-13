## sed 
用于编辑文本流的流编辑器，可以对输入的文本进行替换、删除、插入和打印等操作(不会修改源文件)。
```sh
# 将file.txt文件中所有 "old" 替换为 "new" g替换全部,w可写入文件
sed 's/old/new/g' file.txt  
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
  # 先查找First那行，使用N命令将下一行与该行合并，然后将换行符（\n）替换成空格
sed '/Frist/{N;s/\n/ /}' data.txt  
多行删除
sed 'N;/System\nAdmin/D'data.txt
多行打印
sed 'N;/System\nAdmin/P'data.txt
```

- 删除
```sh
sed 'd' data.txt  # 删除全部文本
sed '3d' data.txt  # 删除指定文本
sed '/number 1/d'data.txt  # 匹配到number 1的行被删除
```

- 插入
```sh
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

- 修改
```sh
修改(change)（c）命令允许修改数据流中整行文本的内容
  sed '2c\  # 修改第二行
  > line2
  'data.txt

sed '/test 1/c\  # 把匹配到的test 1 替换成text 2
>text 2
>'data.txt
```

- 转换
```sh
转换（y）命令是唯一可以处理单个字符的sed编辑器命令
  sed 'y/123/789/'data.txt  # 把inchar的第一个字符替换成outchar的第一个字符
```
