FROM icr.io/appcafe/open-liberty:kernel-slim-java21-openj9-ubi-minimal

ARG VERSION=1.0
ARG REVISION=SNAPSHOT

ENV VERBOSE=true
COPY --chown=1001:0 src/main/liberty/config/ /config/
RUN features.sh
COPY --chown=1001:0 target/*.war /config/apps/
RUN configure.sh

