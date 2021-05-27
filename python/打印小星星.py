row = 1
# 循环小星星
while row <= 5:
    print("*" * row)
    row += 1

# 循环嵌套打印大星星
row = 1

# 循环行
while row <= 5:
    col = 1
    # 循环列
    while col <= row:
        print("★", end="")
        col += 1
    print("")
    row += 1
