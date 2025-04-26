// SW04Loop.swift
import Foundation

// For loop example
for i in 1...5 {
    print("For loop iteration: \(i)")
}

// While loop example
var count = 1
while count <= 5 {
    print("While loop iteration: \(count)")
    count += 1
}

// Repeat-while loop example
var repeatCount = 1
repeat {
    print("Repeat-while loop iteration: \(repeatCount)")
    repeatCount += 1
} while repeatCount <= 5

// Breaking out of a loop
for i in 1...10 {
    if i == 6 {
        print("Breaking out of the loop at \(i)")
        break
    }
    print("Current value: \(i)")
}

// Continuing to the next iteration
for i in 1...10 {
    if i % 2 == 0 {
        print("Skipping even number: \(i)")
        continue
    }
    print("Odd number: \(i)")
}