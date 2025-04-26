class BankAccount:
    def __init__(self, name, account_number, balance=0):
        self.name = name
        self.account_number = account_number
        self.balance = balance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"✅ 存款成功，当前余额：{self.balance}")
        else:
            print("⚠️ 存款金额必须大于0")

    def withdraw(self, amount):
        if amount > self.balance:
            print("⚠️ 余额不足")
        elif amount <= 0:
            print("⚠️ 取款金额必须大于0")
        else:
            self.balance -= amount
            print(f"✅ 取款成功，当前余额：{self.balance}")

    def display_info(self):
        print("📄 账户信息：")
        print(f"姓名：{self.name}")
        print(f"账号：{self.account_number}")
        print(f"余额：{self.balance}")


# 模拟账户数据库
accounts = []

def find_account(account_number):
    for acc in accounts:
        if acc.account_number == account_number:
            return acc
    return None


def main():
    print("欢迎使用 Python 银行账户系统！")
    
    while True:
        print("\n请选择操作：")
        print("1. 创建账户")
        print("2. 存款")
        print("3. 取款")
        print("4. 查询账户信息")
        print("5. 退出")
        
        choice = input("输入选项（1-5）：")
        
        if choice == "1":
            name = input("请输入姓名：")
            account_number = input("请输入账号：")
            if find_account(account_number):
                print("⚠️ 账号已存在")
                continue
            balance = float(input("请输入初始存款金额："))
            account = BankAccount(name, account_number, balance)
            accounts.append(account)
            print("✅ 账户创建成功！")

        elif choice == "2":
            acc_num = input("请输入账号：")
            acc = find_account(acc_num)
            if acc:
                amount = float(input("请输入存款金额："))
                acc.deposit(amount)
            else:
                print("❌ 账号不存在")

        elif choice == "3":
            acc_num = input("请输入账号：")
            acc = find_account(acc_num)
            if acc:
                amount = float(input("请输入取款金额："))
                acc.withdraw(amount)
            else:
                print("❌ 账号不存在")

        elif choice == "4":
            acc_num = input("请输入账号：")
            acc = find_account(acc_num)
            if acc:
                acc.display_info()
            else:
                print("❌ 账号不存在")

        elif choice == "5":
            print("感谢使用，再见！👋")
            break

        else:
            print("⚠️ 无效选项，请输入 1-5")


if __name__ == "__main__":
    main()
