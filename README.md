# Open Science in Kenya: Where are we? [![Build Status](https://travis-ci.org/BioinfoNet/hack-paper.svg?branch=master)](https://travis-ci.org/BioinfoNet/hack-paper)

## Description 

This repository contains the manuscript entitled:
[**Open Science in Kenya: Where are we?**](https://github.com/bioinfonet/hack-paper/blob/master/document/manuscript.md). Our aim is to review the intake of open science practices by Kenya Researcher. NB: May expand to EA, if time allows.

This is an output of OpenScienceKE hackathon held on ...
     
     
## Commenting and contributing 
Thank you for your interest in this project. If you want to contribute, send us a pull request or open an issue if there is any
point you would like to raise or discuss.


## Conversion to LaTeX

- **Any modifications to the text should be made to the
  `manuscript.md` file.** This file is then converted to LaTeX using
  `pandoc` and included in the main tex file. 

- **Any modification to the title or authors should be made to
  `manuscript-biorxiv.tex`, following the syntax defined therein**

Then, type

```
make manuscript-biorxiv.tex
```

- Only commit `manuscript-biorxiv.pdf`. Temporary files will be ignored
  by git; to clean them up:

```
make clean
```

## Attribution

This paper template is insipred by: https://github.com/ypriverol/github-paper. 
