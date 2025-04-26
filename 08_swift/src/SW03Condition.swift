import Foundation

// 条件控制示例

let number = 10

// if-else 语句
if number > 0 {
    print("\(number) 是正数")
} else if number < 0 {
    print("\(number) 是负数")
} else {
    print("\(number) 是零")
}

// switch 语句
let grade = "A"

switch grade {
case "A":
    print("优秀")
case "B":
    print("良好")
case "C":
    print("及格")
case "D":
    print("不及格")
default:
    print("未知等级")
}

// 三元运算符
let isEven = (number % 2 == 0) ? "偶数" : "奇数"
print("\(number) 是 \(isEven)")