FROM node:12

LABEL "com.github.actions.name"="Deploy to GitHub Pages" \
      "com.github.actions.description"="This action will handle the building and deploying process of your project to GitHub Pages." \
      "com.github.actions.icon"="git-commit" \
      "com.github.actions.color"="orange" \
      "repository"="http://github.com/grasilife/gh-pages-github-action" \
      "homepage"="http://github.com/grasilife/gh-pages-gh-action" \
      "maintainer"="grasilife <434543162@qq.com>"

# Installs Git and jq.
RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y jq && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
