FROM debian:bullseye AS builder
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 
RUN apt-get update \
  && apt-get install -y gnupg curl libgetopt-long-descriptive-perl make \
  libdigest-perl-md5-perl wget python3-pygments fontconfig  && rm -rf /var/lib/apt/lists/*

#multistage build  

FROM builder AS build1
ENV PANDOC=2.14.2
    
ENV PATH=/usr/local/texlive/2020/bin/x86_64-linux:$PATH
ARG scheme=scheme-full

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"



WORKDIR /
RUN curl -so ${TEXLIVE}.zip http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2020/tlnet-final/install-tl.zip \
  && unzip ${TEXLIVE}.zip \
  && mv install-tl-20* install-tl \
  && cd install-tl \
  && echo "selected_scheme ${scheme}" > profile \
  && echo "tlpdbopt_install_docfiles 0" >> profile \
  && echo "tlpdbopt_install_srcfiles 0" >> profile \
  && ./install-tl -repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2020/tlnet-final/ -profile profile \
  && cd .. \
  && rm -rf install-tl ${TEXLIVE}.zip \
  && wget https://github.com/jgm/pandoc/releases/download/${PANDOC}/pandoc-${PANDOC}-1-amd64.deb \
  && dpkg -i pandoc-${PANDOC}-1-amd64.deb && rm pandoc-${PANDOC}-1-amd64.deb
  
WORKDIR /home
CMD ["tlmgr", "--version"]
