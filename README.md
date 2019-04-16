# docker-ionic

Docker image for Ionic development, based on [gilhardl/angular](https://github.com/gilhardl/docker-angular)

[![Docker Pulls](https://img.shields.io/docker/pulls/gilhardl/ionic.svg?style=flat-square&label=PULLS)](https://hub.docker.com/r/gilhardl/ionic/)

---

![OS](https://img.shields.io/static/v1.svg?style=flat-square&label=OS&message=Linux%20Alpine)

![IONIC CLI](https://img.shields.io/npm/v/ionic.svg?style=flat-square&label=IONIC%20CLI)
![ANGULAR CLI](https://img.shields.io/npm/v/@angular/cli.svg?style=flat-square&label=ANGULAR%20CLI)

![NODE](https://img.shields.io/npm/v/node/lts.svg?style=flat-square&label=NODE)
![NPM](https://img.shields.io/npm/v/npm/lts.svg?style=flat-square&label=NPM)
![YARN](https://img.shields.io/npm/v/yarn/latest.svg?style=flat-square&label=YARN)

![PACKAGE MANAGER](https://img.shields.io/static/v1.svg?style=flat-square&label=PACKAGE%20MANAGER&message=Yarn)

---

# Usage

## With docker

### Basic usage

Start CLI :
```
docker run -it --name ionic -v /path/to/your/project:/usr/src/app gilhardl/ionic
```
Start CLI and expose ports to be able to serve the app :
```
docker run -it --name ionic -v /path/to/your/project:/usr/src/app -p 8100:8199 -p 49153:49153 gilhardl/ionic
```

Serving your app :

In order to get livereload working, you'll need to define the file watching poll time to 1ms :
```
ionic serve -- --poll 1
```

### Walkthrough

1. Run Ionic container to use Ionic CLI
```
docker run -it --name ionic -v /path/to/your/project:/usr/src/app -p 8100:8100 -p 49153:49153 gilhardl/ionic
```

2. Use Ionic CLI

Create a project :
```
ionic start yourapp --type=angular

? Would you like to add Angular routing? Yes
? Which stylesheet format would you like to use? CSS

...
```

Serve your app :
```
ionic serve -- --poll 1
```

## With docker-compose

Create a file named `docker-compose.yml` at your project root like the following :
```
version: '3'

services:
  app:
    container_name: yourapp-app
    build: .
    image: gilhardl/ionic
    ports:
      - 8100:8100
      - 49153:49153
    volumes:
      - .:/usr/src/app/
    command: ionic serve -- --poll 1
    restart: always
```

Serve your app :
```
docker-compose up
```

# Licence

MIT
