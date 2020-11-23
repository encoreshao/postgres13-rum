# PostgreSQL 13 Docker Image

Build PostgreSQL-13 image and add RUM extension

```bash
❯ docker pull encoreshao/postgres13-rum
```

### Build and test your image

```bash
❯ docker build --rm=true -t postgres13-rum .
```

#### View all images

```bash
❯ docker images
REPOSITORY               TAG                 IMAGE ID            CREATED             SIZE
postgres13-rum           latest              b0f07c82b633        47 hours ago        370MB
```

#### Removes all images that match the specified ID 
```bash
❯ docker rmi -f b0f07c82b633
Untagged: postgres13-rum:latest
Deleted: sha256:b0f07c82b633470dc22c13ce66e45e5c3d7e49bf8181ad32c1c5f89c8ec04d84
```

### Use the image to create a new container

```bash
❯ docker run -it -p 5433:5432 -e POSTGRES_PASSWORD=123456 postgres13-rum
```

#### View all containers

```bash
❯ docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
1df18a504ddc        postgres13-rum      "docker-entrypoint.s…"   2 minutes ago       Up 2 minutes        0.0.0.0:5433->5432/tcp   gracious_grothendieck
```

### Testing

```bash
❯ psql -h localhost -p 5433 -U postgres
Password for user postgres:
psql (13.1)
Type "help" for help.

postgres=# create extension rum;
CREATE EXTENSION
postgres=#
```

### Start a container

```bash
> docker start -i 1df18a504ddc
```