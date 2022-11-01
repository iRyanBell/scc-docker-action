# Use Alpine image
FROM alpine:3.16.2

# Install wget + bash
RUN apk update
RUN apk add wget
RUN apk add --no-cache --upgrade bash

# Download scc
RUN wget https://github.com/boyter/scc/releases/download/v3.1.0/scc_3.1.0_Linux_x86_64.tar.gz
RUN tar -xf ./scc_3.1.0_Linux_x86_64.tar.gz -C /
RUN chmod +x /scc

# Copy shell script
COPY entrypoint.sh /entrypoint.sh

# Run script
ENTRYPOINT ["/entrypoint.sh"]
