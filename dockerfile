#syntax=docker/dockerfile:1

FROM ubuntu:24.04

WORKDIR /src/app/

RUN apt update && apt upgrade -y
RUN apt install opam -y

RUN opam init --disable-sandboxing -y
RUN opam install dune -y

COPY ./dune-project /src/app/dune-project
COPY ./matrix_multiplication.opam /src/app/matrix_multiplication.opam
COPY ./lib/ /src/app/lib/
COPY ./bin/ /src/app/bin/

RUN opam install . --deps-only -y

RUN opam exec -- dune build

CMD /src/app/_build/default/bin/main.exe
