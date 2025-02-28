### 函数的定义与调用

```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>函数</title>
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
        sum(50);  // 50 为实参
        sum(100);
        sum(150);
    </script>
</head>
<body>
</body>
</html>
```

