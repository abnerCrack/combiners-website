# @Author: abnercrack
# @Date:   2019-01-03 15:11:32
# @Last Modified by:   abnercrack
# @Last Modified time: 2019-01-03 15:44:59

#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd .vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@git.dev.tencent.com:superCrack/supercrack.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:abnerCrack/combiners.github.io.git master:gh-pages

cd -
