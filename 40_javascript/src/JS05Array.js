// 数组的基本操作示例

// 创建数组
const fruits = ["苹果", "香蕉", "橙子"];

// 访问数组元素
console.log(fruits[0]); // 输出: 苹果
console.log(fruits[1]); // 输出: 香蕉

// 修改数组元素
fruits[2] = "葡萄";
console.log(fruits); // 输出: ["苹果", "香蕉", "葡萄"]

// 添加元素到数组末尾
fruits.push("草莓");
console.log(fruits); // 输出: ["苹果", "香蕉", "葡萄", "草莓"]

// 删除数组末尾的元素
fruits.pop();
console.log(fruits); // 输出: ["苹果", "香蕉", "葡萄"]

// 添加元素到数组开头
fruits.unshift("西瓜");
console.log(fruits); // 输出: ["西瓜", "苹果", "香蕉", "葡萄"]

// 删除数组开头的元素
fruits.shift();
console.log(fruits); // 输出: ["苹果", "香蕉", "葡萄"]

// 查找元素索引
const index = fruits.indexOf("香蕉");
console.log(index); // 输出: 1

// 删除指定索引的元素
fruits.splice(index, 1);
console.log(fruits); // 输出: ["苹果", "葡萄"]

// 数组长度
console.log(fruits.length); // 输出: 2

// 遍历数组
fruits.forEach((fruit, i) => {
    console.log(`索引 ${i}: ${fruit}`);
});

// 合并数组
const vegetables = ["胡萝卜", "黄瓜"];
const food = fruits.concat(vegetables);
console.log(food); // 输出: ["苹果", "葡萄", "胡萝卜", "黄瓜"]

// 检查是否为数组
console.log(Array.isArray(fruits)); // 输出: true