#!/bin/bash
DIRECTORY=/opt/cardano/cnode
PORT=6000
HOSTADDR=0.0.0.0
TOPOLOGY=${DIRECTORY}/files/topology.json
DB_PATH=${DIRECTORY}/db
SOCKET_PATH=${DIRECTORY}/sockets
CONFIG=${DIRECTORY}/files/config.json
cardano-node run --topology ${TOPOLOGY} --database-path ${DB_PATH} --socket-path ${SOCKET_PATH} --host-addr ${HOSTADDR} --port ${PORT} --config ${CONFIG}
