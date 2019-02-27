# TeX Live-2017 with Python-Pygments

[![TexLive:2017](https://img.shields.io/badge/TeX%20Live-2017-blue.svg)](https://www.tug.org/texlive/acquire.html)
[![Github Stars](https://img.shields.io/github/stars/sumandoc/TeXLive.svg?style=social&label=Github)](https://github.com/sumandoc/TeXLive)



Contains full **TeXLive-2017** with additional [python-pygments library](http://pygments.org/) for source code highlighting via [minted package](https://www.ctan.org/pkg/minted).
Also contains **pandoc** and **[ImageMagick®](https://www.imagemagick.org/script/index.php)** for image manipulation to include in TeX files.


If it helped you, consider making a small donation.
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/sumandoc)

## How to get the image?

From the interactive docker shell, pull this image with:

`docker pull sumankhanal/texlive-2017`

## Why should you use it?

If you work with Latex documents, this is useful to compile your document **independent of OS and without the need to install anything**.  It contains all the compilers: **pdflatex**, **xelatex** and **lualatex**.

## How to run this image/ How do you use it ?

After you are done with the pull, mount the directory present in your host operating system containing .tex files 
into docker image like this:

`docker run -it -v /c/Users/username/Folder_with_tex:/home -w /home sumankhanal/texlive-2017 /bin/bash`


You will now have access to the terminal. Your working dir will be `/home` where you will see the .tex files.

Now run:
`pdflatex -shell-escape -synctex=1 -interaction=nonstopmode yourtex.tex` and see your **yourtex.tex** file getting compiled.



**The size of image is 3 GB** which is quite big but
its ***cool*** with all stuff that's available in **CTAN**. :)

