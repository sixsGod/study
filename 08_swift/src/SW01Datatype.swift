// SW01Datatype.swift
import Foundation

// 整数类型
let intExample: Int = 42
let uintExample: UInt = 42

// 浮点数类型
let floatExample: Float = 3.14
let doubleExample: Double = 3.14159265359

// 布尔类型
let boolExample: Bool = true

// 字符和字符串类型
let charExample: Character = "A"
let stringExample: String = "Hello, Swift!"

// 数组类型
let arrayExample: [Int] = [1, 2, 3, 4, 5]

// 字典类型
let dictionaryExample: [String: Int] = ["one": 1, "two": 2, "three": 3]

// 元组类型
let tupleExample: (Int, String) = (1, "Swift")

// 可选类型
let optionalExample: Int? = nil

// 打印示例
print("整数: \(intExample), 无符号整数: \(uintExample)")
print("浮点数: \(floatExample), 双精度浮点数: \(doubleExample)")
print("布尔值: \(boolExample)")
print("字符: \(charExample), 字符串: \(stringExample)")
print("数组: \(arrayExample)")
print("字典: \(dictionaryExample)")
print("元组: \(tupleExample)")
print("可选值: \(String(describing: optionalExample))")