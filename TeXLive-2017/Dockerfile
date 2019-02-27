FROM debian:sid
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    PANDOC=2.6

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"


RUN apt-get update \
  && apt-get install -y gnupg wget curl libgetopt-long-descriptive-perl \
  libdigest-perl-md5-perl python-pygments fontconfig && rm -rf /var/lib/apt/lists/*
  
WORKDIR /
RUN curl -sL curl -sL http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2017/install-tl-unx.tar.gz | tar zxf - \
  && mv install-tl-20* install-tl \
  && cd install-tl \
  && echo "selected_scheme scheme-full" > profile \
  && ./install-tl -repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2017/tlnet-final/ -profile profile \
  && cd .. \
  && rm -rf install-tl \
  && wget https://github.com/jgm/pandoc/releases/download/${PANDOC}/pandoc-${PANDOC}-1-amd64.deb \
  && dpkg -i pandoc-${PANDOC}-1-amd64.deb && rm pandoc-${PANDOC}-1-amd64.deb


ENV PATH /usr/local/texlive/2017/bin/x86_64-linux:$PATH
WORKDIR /home

CMD ["tlmgr", "--version"]
