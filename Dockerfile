FROM alpine
MAINTAINER ksss <co000ri@gmail.com>

RUN apk update && apk upgrade && apk add --no-cache git ruby gcc bison musl-dev valgrind gdb
RUN git clone --depth 1 https://github.com/mruby/mruby.git && cd mruby && ruby minirake test
