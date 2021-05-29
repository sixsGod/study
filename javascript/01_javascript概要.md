## JavaScript概要:
- JavaScript 是 Web 的编程语言
- JavaScript 是 web 开发人员必须学习的 3 门语言中的一门：
- 1. HTML 定义了网页的内容
- 2. CSS 描述了网页的布局
- 3. JavaScript 控制了网页的行为


### 嵌套JavaScript的两种方式:
1. 内部JS
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>内部JS</title>
    <!-- JS可放在任意位置 -->
    <script>
        alert("我的第一个 JavaScript");
    </script>
</head>
<body>
    
</body>
</html>
```
2. 外部JS
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>外部JS</title>
    <!-- 在<script>标签中调用JS文件 -->
    <script src="myScript.js"></script>
</head>
<body>

</body>
</html>
```
※外部css文件:
```javascript
/*01_js.js*/
alert("我的第一个 JavaScript");
```


