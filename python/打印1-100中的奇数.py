# 使用 while 循环实现输出 1-100 内的所有奇数
count = 1  # 初始化计数器
while count <= 100:  # 设置循环范围1-100
    if count % 2 == 1:  # 判断是否为奇数
        print(count)  # 打印奇数
    count += 1  # 记录次数 + 1
