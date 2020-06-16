FROM coqorg/coq
ENV OPAMYES true
ENV VST_VERSION master
RUN . ~/.profile \
 && opam install coq-flocq \
 && git clone -b $VST_VERSION --recursive https://github.com/PrincetonUniversity/VST.git vst \
 && make -C vst -j`nproc` IGNORECOQVERSION=true
