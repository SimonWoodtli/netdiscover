# Latest Netdiscover binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/netdiscover)](https://artifacthub.io/packages/search?repo=netdiscover)

This image contains the current netdiscover.

## Installation

* For CI/Image install: `COPY --from=ghcr.io/simonwoodtli/netdiscover:latest /bin/netdiscover /where/You/Want`
* For local install:
1. Build image: 

```
docker build -t alpine-netdiscover -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/netdiscover:latest /bin/netdiscover
/bin/netdiscover
EOF
```

2. Copy netdiscover to host: `docker run --rm -v $HOME/.local/bin:/mnt alpine-netdiscover sh -c "install
/bin/netdiscover /mnt"`
