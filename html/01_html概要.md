# 软件架构

## C/S架构(Client/Servers)
	* 客户端+服务器端
## B/S架构(Browser/Servers)
	* 浏览器+服务器端

- 资源分类：
	1. 静态资源
        使用静态网页开发技术发布的资源(html+css+javascript)
        所有用户得到的结果是一样的(文字,图片,音频,视频)
	2. 动态资源
		使用动态网页开发技术发布的资源(jsp+php+asp)
		所有用户得到的结果可能是不一样的

### html标签学习

1. 基础标签
	<!DOCTYPE html> 定义文档类型
	<html><!--定义一个 HTML 文档-->
	<titie><!--为文档定义一个标题-->
	<body><!--定义文档的主体-->
	<h1-h6><!--定义 HTML 标题-->
	<p><!--定义一个段落-->
	<br><!--定义简单的折行-->
	<hr><!--定义水平线-->
	<!--...--> 定义一个注释
	
2. 表单标签
	<form>定义一个 HTML 表单，用于用户输入
	<input>定义一个输入控件
	<textarea>定义多行的文本输入控件
	<button>定义按钮
	<select>定义选择列表（下拉列表）
	<optgroup>定义选择列表中相关选项的组合
	<option>定义选择列表中的选项
	<label>定义 input 元素的标注
	<fieldset>定义围绕表单中元素的边框
	<legend>定义 fieldset 元素的标题
	<datalist>规定了 input 元素可能的选项列表
	<keygen>规定用于表单的密钥对生成器字段
	<output>定义一个计算的结果

3. 图片标签
	<img>定义图像
	- alt规定图像的替代文本
	- height规定图像的高度
	- width规定图像的宽度
	- src规定显示图像的 URL
	<map>定义图像映射
	<area>定义图像地图内部的区域

4. 列表标签
	<ul>定义一个无序列表unorder list
	<ol>定义一个有序列表order list
	<li>定义一个列表项
	<menu>定义菜单列表
5. 表格标签
	<tablel>定义一个表格
	<caption>定义表格标题
	<th>定义表格中的表头单元格
	<tr>定义表格中的行
	<td>定义表格中的单元
	<thead>定义表格中的表头内容
	<tbody>定义表格中的主体内容
	<tfoot>定义表格中的表注内容（脚注）
	<col>定义表格中一个或多个列的属性值
	<colgroup>定义表格中供格式化的列组
6. 格式标签
	<b>定义粗体文本
	<i>定义斜体文本
	<abbr>定义一个缩写
	
	<address>定义文档作者或拥有者的联系信息
7. 链接
	<a>定义一个链接
	- href定链接的目标 URL
	- download指定下载链接
	- target 规定在何处打开目标 URL。仅在 href 属性存在时使用
	<link>定义文档与外部资源的关系
	<main>定义文档的主体部分
	<nav>定义导航链接
8. 元信息
	<meta>定义关于 HTML 文档的元信息
	- charset定义文档的字符编码uft8
	- content定义与 http-equiv 或 name 属性相关的元信息
	- http-equiv把 content 属性关联到 HTTP 头部
	    1.content-type
	    2.default-style
	    3.refresh
	- name把 content 属性关联到一个名称
	    1.application-name
	    2.author
	    3.description
	    4.generator
	    5.keywords
9. 样式/节
	<style>定义文档的样式信息
	    1.type规定样式表的 MIME 类型 text/css
	    2.media为样式表规定不同的媒体类型media_query
	<div>定义文档中的节
