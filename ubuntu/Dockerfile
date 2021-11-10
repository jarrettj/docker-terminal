FROM ubuntu:impish
FROM node:14.18.1
#FROM amazon/aws-cli

COPY install-packages.sh .
RUN chmod +x install-packages.sh
RUN ./install-packages.sh
