## DOM 
Dom是JavaScript操作网页的接口，全称为"文档对象模型"(Document Object Model)。它的作用是将网页转为一个JavaScript对象，从而可以用脚本进行各种操作(比如对元素增删内容)。</br>
浏览器会根据DOM模型，将结构化文档HTML解析成一系列的节点，再由这些节点(node)组成一个树状结构(DOM Tree)。所有的节点和最终的树状结构，都有规范的对外接口。

## 节点的类型
1. Document：整个文档树的顶层节点
2. DocumentType：doctype标签H5的声明标签
3. Element：网页的各种HTML标签
4. Attribute：网页元素的属性（比如class="right"）
5. Text：标签之间或标签包含的文本
6. Comment：注释
7. DocumentFragment：文档的片段
8. document.nodeType ：可以判断节点的类型

## document对象_获取元素
- getElementsById
- getElementsByName
- getElementsByTagName
- getElementsByClassName
- querySelector
- querySelectorAll

```javascript
var div1 = document.getElementsByTagName("div")[0]
div1.innerHTML = "Hello World"
console.log(div1)
```


