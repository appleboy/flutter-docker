FROM ubuntu:16.04

LABEL maintainer="Bo-Yi Wu <appleboy.tw@gmail.com>"

ENV FLUTTER_HOME ${HOME}/flutter
ENV FLUTTER_VERSION 1.5.4-hotfix.2-stable

RUN apt-get update \
  && apt-get install -y libglu1-mesa git curl unzip wget xz-utils lib32stdc++6 \
  && apt-get clean

RUN wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v${FLUTTER_VERSION}.tar.xz
RUN cd ${HOME} & tar xf /flutter_linux_v${FLUTTER_VERSION}.tar.xz

ENV PATH ${PATH}:${FLUTTER_HOME}/bin

WORKDIR /
