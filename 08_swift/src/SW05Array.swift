// SW05Array.swift
import Foundation

// 创建一个数组
var numbers: [Int] = [1, 2, 3, 4, 5]

// 添加元素
numbers.append(6)

// 插入元素
numbers.insert(0, at: 0)

// 删除元素
numbers.remove(at: 3)

// 修改元素
numbers[2] = 10

// 遍历数组
for number in numbers {
    print(number)
}

// 数组的长度
print("数组长度: \(numbers.count)")

// 检查数组是否为空
if numbers.isEmpty {
    print("数组为空")
} else {
    print("数组不为空")
}

// 查找元素
if let index = numbers.firstIndex(of: 10) {
    print("元素 10 的索引是 \(index)")
} else {
    print("未找到元素 10")
}

// 排序数组
let sortedNumbers = numbers.sorted()
print("排序后的数组: \(sortedNumbers)")

// 反转数组
let reversedNumbers = numbers.reversed()
print("反转后的数组: \(Array(reversedNumbers))")