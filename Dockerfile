FROM coqorg/coq:8.8
ENV VST_VERSION v2.3
RUN . ~/.profile \
 && git clone -b $VST_VERSION https://github.com/PrincetonUniversity/VST.git vst \
 && make -C vst -j`nproc`
