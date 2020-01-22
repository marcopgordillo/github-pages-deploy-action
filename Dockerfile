FROM node:12-alpine

LABEL "com.github.actions.name"="Deploy to GitHub Pages" \
      "com.github.actions.description"="This action will handle the building and deploying process of your project to GitHub Pages." \
      "com.github.actions.icon"="git-commit" \
      "com.github.actions.color"="orange" \
      "repository"="http://github.com/grasilife/gh-pages-github-action" \
      "homepage"="http://github.com/grasilife/gh-pages-gh-action" \
      "maintainer"="grasilife <434543162@qq.com>"

ADD entrypoint2.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
