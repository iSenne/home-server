#!/bin/bash

trap stop SIGINT SIGTERM

function stop() {
        kill $CHILD_PID
        wait $CHILD_PID
}

/usr/local/bin/node $NODE_OPTIONS node_modules/node-red/red.js --settings "/usr/src/node-red/settings.js" --userDir /data $FLOWS "${@}" &

CHILD_PID="$!"

wait "${CHILD_PID}"
