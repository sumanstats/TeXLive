# TeXLive-distributions with Python-Pygments and Pandoc


[![License: MIT](https://img.shields.io/github/license/sumanstats/texlive.svg)](https://github.com/sumanstats/TeXLive/blob/master/LICENSE)
[![Github Stars](https://img.shields.io/github/stars/sumanstats/TeXLive.svg?style=social&label=Github)](https://github.com/sumanstats/TeXLive)

[![Build Status](https://travis-ci.com/sumanstats/TeXLive.svg?branch=master)](https://travis-ci.com/sumanstats/TeXLive)

Image            | Available tags | Description                               
---------------- | -------------- | ------------------------  
[TeXLive-2017](https://hub.docker.com/r/sumankhanal/texlive-2017/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2017.
[TeXLive-2018](https://hub.docker.com/r/sumankhanal/texlive-2018/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2018.
[TeXLive-2019](https://hub.docker.com/r/sumankhanal/texlive-2019/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2019.



Contains **TeXLive** distributions for different years with additional [python-pygments library](http://pygments.org/) for source code highlighting via [minted package](https://www.ctan.org/pkg/minted). Also contains [Pandoc](https://pandoc.org/index.html) which is a free and open-source document converter, widely used as a writing tool (especially by scholars) and as a basis for publishing workflows.

### How to get the image?

From the interactive docker shell, pull this image with:

`docker pull sumankhanal/texlive-<year>:<tag>`

Tags available are **minimal, basic, small** and **full**.

### Why to use ?

If you work with Latex documents, this is useful to compile your document **independent of OS and without the need to install anything**.  All the compilers: **pdflatex**, **xelatex** and **lualatex** are available in images with tag `small` and `full`.


**Note:**

For compiling your [beamer slides](https://ctan.org/pkg/beamer?lang=en) and thesis, image with `small` tag is adequate, or you can install `beamer` and `minted` packages with command `tlmgr install beamer minted` in image with `basic` tag. This way pulling image will be faster with less space consumption.

For detailed reading on TeXLive documentation, go [here](https://www.tug.org/texlive/doc/texlive-en/texlive-en.pdf).

If it helped you, consider making a small donation.
