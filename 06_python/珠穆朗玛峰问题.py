paper = 0.01 / 1000  # 纸张的厚度是(0.01 / 1000 米)
mountain = 8844.43  # 珠穆朗玛峰(8844.43米)

# 只要厚度不超过珠穆朗玛峰就一直对折
count = 0  # 初始化计数器
while paper < mountain:

    paper *= 2  # 对折一次厚度翻倍
    count += 1  # 记录次数 + 1
print(paper)  # 打印纸张的厚度
print(count)  # 打印记录次数
