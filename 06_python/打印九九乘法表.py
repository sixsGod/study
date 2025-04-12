# 打印九九乘法表
row = 1

# 循环行
while row <= 9:
    col = 1
# 循环列
    while col <= row:
        print("%d * %d = %d" % (col, row, col * row), end="\t")
        col += 1
    print("")
    row += 1
