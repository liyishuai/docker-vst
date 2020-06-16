FROM coqorg/coq:8.10
ENV OPAMYES true
ENV VST_VERSION expert-external
RUN . ~/.profile \
 && git clone -b $VST_VERSION --recursive https://github.com/PrincetonUniversity/VST.git vst \
 && opam install coq-mathcomp-ssreflect \
 && make -C vst -j`nproc` msl sepcomp veric floyd progs/dry_mem_lemmas.vo progs/ghosts.vo
