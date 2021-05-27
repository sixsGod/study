# Github:

### Git

> config command:
> git config --global user.name "Fisrstname Lastname"
> git config --global user.email "your_email@example.com"
> git config --global color.ui 
> 
> git init
> git status
> git add filenamexxxx
> git log
> git log --pretty=short 只显示提交信息的第一行
> git log finenamexxxx 只显示指定目录、文件的日志
> git log -p filenamexxxx显示文件的改动
> git log --graph 以图表形式查看分支 
> git reflog 查看当前仓库的操作日志找出回溯历史之前的哈希值
> git diff 查看更改前后的差别
> git diff HEAD 查看工作树和最新提交的差别
> git commit -m "memo"
> git commit --amend 修改提交信息
> git commit -am "memo add 和commit同时进行
> git push
> git pull origin branchxxxxx获取最新的远程仓库分支
> 
> git branch 显示分支一览表 -a命令查看当前分支的相关信息
> git checkout -b namexxx 创建、切换分支
> git branch namexxx /git checkout namexxx 连接起来和上面相同
> git checkout - 切换回上一个分支
> 
>git merge 合并分支 要先切回主分支master
>git merge --no-ff branchnamexxxx  在历史记录中明确记录下本次分支合并
>
>git reset 回溯历史版本
>git reset --hard HEAD、暂存区、当前工作树回溯到指定状态要提供目标时间点的哈希值
>git rebase -i 将这个修改包含到前一个提交之中，压缩成一个历史记录
>git rebase -i HEAD~2选定当前分支中包含HEAD（最新提交）在内的两个最新历史记录为对象
>pick idxxxa Add branchnamexxxx
>fixup idxxxb Fix typo 错字漏字等失误称作typo
> git clone git@github.com:https://github.com/sixsGod/hello_world.git
> 
> git remote add origin git@github.com:https://github.com/sixsGod/hello_world.git
> git push -u origin master推送至master分支
### Github



My page -> https://github.com/sixsGod

GitHubFlavored Markdown（GFM）

git clone https://github.com/sixsGod/study.git



```
# create a new repository on the command line
echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/sixsGod/study.git
git push -u origin main
```

### push an existing repository from the command line

```
git remote add origin https://github.com/sixsGod/test.git
git branch -M main
git push -u origin main
```

master
