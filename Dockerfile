# Use Alpine image
FROM alpine:3.11.3

# Install wget + bash
RUN apk update
RUN apk add wget
RUN apk add --no-cache --upgrade bash

# Download scc
RUN wget https://github.com/boyter/scc/releases/download/v2.13.0/scc-2.13.0-x86_64-unknown-linux.zip
RUN unzip ./scc-2.13.0-x86_64-unknown-linux.zip -d /
RUN chmod +x /scc

# Copy shell script
COPY entrypoint.sh /entrypoint.sh

# Run script
ENTRYPOINT ["/entrypoint.sh"]