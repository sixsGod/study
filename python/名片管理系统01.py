"""
*******************************************************
欢迎使用【名片管理系统】V 1.0

1.新建名片
2.显示全部
3.查询名片

0.推出系统
*******************************************************
请选择操作功能：
"""
import cards_tool


while True:
    # 显示菜单
    cards_tool.show_menu()

    action_str = input("请选择希望执行的操作：")
    print("您选择的操作是【%s】" % action_str)

    # 选项【1.2.3】针对名片操作
    if action_str in ["1", "2", "3"]:
        # 新建名片
        if action_str == "1":
            cards_tool.new_card()
        # 显示全部
        elif action_str == "2":
            cards_tool.show_all()
        # 查询名片
        elif action_str == "3":
            cards_tool.select_card()
        pass
    # 选项【0】退出系统
    elif action_str == "0":
        print("系统已退出，欢迎再次使用【名片管理系统】")
        break
    # 其他选项错误，提示用户重新输入
    else:
        print("输入错误，请重新输入")
