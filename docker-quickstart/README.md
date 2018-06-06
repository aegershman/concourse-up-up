# docker-quickstart

[Just get Concourse up on your local machine with Docker](https://github.com/concourse/concourse-docker)

Specify the version you want by appending the Concourse image with a Dockerhub tag:

```yaml
# 3.13.0
concourse:
    image: concourse/concourse:3.13.0
    command: quickstart
    ...
```

Leave it off if you want latest:

 ```yaml
# latest
concourse:
    image: concourse/concourse
    command: quickstart
    ...
```
