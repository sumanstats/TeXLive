FROM debian:sid

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8
ARG AD=scheme-minimal

ENV PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"


RUN apt-get update \
  && apt-get install -y gnupg curl libgetopt-long-descriptive-perl make \
  libdigest-perl-md5-perl wget python3-pygments fontconfig  && rm -rf /var/lib/apt/lists/*
  
WORKDIR /
RUN curl -sL http://mirror.utexas.edu/ctan/systems/texlive/tlnet/install-tl-unx.tar.gz | tar zxf - \
  && mv install-tl-20* install-tl \
  && cd install-tl \
  && echo "selected_scheme ${AD}" > profile \
  && echo "tlpdbopt_install_docfiles 0" >> profile \
  && echo "tlpdbopt_install_srcfiles 0" >> profile \
  && ./install-tl -repository http://mirror.utexas.edu/ctan/systems/texlive/tlnet -profile profile \
  && cd .. \
  && rm -rf install-tl 
  
#RUN tlmgr install beamer minted
#RUN tlmgr install collection-latexrecommended
WORKDIR /home
CMD ["tlmgr", "--version"]
