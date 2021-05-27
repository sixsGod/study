## CSS概要:
- CSS 指层叠样式表 (Cascading Style Sheets)

- 样式定义如何显示 HTML 元素

- 样式通常存储在样式表中

- 把样式添加到 HTML 4.0 中，是为了解决内容与表现分离的问题

- 外部样式表可以极大提高工作效率

- 外部样式表通常存储在 CSS 文件中

- 多个样式定义可层叠为一个


### 嵌套CSS的三种方式:
1. 内联样式(不推荐)
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>内联样式</title>
    <!-- css不在<head>标签中定义   -->
</head>
<body>
    <!--css在元素标签中通过（style属性）定义样式-->
    <span style="color: aqua">hello world</span>
</body>
</html>
```
2. 内部式样
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>内部样式</title>
    <!-- css在<head>标签中定义 -->
    <style>
        span{color: aqua}  /* 通过元素选择器定义样式 */
    </style>
</head>
<body>
    <span>hello world</span>
</body>
</html>
```
3. 外部式样（推荐）
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>外部样式</title>
    <!-- css在<head>标签中定义,通过link标签调用css文件 -->
    <link rel="stylesheet" href="01_css样式.css"
</head>
<body>
    <span>hello world</span>
    <span>hello world</span>
</body>
</html>
```
※外部css文件:
```css
/*01_css样式.css*/
span{color:blue}
```
