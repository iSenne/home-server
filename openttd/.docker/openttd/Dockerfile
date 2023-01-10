FROM bateau/openttd:12.2

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nano \
    && apt-get clean

COPY --chown=openttd:openttd .docker/openttd/openttd.cfg /home/openttd/.openttd/openttd.cfg
COPY --chown=openttd:openttd .docker/openttd/private.cfg /home/openttd/.openttd/private.cfg
COPY --chown=openttd:openttd .docker/openttd/secrets.cfg /home/openttd/.openttd/secrets.cfg

WORKDIR /home/openttd
