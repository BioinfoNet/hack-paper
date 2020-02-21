# Open Science in Kenya: Where are we? [![Build Status](https://travis-ci.org/BioinfoNet/hack-paper.svg?branch=master)](https://travis-ci.org/BioinfoNet/hack-paper)

## Description 

This repository contains the manuscript entitled:
[**Open Science in Kenya: Where are we?**](https://github.com/bioinfonet/hack-paper/blob/master/document/manuscript.md). We aim to review the intake of open science practices by Kenya Researcher. NB: May expand to East Africa if time allows.

This paper presents the output of OpenScienceKE hackathon held on 30th and 31st August 2018.
     
     
## Commenting and contributing 
Thank you for your interest in this project. If you want to contribute, send us a pull request or open an issue if there is any
point you would like to raise or discuss.


## Conversion to LaTeX
- **Any modifications to the text should be made to the
  `manuscript.md` file.** This file is then converted to LaTeX using
  `pandoc` and included in the main tex file. 

- **Any modification to the title or authors should be made to
  `manuscript-biorxiv.tex`, following the syntax defined therein**

If working locally, type:

```
make manuscript-biorxiv.tex
```

- Only commit `manuscript-biorxiv.pdf`. Temporary files will be ignored
  by git; to clean them up:

```
make clean
```

### Generating pdf paper
Each of the above steps is automated as soon as you send a pull request. We are using Travis CI to generate the LaTex and PDF of the paper and push it automatically to the repo on a pull request. Create a branch from the master, edit the `manuscript.md` and send a pull request when done with your edits. The pull request is automatically merged on passing the Travis CI tests.  

## Contributing

Thank you for your interest. To contribute, have a look at the roadmap and issues, fork this repo and send us a pull request when done. 

## Attribution

This paper template is inspired by https://github.com/ypriverol/github-paper. 
