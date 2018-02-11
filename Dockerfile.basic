FROM adnrv/texlive:minimal
MAINTAINER adin

RUN   tlmgr update --self &&\
      tlmgr install \
      # Collections of basic stuff
      collection-basic \
      collection-fontsrecommended \
      collection-latex \
      collection-latexrecommended \
      collection-latexextra \
      collection-langkorean \
      collection-langspanish \
      collection-langportuguese \
      collection-mathscience \

      # Other packages
      biber \
      biblatex \
      biblatex-ieee \
      fontawesome \
      genmisc \
      IEEEtran \
      latexmk \
      logreq \
      siunitx \
      tracklang \
      xcite
