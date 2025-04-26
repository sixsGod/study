// 定义一个类
class Person {
    // 属性
    var name: String
    var age: Int

    // 初始化方法
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    // 方法
    func introduce() {
        print("大家好，我叫\(name)，今年\(age)岁。")
    }
}

// 创建对象
let person = Person(name: "张三", age: 25)

// 调用方法
person.introduce()