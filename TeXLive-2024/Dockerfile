FROM debian:bookworm AS builder

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    PANDOC=3.1.13

RUN apt-get update \
  && apt-get install -y gnupg libgetopt-long-descriptive-perl \
  unzip make libdigest-perl-md5-perl wget python3-pygments fontconfig \
  && rm -rf /var/lib/apt/lists/* \
  && wget https://github.com/jgm/pandoc/releases/download/${PANDOC}/pandoc-${PANDOC}-1-amd64.deb \
  && dpkg -i pandoc-${PANDOC}-1-amd64.deb && rm pandoc-${PANDOC}-1-amd64.deb
  

FROM builder AS build1
    
ENV PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH
ARG scheme=scheme-full

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"


WORKDIR /
RUN wget --no-check-certificate -q -O- http://ctan.math.washington.edu/tex-archive/systems/texlive/tlnet/install-tl-unx.tar.gz | tar -xz \
  && mv install-tl-20* install-tl \
  && cd install-tl \
  && echo "selected_scheme ${scheme}" > profile \
  && echo "tlpdbopt_install_docfiles 0" >> profile \
  && echo "tlpdbopt_install_srcfiles 0" >> profile \
  && ./install-tl -repository http://ctan.math.washington.edu/tex-archive/systems/texlive/tlnet/ -profile profile \
  && cd .. \
  && rm -rf install-tl
  
WORKDIR /home
CMD ["tlmgr", "--version"]
