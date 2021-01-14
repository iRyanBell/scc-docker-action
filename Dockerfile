# Use Alpine image
FROM alpine:3.11.3 as base

# Install wget + bash
RUN apk update
RUN apk add wget
RUN apk add --no-cache --upgrade bash

# Download scc
RUN wget https://github.com/boyter/scc/releases/download/v2.12.0/scc-2.12.0-i386-unknown-linux.zip
RUN unzip ./scc-2.12.0-i386-unknown-linux.zip -d /
RUN chmod +x /scc

FROM alpine:3.11.3
# Copy shell script
COPY --from=base /scc /scc
COPY entrypoint.sh /

# Run script
ENTRYPOINT ["/entrypoint.sh"]
