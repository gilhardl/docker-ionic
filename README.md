# docker-ionic

Docker image for Ionic development

----------------------------------------

**Ionic CLI :** 4.11.0

**Node.js :** v10.15.3

**NPM :** v6.4.1

**Yarn :** 1.13.0

**OS :** Linux alpine x64

**Package manager:** yarn

----------------------------------------

[![Docker Pulls](https://img.shields.io/docker/pulls/gilhardl/ionic.svg)](https://hub.docker.com/r/gilhardl/ionic/)

----------------------------------------


# Usage

```
docker run -it --name IONIC -v /c/Users/LG/Work:/app -p 8100:8100 -p 49153:49153 gilhardl/ionic sh
```

Then you should be able to use Ionic CLI from your container shell

### Serving your app

In order to get livereload working, you'll need to define the file watching poll time to 1ms

```
ionic s -- --poll 1
```

# Licence

MIT