FROM gilhardl/angular

LABEL author="Lucas GILHARD <l.gilhard@gmail.com>"
LABEL description="Docker image for Ionic development"

WORKDIR /usr/src/app/

USER root

# IONIC
RUN npm install -g ionic

# EXPOSE PORTS
EXPOSE 8100 49153

CMD ["bash"]