FROM ysli/coq
WORKDIR ..
ENV VST_VERSION master
RUN . ~/.profile \
 && git clone -b $VST_VERSION https://github.com/PrincetonUniversity/VST.git vst \
 && make -C vst -j`nproc`
