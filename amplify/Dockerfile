FROM ubuntu:impish
FROM node:14.18.1

COPY install-packages.sh .
RUN chmod +x install-packages.sh
RUN ./install-packages.sh

ARG APP_DIR="/app"
WORKDIR $APP_DIR
ENTRYPOINT ["amplify"]

#EXPOSE 4242
