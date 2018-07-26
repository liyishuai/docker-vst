FROM ysli/vst
ENV OPAMYES true
RUN opam install coq-quickchick
