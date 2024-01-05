FROM nodered/node-red

WORKDIR /usr/src/node-red

RUN npm install node-red-contrib-actionflows \
    node-red-contrib-chronos \
    node-red-contrib-ecovacs-deebot \
    node-red-contrib-home-assistant-websocket \
    node-red-contrib-loop \
    node-red-contrib-simple-crypto \
    node-red-contrib-sonos-plus \
    node-red-contrib-tado-client \
    node-red-contrib-zigbee2mqtt \
    node-red-node-mysql \
    @flowfuse/node-red-dashboard

COPY --chown=node-red:node-red settings.js /usr/src/node-red/settings.js
COPY --chown=node-red:root --chmod=755 entrypoint.sh /usr/src/node-red/entrypoint.sh
