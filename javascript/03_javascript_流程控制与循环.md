### JavaScript特殊语法
- 如果一行只有一条语句，则；可以不写（不建议）
- var 关键字定义的是局部变量，不用var定义的是全局变量(不推荐)
### JavaScript流程控制
- **if...else...**
```javascript
if (condition1)
{
    当条件 1 为 true 时执行的代码;
}
else if (condition2)
{
    当条件 2 为 true 时执行的代码;
}
else
{
  当条件 1 和 条件 2 都不为 true 时执行的代码;
}
```
- **switch循环**
```javascript
switch(n)
{
    case 1:
        执行代码块 1;
        break;
    case 2:
        执行代码块 2;
        break;
    default:
        与 case 1 和 case 2 不同时执行的代码;
}
```
- **while**
```javascript
        var sum = 0;
        var num = 1;
        while (num <= 100)  //1-100求和
        {
            sum += num;
            num ++;
        }
        alert(sum)
```
- **do ... while**
```javascript
do
{
    需要执行的代码;
}
while (条件);
```
- **for**
```javascript
        var sum = 0;
        for (var i = 1; i<=100; i++)  //1-100求和
        {
            sum += i
        }
        alert(sum)
```
- **九九乘法表**
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>九九乘法表</title>
    <style>
        table{alignment: center}  /*调用css定义边框样式*/
        td{ border: 1px solid}
    </style>
    <script>
        document.write("<table>");
        for (var i = 1; i <= 9; i++)
        {
            document.write("<tr>");
            for (var j = 1; j <= i; j++)
            {
                document.write("<td>");
                document.write(j + "*" + i + "=" + (i*j) + "&nbsp;&nbsp;");
                document.write("</td>");
            }
            document.write("</tr>");
        }
        document.write("</table>");
    </script>
</head>
<body>
</body>
</html>
```
