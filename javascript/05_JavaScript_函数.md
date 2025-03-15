## 函数的定义与调用
- 无返回值的函数
```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>无返回值的函数/title>
    <script>
        // 定义函数
        function getSum(n)  // n 为形参
        {
          var sum=0;
          for (var i = 1; i <= sum; i++)
          {
            sum+=i;
          }
          document.write(n + "以内所有整数之和为：" + sum + "<br/>");
        }
        // 使用函数
        getSum(50);  // 50 为实参
        getSum(100);
        getSum(150);
    </script>
</head>
<body>
</body>
</html>
```

- 有返回值的函数
```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>有返回值的函数</title>
    <script>
        // 定义函数
        function addSum(a, b)  // a,b 为形参
        {
          var sum=a+b;
          return sum;
        }
        // 使用函数
        var n=addSum(1,2)+100;  // 1,2 为实参,结果103
        document.write(n);
    </script>
</head>
<body>
</body>
</html>
```

- 在超链接中调用函数
```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>在超链接中调用函数</title>
    <script>
        function expressMe() 
        {
          alert("Hello World");
        }
    </script>
</head>
<body>
    // 在超链接中调用 expressMe函数
    <a href="javascript:expressMe()">sayHello</a> 
</body>
</html>
```

- 在事件中调用函数
```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>在事件中调用函数</title>
    <script>
        function alertMe() 
        {
          alert("Hello World");
        }
    </script>
</head>
<body>
    // 在事件中调用alertMe函数
    <input type="button" onclick="alertMe()" value="提交"/> 
</body>
</html>
```

## 构造函数
```javascript
// always use this keyword
function Star(name,age,sex) {
    this.name = name;
    this.age = age;
    this.sex = sex;
}
// must use new keyword
var myname = new Star('Allen',18,'men')

```

## 内置函数
- parseint(): 提取字符串中的数字，只限提取整数
- parseFloat(): 提取字符串中的数字，可以提取小数
- isFinite(): 判断某一个数是否是一个有限数值
- isNaN(): 判断一个数是否是NaN值
- escape(): 对字符串进行编码
- unescape(): 对字符串进行解码
- eval(): 把一个字符串当作一个表达式来执行

