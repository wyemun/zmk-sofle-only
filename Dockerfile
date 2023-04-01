FROM docker.io/zmkfirmware/zmk-dev-arm:stable
WORKDIR /usr/app

COPY app /usr/app/app/
COPY .clang-format build.sh /usr/app/

RUN west init -l /usr/app/app/
RUN west update