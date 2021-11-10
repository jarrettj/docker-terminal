FROM ubuntu:impish

COPY install-packages.sh .
RUN chmod +x install-packages.sh
RUN ./install-packages.sh

ARG APP_DIR="/app"
WORKDIR $APP_DIR
ENTRYPOINT ["git", "secrets"]
