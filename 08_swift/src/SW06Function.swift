// 定义一个简单的函数
func greet(name: String) -> String {
    return "Hello, \(name)!"
}

// 调用函数
let message = greet(name: "Swift")
print(message)

// 带有默认参数值的函数
func addNumbers(a: Int, b: Int = 10) -> Int {
    return a + b
}

// 调用带默认参数的函数
let sum1 = addNumbers(a: 5)
let sum2 = addNumbers(a: 5, b: 15)
print(sum1)
print(sum2)

// 可变参数的函数
func calculateSum(numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}

// 调用可变参数的函数
let total = calculateSum(numbers: 1, 2, 3, 4, 5)
print(total)

// 嵌套函数
func outerFunction(value: Int) -> Int {
    func innerFunction(factor: Int) -> Int {
        return value * factor
    }
    return innerFunction(factor: 2)
}

// 调用嵌套函数
let result = outerFunction(value: 10)
print(result)