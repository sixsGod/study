# 使用while循环实现输出1+2+3+4+......+100 的和
count = 1  # 初始化计数器
num = 0  # 设置起点
while count <= 100:  # 设置循环范围1-100
    num += count  # 累加
    count += 1  # 记录次数 + 1
print(num)  # 打印1-100的和
