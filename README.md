# Latest Netdiscover Binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/netdiscover)](https://artifacthub.io/packages/search?repo=netdiscover)

This image contains the current netdiscover compiled with glibc. 

> ⚠️  Does not work on any Distro that does not ship with glibc. E.g
Alpine Linux ships with musl.

## Installation

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/netdiscover:latest /bin/netdiscover /where/You/Want
```

### Local install

1. Build image: 

```
docker build -t ubuntu-netdiscover -f- . <<EOF
FROM ubuntu:latest
COPY --from=ghcr.io/simonwoodtli/netdiscover:latest /bin/netdiscover /bin/netdiscover
EOF
```

2. Copy netdiscover to your host: 

```
docker run --rm -v $HOME/.local/bin:/mnt alpine-netdiscover sh -c "install /bin/netdiscover /mnt"
```

Related:

* https://github.com/netdiscover-scanner/netdiscover 
