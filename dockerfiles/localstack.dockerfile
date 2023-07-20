FROM localstack/localstack:latest

RUN apt update && apt upgrade
RUN apt install wget
RUN apt install bash

ARG TERRAFORM_VERSION=${TERRAFORM_VERSION}

RUN wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/terraform && \
    terraform --version

RUN npm install -g serverless