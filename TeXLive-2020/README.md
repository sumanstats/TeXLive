# TeXLive-2020 with Python-Pygments 

[![TexLive:2020](https://img.shields.io/badge/TeX%20Live-2020-blue.svg)](https://www.tug.org/texlive/quickinstall.html)
[![License: MIT](https://img.shields.io/github/license/sumanstats/texlive.svg)](https://github.com/sumanstats/TeXLive/blob/master/LICENSE)
[![Github Stars](https://img.shields.io/github/stars/sumanstats/TeXLive.svg?style=social&label=Github)](https://github.com/sumanstats/TeXLive)



Contains full **TeXLive-2020** with additional [**python-pygments library**](http://pygments.org/) for source code highlighting via [**minted package**](https://www.ctan.org/pkg/minted). Also contains [**Pandoc**](https://pandoc.org/index.html), a universal document converter.

## How to get the image?

From the interactive docker shell, pull this image with:

`docker pull sumankhanal/texlive-2020:<tag>`

Tags available are **minimal, basic, small** and **full**.

## Why should you use it?

If you work with Latex documents, this is useful to compile your document **independent of OS and without the need to install anything**.  All the compilers: **pdflatex**, **xelatex** and **lualatex** are available in images with tag `small` and `full`.


You can easily convert markdown documents to `pdf` with **pandoc**.

## How to run this image/ How do you use it ?

After you are done with the pull, mount the directory present in your host operating system containing .tex files 
into docker image like this:

`docker run -it -v /c/Users/username/Folder_with_tex:/home -w /home sumankhanal/texlive-2019:<tag> bin/bash`


You will now have access to the terminal. Your working dir will be `/home` where you will see the .tex files.

Now run:
`pdflatex -shell-escape -synctex=1 -interaction=nonstopmode yourtex.tex` and see your **yourtex.tex** file getting compiled.

**The size of full image is almost 2 GB** which is quite big but
its ***cool*** with all stuff that's available in **CTAN**. :)



**Note:**

+ For compiling your [**beamer slides**](https://ctan.org/pkg/beamer?lang=en) and thesis, image with `small` tag is adequate

+ Or you can install `beamer` and `minted` packages with command `tlmgr install beamer minted` in image with `basic` tag. This way pulling image will be faster with less space consumption.

If it helped you, consider making a small donation.