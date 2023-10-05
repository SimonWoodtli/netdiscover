# Latest Netdiscover Binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/netdiscover)](https://artifacthub.io/packages/search?repo=netdiscover)

This image contains the current netdiscover compiled with glibc.

> ⚠️  Does not work on any Distro that does not ship with glibc. E.g
Alpine Linux ships with musl.

## Installation

> ⚠ Checkout the required dependencies on maintainers repo [here] and install them.

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/netdiscover:latest /bin/netdiscover /where/You/Want
```

### Local install

1. Build image: 

```
podman build -t ubuntu-netdiscover -f- . <<EOF
FROM ubuntu:latest
COPY --from=ghcr.io/simonwoodtli/netdiscover:latest /bin/netdiscover /bin/netdiscover
EOF
```

2. Run container in detached mode:

```
podman run -dt localhost/ubuntu-netdiscover
```

3. Get Container ID:

```
podman ps
```

4. Copy netdiscover to your host:

```
podman cp <containerId>:/bin/netdiscover /where/You/Want
```

Related:

* https://github.com/netdiscover-scanner/netdiscover 

[here]: <https://github.com/netdiscover-scanner/netdiscover>
