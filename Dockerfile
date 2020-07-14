FROM alpine:3.12 AS alpine_hugo

LABEL maintainer="Francois Gleyze <fgleyze@gmail.com>"

RUN apk update && \
    apk add --no-cache ca-certificates libc6-compat libstdc++ git

# Install HUGO
RUN apk add hugo

WORKDIR /src/site
EXPOSE 1313