def show_star(times):
    """打印指定次数的小星星"""
    print("*" * times)
    return times


def show_split_line(times):
    """打印分割线"""
    print("-" * times)
    return times


# card_list储存所有名字信息的名片字典
card_list = []


def show_menu():
    """显示菜单"""
    show_star(50)
    print("欢迎使用【名片管理系统】V1.0")
    print()
    print("1.新建名片")
    print("2.显示全部")
    print("3.查询名片")
    print()
    print("0.退出系统")
    show_star(50)


def new_card():
    """新建名片"""
    show_split_line(50)
    print("新建名片")
    # 1.提示用户输入详细信息
    name_str = input("请输入您的姓名：")
    phone_str = input("请输入手机号码：")
    qq_str = input("请输入QQ号码：")
    mail_str = input("请输入邮箱地址：")

    # 2.使用输入的信息建立一个字典
    card_dict = {"name": name_str,
                 "phone": phone_str,
                 "qq": qq_str,
                 "mail": mail_str}

    # 3.将名片字典追加到名片列表中
    card_list.append(card_dict)

    # 4.名片新建成功
    show_split_line(50)
    print("%s的名片已添加成功" % name_str)
    print("输入【2】:显示全部\t\t输入【3】:查询名片")


def show_all():
    """显示全部"""
    show_split_line(50)
    print("显示全部")
    if len(card_list) == 0:
        print("当前没有记录，请使用【1】:新建名片 来增加名片")
        return
    # 打印表头
    for name in ["姓名", "电话", "qq", "邮箱"]:
        print(name, end="\t\t")
    print("")
    # 打印分割线
    show_split_line(50)
    for card_dict in card_list:
        print("%s\t\t%s\t\t%s\t\t%s" % (card_dict["name"],
                                        card_dict["phone"],
                                        card_dict["qq"],
                                        card_dict["mail"]))


def select_card():
    """查询名片"""
    show_split_line(50)
    print("查询名片")
    find_name = input("请输入你要查询的姓名：")
    for card_dict in card_list:
        if card_dict["name"] == find_name:
            show_split_line(50)
            print("姓名\t\t电话\t\tQQ\t\t邮箱")
            print("%s\t\t%s\t\t%s\t\t%s" % (card_dict["name"],
                                            card_dict["phone"],
                                            card_dict["qq"],
                                            card_dict["mail"]))
            deal_card(card_dict)
            break
    else:
        print("没有找到%s的记录" % find_name)


def deal_card(find_dict):
    action_str = input("请选择要执行的操作："
                       "[1]修改 [2]删除 [0]返回上级菜单")
    if action_str == "1":
        print("修改名片")
        find_dict["name"] = input_card_info(find_dict["name"], "姓名：")
        find_dict["phone"] = input_card_info(find_dict["phone"], "手机号码：")
        find_dict["qq"] = input_card_info(find_dict["qq"], "qq号码：")
        find_dict["mail"] = input_card_info(find_dict["mail"], "邮箱地址：")
        print("名片修改成功")
    elif action_str == "2":
        print("删除名片成功")
        card_list.remove(find_dict)


def input_card_info(dict_value, tip_msg):
    result_str = input(tip_msg)
    if len(result_str) > 0:
        return result_str
    else:
        return dict_value
