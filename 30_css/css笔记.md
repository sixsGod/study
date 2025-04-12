### CSS语法
> 选择器{
		属性1：属性值；
		属性2：属性值
}

### CSS选择器
> id选择器
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>id选择器</title>
    <style type="text/css" rel="stylesheet">
        /* 选择id为div1的元素,定义样式 */
         #div1 {
             color: fuchsia;
         }
    </style>
</head>
<body>
    <div id="div1">
        hello world
    </div>
    <!-- id没被选择不会改变样式   -->
    <div id="div2">
        hello world2
    </div>
</body>
</html>
```
> 元素选择器
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>元素选择器</title>
    <style type="text/css" rel="stylesheet">
        /* 选择div元素,定义样式 */
         div {
             color: red;
         }
    </style>
</head>
<body>
    <!-- div元素都会被选择并且改变样式   -->

    <div id="div1">
        hello world
    </div>
    <div id="div2">
        hello world2
    </div>
</body>
</html>
```
> 类选择器
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>类选择器</title>
    <style type="text/css" rel="stylesheet">
        /* 选择class,定义样式 */
         .cls {
             color: blue;
         }
    </style>
</head>
<body>
    <!-- class(cls)都会被选择并且改变样式   -->
    <div class="cls">
        hello world
    </div>
    <div class="cls">
        hello world2
    </div>
</body>
</html>
```
>扩展选择器
> - 选择所有元素:*{}
> - 并集选择器:选择器1，选择器2，...，{}
> - 子选择器:选择器1(空格)选择器2{} ※选择1下的子类2
> - 父选择器：选择器1>选择器2{} ※选择2上的父类1
> ....

### CSS属性

> - 文本，字体，颜色，尺寸，边框
> - 背景
> - 列表
> - 表格
> - 超链接
> - 盒子模型
> 	1. margin外边距
> 	2. padding内边距
> 		- box-sizing:border-box固定盒子大小，不要发生改变
> 	3. 浮动(可以把多行浮动成一行)
> 		- left
> 		- right
