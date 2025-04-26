// 循环控制示例

// for 循环
for (let i = 0; i < 5; i++) {
    console.log(`for 循环: 第 ${i + 1} 次`);
}

// while 循环
let count = 0;
while (count < 5) {
    console.log(`while 循环: 第 ${count + 1} 次`);
    count++;
}

// do...while 循环
let num = 0;
do {
    console.log(`do...while 循环: 第 ${num + 1} 次`);
    num++;
} while (num < 5);

// 使用 break 退出循环
for (let i = 0; i < 10; i++) {
    if (i === 5) {
        console.log('遇到 5，退出循环');
        break;
    }
    console.log(`当前值: ${i}`);
}

// 使用 continue 跳过当前迭代
for (let i = 0; i < 10; i++) {
    if (i % 2 === 0) {
        continue; // 跳过偶数
    }
    console.log(`奇数值: ${i}`);
}