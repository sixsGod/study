// 定义一个类
class Person {
    constructor(firstName, lastName, age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }

    greet() {
        console.log(`Hello, my name is ${this.firstName} ${this.lastName}.`);
    }
}

// 使用类创建对象
const person = new Person("John", "Doe", 30);

console.log(person.firstName); // 输出: John
console.log(person.age); // 输出: 30
person.greet(); // 输出: Hello, my name is John Doe.