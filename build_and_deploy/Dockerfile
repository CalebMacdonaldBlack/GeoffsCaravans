FROM ubuntu

RUN sudo apt-get install ruby-full
RUN sudo gem install jekyll bundler
ENV TERRAFORM_VERSION=0.10.0
RUN apk add --update git bash openssh
ENV TF_DEV=true
ENV TF_RELEASE=true
WORKDIR $GOPATH/src/github.com/hashicorp/terraform
RUN git clone https://github.com/hashicorp/terraform.git ./ && \
    git checkout v${TERRAFORM_VERSION} && \
    /bin/bash scripts/build.sh
WORKDIR $GOPATH
