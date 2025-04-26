import Foundation

// 自定义错误类型
enum CustomError: Error {
    case invalidInput
    case networkError
    case unknownError
}

// 一个可能抛出错误的函数
func performOperation(input: Int) throws -> String {
    guard input > 0 else {
        throw CustomError.invalidInput
    }
    
    // 模拟网络错误
    if input == 42 {
        throw CustomError.networkError
    }
    
    return "操作成功，输入值为 \(input)"
}

// 使用 do-catch 处理错误
func execute() {
    let inputs = [10, -5, 42]
    
    for input in inputs {
        do {
            let result = try performOperation(input: input)
            print(result)
        } catch CustomError.invalidInput {
            print("错误：输入值无效")
        } catch CustomError.networkError {
            print("错误：网络错误")
        } catch {
            print("未知错误：\(error)")
        }
    }
}

execute()