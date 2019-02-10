FROM coqorg/coq:8.10
ENV OPAMYES true
ENV VST_VERSION v2.5
RUN . ~/.profile \
 && opam install coq-flocq \
 && git clone -b $VST_VERSION --recursive https://github.com/PrincetonUniversity/VST.git vst \
 && make -C vst -j`nproc` IGNORECOQVERSION=true
