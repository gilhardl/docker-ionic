ARG ANGULAR_VERSION
FROM gilhardl/angular:${ANGULAR_VERSION:-latest}

ARG IONIC_VERSION=4.12.0

LABEL author="Lucas GILHARD <l.gilhard@gmail.com>"
LABEL version="4.12.0"
LABEL description="Docker image for Ionic development"

WORKDIR /usr/src/app/

USER root

# Ionic
RUN yarn global add ionic@$IONIC_VERSION

EXPOSE 8100 49153

CMD ["bash"]