# 提示用户输入年份
year = float(input('请输入年份:'))
# 判断该年份是否是闰年
if (year % 4 == 0) and (year % 100 != 0):
    print('普通闰年')  # 能被4整除但不能被100整除
elif year % 400 == 0:
    print('世纪闰年')  # 能被400整除
else:
    print('不是闰年')
