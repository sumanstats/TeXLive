# TeXLive-distributions with Python-Pygments and Pandoc



[![Build Status](https://travis-ci.com/sumanstats/TeXLive.svg?branch=master)](https://travis-ci.com/sumanstats/TeXLive)
[![License: MIT](https://img.shields.io/github/license/sumanstats/texlive.svg)](https://github.com/sumanstats/TeXLive/blob/master/LICENSE)
[![Github Stars](https://img.shields.io/github/stars/sumanstats/TeXLive.svg?style=social&label=Github)](https://github.com/sumanstats/TeXLive)

> Building Docker images for TeXLive


| Image                                                              | Available tags                              | Description                     |
|--------------------------------------------------------------------|---------------------------------------------|---------------------------------|
| [TeXLive-2017](https://hub.docker.com/r/sumankhanal/texlive-2017/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2017. |
| [TeXLive-2018](https://hub.docker.com/r/sumankhanal/texlive-2018/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2018. |
| [TeXLive-2019](https://hub.docker.com/r/sumankhanal/texlive-2019/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2019. |
| [TeXLive-2020](https://hub.docker.com/r/sumankhanal/texlive-2020/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2020. |
| [TeXLive-2021](https://hub.docker.com/r/sumankhanal/texlive-2021/) | **minimal**, **basic**, **small**, **full** | Docker image with TeXLive-2021. |


Contains **TeXLive** distributions for different years with additional [**python-pygments library**](http://pygments.org/) for source code highlighting via [minted package](https://www.ctan.org/pkg/minted). Also contains [**Pandoc**](https://pandoc.org/index.html) which is a free and open-source document converter, widely used as a writing tool (especially by scholars) and as a basis for publishing workflows.

## How to get the image?

From the interactive docker shell, pull this image with:

`docker pull sumankhanal/texlive-<year>:<tag>`

Tags available are **minimal, basic, small** and **full**.

## Why to use ?

If you work with Latex documents, this is useful to compile your document **independent of OS and without the need to install anything**.  All the compilers: **pdflatex**, **xelatex** and **lualatex** are available in images with tag `small` and `full`.


You can easily convert markdown documents to `pdf` with **pandoc**.


**Note:**

+ For old `texlive` versions, before running `tlmgr install`, run the command `tlmgr option repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/<year>/tlnet-final/ && tlmgr update --self`. Substitute `<year>` matching with the old `texlive` version. For example, if you want to use `texlive-2020` when `texlive-2021` is already released, do 

```
tlmgr option repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2020/tlnet-final/ && tlmgr update --self 
tlmgr install <your-package>
```

+ For compiling your [beamer slides](https://ctan.org/pkg/beamer?lang=en) and thesis, image with `small` tag is adequate

+ Or you can install `beamer` and `minted` packages with command `tlmgr install beamer minted` in image with `basic` tag. This way pulling image will be faster with less space consumption.

For detailed reading on TeXLive documentation, go [here](https://www.tug.org/texlive/doc/texlive-en/texlive-en.pdf).

If it helped you in your work, consider buying me a coffee.

<a href="https://www.buymeacoffee.com/sumankhanal"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=sumankhanal&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff"></a>
