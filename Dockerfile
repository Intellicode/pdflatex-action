FROM debian:bullseye-slim

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    texlive-base \
    texlive-binaries \
    texlive-fonts-recommended \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash pdflatex
COPY ./entrypoint.sh /home/pdflatex/entrypoint.sh
USER pdflatex
ENTRYPOINT ["/home/pdflatex/entrypoint.sh"]