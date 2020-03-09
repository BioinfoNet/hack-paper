#!/bin/sh

setup_git() {
  git config --global user.email "calebkibet88@gmail.com"
  git config --global user.name "Caleb Kibet"
}

commit_paper_files() {
  git add *.pdf
  mv manuscript.tex manuscript-out.tex
  git add manuscript-out.tex
  mv manuscript-biorxiv.html ../index.html
  git add ../index.html
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
  git branch my-temporary-work
  git checkout master
  git merge my-temporary-work
  git branch -d my-temporary-work
}

upload_files() {
  git push https://kipkurui:${GITHUB_TOKEN}@github.com/BioinfoNet/hack-paper.git --set-upstream --all
}

setup_git
commit_paper_files
upload_files
