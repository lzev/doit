# cherry-pick

## 查询提交记录

找到最近自己分支的提交记录，n表示提交的次数
`git log --oneline -n 10`

## cherry-pick

```
git cherry-pick 4db0729d

git add -A

git commit -m "提交内容"

git push origin test  即可
```
