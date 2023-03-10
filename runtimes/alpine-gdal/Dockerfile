FROM osgeo/gdal:alpine-small-latest
MAINTAINER iomonad "iomonad@riseup.net"

#######################################
#   Alpine Deps
#######################################

RUN apk add --update curl jq zsh grml-zsh-config py3-pip && \
    rm -rf /var/cache/apk/*

#######################################
#   Entrypoint
#######################################

ENTRYPOINT ["/bin/zsh"]
