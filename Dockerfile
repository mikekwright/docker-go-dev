FROM mikewright/docker-dev-base:latest

MAINTAINER Mike Wright <mkwright@gmail.com>

# Install dependencies
RUN apt-get update && \
    apt-get install -y build-essential libssl-dev && \
    /cleanup

# Install go
ENV GOLANG_VERSION 1.6
RUN curl https://storage.googleapis.com/golang/go$GOLANG_VERSION.linux-amd64.tar.gz -o /go.tar.gz && \
    tar -C /usr/local -xzf /go.tar.gz && \
    rm /go.tar.gz

ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH=/src

# Install vim plugins for erlang 
ADD vimrc.bundles.local /root/.vimrc.bundles.local
RUN /update-vim


