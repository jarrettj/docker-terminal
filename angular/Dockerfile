FROM ubuntu:impish
FROM node:14.18.1

COPY install-packages.sh .
RUN chmod +x install-packages.sh
RUN ./install-packages.sh

#reduce logging, disable angular-cli analytics for ci environment
ENV NPM_CONFIG_LOGLEVEL=warn NG_CLI_ANALYTICS=false

ARG APP_DIR="/app"
WORKDIR $APP_DIR
ENTRYPOINT ["ng"]

EXPOSE 4200
