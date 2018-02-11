FROM adnrv/texlive:adntools
MAINTAINER adin

RUN (mkdir -p `kpsewhich -var-value TEXMFHOME`/tex/latex || true) &&\
    # Get the adn-latex repos    
    git clone https://gitlab.com/adn-latex/adnamc.git `kpsewhich -var-value TEXMFHOME`/tex/latex/adnamc &&\
    git clone https://gitlab.com/adn-latex/adnsurvey.git `kpsewhich -var-value TEXMFHOME`/tex/latex/adnsurvey &&\
    
    # Install auto-multiple-choice
    apt-get update -qq &&\
    apt-get install --no-install-recommends auto-multiple-choice -y &&\

    # Link it in texmf
    (mkdir -p `kpsewhich -var-value TEXMFHOME`/tex/latex/AMC || true) &&\
    ln -s /usr/share/texmf/tex/latex/AMC/automultiplechoice.sty `kpsewhich -var-value TEXMFHOME`/tex/latex/AMC &&\

    # Hash to be sure to find our stuff
    texhash &&\

    # Clean
    apt-get autoclean &&\
    apt-get autoremove &&\
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*
