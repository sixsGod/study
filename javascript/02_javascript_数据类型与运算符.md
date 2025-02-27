### JavaScript数据类型:
- 原始数据类型（基本数据类型）：
	1. number:整数/小数/NaN(not a number)
	2. string:字符串
	3. boolean:true / false
	4. null:一个对象为空的占位符
	5. undefined:未定义，如果一个变量没有给初始化值，则默认赋值undefined
	6. Symbol:*一种新的原始数据类型，表示独一无二的值*
- 引用数据类型：对象
	1. Object:对象
	2. Array:数组
	3. Function:函数

<hr>

### JavaScript定义变量
```javascript
// var 变量名 = 初始化值
// number类型
var num1 = 123;
var num2 = 3.14;
var num3 = NaN;
document.write(num1+" 的数据类型是："+typeof(num1)+"<br>");
document.write(num2+" 的数据类型是："+typeof(num2)+"<br>");
document.write(num3+" 的数据类型是："+typeof(num3)+"<br>");

// string类型
var str1 = "abc";
var str2 = 'A';
document.write(str1+" 的数据类型是："+typeof(str1)+"<br>");
document.write(str2+" 的数据类型是："+typeof(str2)+"<br>");

// bool类型
var flag = true;
document.write(flag+" 的数据类型是："+typeof(flag)+"<br>");

// null,undefined类型
var obj1 = null;
var obj2 = undefined;
var obj3;
document.write(obj1+" 的数据类型是："+typeof(obj1)+"<br>");
document.write(obj2+" 的数据类型是："+typeof(obj2)+"<br>");
document.write(obj3+" 的数据类型是："+typeof(obj3)+"<br>");

// Array类型
var cars=new Array();
cars[0]="Saab";
cars[1]="Volvo";
cars[2]="BMW";
//var cars=new Array("Saab","Volvo","BMW"); 也可以这么写

/* Object类型
      对象由花括号分隔。在括号内部，对象的属性以名称和值对的形式 (name : value) 来定义。
      属性由逗号分隔：
*/
var person={firstname:"John", lastname:"Doe", id:5566};
//对象属性有两种寻址方式：
name=person.lastname;
name=person["lastname"];

// Function类型
function myFunction(var1,var2)  // 调用带参数的函数
{
代码
}
```
