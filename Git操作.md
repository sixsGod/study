# Git 初始设置
```sh
# 设置姓名和邮箱(～/.gitconfig查看)
git config --global user.name "Firstname Lastname"       # 设置姓名
git config --global user.email "your_email@example.com"  # 设置邮箱
git config --global color.ui auto                        # 提高命令输出的可读性
git --version                                            # 查看git版本
```

# Repo仓库的操作
- 创建仓库
```sh
# 创建仓库方法1:clone仓库
git clone ssh仓库地址 |本地文件夹名
git status                       # 查看仓库的状态
# 创建仓库方法2:添加远程仓库
git init                         # 本地会生成.git 文件夹，所有git相关的操作都会被存在该隐藏文件夹中
git remote add origin ssh仓库地址 # 将本地仓库和远程仓库关联
git remote -v                    # 关联后查看状态
```
- 文件的操作
```sh
# 向暂存区中添加文件
git add 文件名                   
# 可以将当前暂存区中的文件实际保存到仓库的历史记录中
git commit -m "title message" -m "message body" 
# 查看提交日志
git log                         # 命令后加上目录名，便会只显示该目录下的日志
# 查看更改前后的差别
git diff 
# 查看工作树和最新提交的差别
git diff HEAD
```
- 仓库的推push与拉pull
```sh
# 推送到远程仓库的master分支
git push -u origin master       
git push                        # 远程仓库关联后可以这样简写
# 拉取远程仓库的master分支到本地master
git pull origin master          
git pull                        # 远程仓库关联后可以这样简写
git fetch origin master         # 拉取远程仓库的master分支到本地origin master
git merge origin master         # 将本地origin master 同步到本地master
※git pull = git fetch + git merge
```
# Branch分支的操作
### ● 项目中的branch划分
- Master Branch：项目中最终发布的主分支
- Feature Branch：项目中开发阶段各模块的业务分支
- Hot Fix Branch：项目中解决bug的临时分支
```sh
# 创建分支create
git checkout -b 新建分支名
# 查看分支read
git branch / git branch -a            #显示分支一览表 -a命令查看当前分支的相关信息
# 切换分支update
git checkout 切换分支名
git checkout -                        # 切换回上一个分支
# 删除分支delete
git checkout -d 删除分支名
------------------------------------------------------------------------------------------------
git branch 分支名 /git checkout 分支名 # 连接起来和上面相同
#合并
git merge 合并分支                     # 要先切回主分支master
git merge --no-ff branchnamexxxx      # 在历史记录中明确记录下本次分支合并
#回溯
git reset                             # 回溯历史版本(重置回退)
git reset HEAD~1                      # 撤销上次操作
git reset --hard HEAD                 # 暂存区、当前工作树回溯到指定状态要提供目标时间点的哈希值
git rebase -i                         # 将这个修改包含到前一个提交之中，压缩成一个历史记录
git rebase -i HEAD~2                  # 选定当前分支中包含HEAD（最新提交）在内的两个最新历史记录为对象
```
