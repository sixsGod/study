## PL/SLQ
PL/SQL 是一种高性能的基于事务处理的语言，能运行在任何 ORACLE 环境中，支持所有数据处理命令。

### PL/SQL 块结构
PL/SQL 是一种块结构的语言，组成 PL/SQL 程序的单元是逻辑块，一个 PL/SQL 程序包含了一个或多个逻辑块，每个块都可以划分为三个部分。
- 声明部分(Declaration section)
   + 这个部分是由关键字 DECLARE 开始，如果不需要声明变量或常量，那么可以忽略。包括游标的声明
- 执行部分(Executable section)
  + 由关键字 BEGIN 开始，所有的可执行语句都放在这一部分，其他的 PL/SQL 块也可以放在这一部分
- 异常处理部分(Exception section) 
  + 这一部分是可选的，在这一部分中处理异常或错误
 
PL/SQL 块语法
```sql
[DECLARE]
---declaration statements
BEGIN
---executable statements
[EXCEPTION]
---exception statements
END 
```
PL/SQL 块中的每一条语句都必须以分号结束，SQL 语句可以使多行的，但分号表示该语句的结束

### ORACLE 提供了四种类型的可存储的程序
PL/SQL 程序块可背独立编译并存储在数据库中，任何与数据库相连接的应用程序都可以访问这些存储的 PL/SQL 程序块。
- 函数(FUNCTION)
  + 函数是命名了的、存储在数据库中的 PL/SQL 程序块。函数接受零个或多个输入参数，有一个返回值，返回值的数据类型在创建函数时定义。
```sql
FUNCTION name [{parameter[,parameter,...])] RETURN datatypes IS
[local declarations]
BEGIN
execute statements
[EXCEPTION
exception handlers]
END [name] 
```

- 过程(PROCEDURE)
  + 与函数不同，存储过程没有返回值，存储过程不能由 SQL 语句直接使用，只能通过 EXECUT 命令或 PL/SQL 程序块内部调用
```sql
PROCEDURE name [(parameter[,parameter,...])] IS
[local declarations]
BEGIN
execute statements
[EXCEPTION
exception handlers ]
END [name]
```

- 包(package)
  + 包其实就是被组合在一起的相关对象的集合，当包中任何函数或存储过程被调用，包就被加载入内存中，包中的任何函数或存储过程的子程序访问速度将大大加快
  + 包由两个部分组成：规范和包主体(body),规范描述变量、常量、游标、和子程序，包体完全定义子程序和游标。

- 触发器(trigger)
  + 触发器与一个表或数据库事件联系在一起的，当一个触发器事件发生时，定义在表上的触发器被触发。
