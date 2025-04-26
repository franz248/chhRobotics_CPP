master development

git cherry-pick 目标提交：
首先切换到当前提交上，应用命令后，会将目标提交整体应用到当前提交上，并不是将目标提交与目标提交的上个改动部分应用过来
合并冲突后执行
git add .
git cherry-pick --continue
会产生新提交

git rebase 目标分支：
将当前分支整体rebase到目标分支的最新提交上
执行后想要退回则执行：
git reset --hard ORIG_HEAD




