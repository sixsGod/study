import random

# 玩家
player = int(input("玩家请出拳：1(石头),2(剪刀),3(布)："))

# 电脑
computer = random.randint(1, 3)  # 石头
print("玩家出的拳是：%d\n电脑出的拳是：%d" % (player, computer))

# 比赛
if ((player == 1 and computer == 2) or
    (player == 2 and computer == 3) or
        (player == 3 and computer == 1)):

    print("电脑太菜了吧")

elif player == computer:
    print("旗鼓相当呢")

else:
    print("you lose the game")
