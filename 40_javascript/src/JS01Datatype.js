// 数据类型示例

// 1. Number 类型
let num = 42;
let floatNum = 3.14;

// 2. String 类型
let str = "Hello, World!";
let singleQuoteStr = 'JavaScript';

// 3. Boolean 类型
let isTrue = true;
let isFalse = false;

// 4. Undefined 类型
let undefinedVar;

// 5. Null 类型
let nullVar = null;

// 6. Object 类型
let obj = {
    name: "Alice",
    age: 25
};

// 7. Array 类型 (特殊的对象)
let arr = [1, 2, 3, 4, 5];

// 8. Symbol 类型
let sym = Symbol("unique");

// 9. BigInt 类型
let bigIntNum = 1234567890123456789012345678901234567890n;

// 类型检查
console.log(typeof num); // "number"
console.log(typeof str); // "string"
console.log(typeof isTrue); // "boolean"
console.log(typeof undefinedVar); // "undefined"
console.log(typeof nullVar); // "object" (特殊情况)
console.log(typeof obj); // "object"
console.log(typeof arr); // "object"
console.log(typeof sym); // "symbol"
console.log(typeof bigIntNum); // "bigint"