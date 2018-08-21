#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_paper_files() {
  git add *.pdf
  git add *.tex
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin https://${GIT_TOKEN}@github.com/bioinfonet/hack-paper.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master
}
setup_git
commit_paper_files
upload_files
