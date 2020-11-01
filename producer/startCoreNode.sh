#!/bin/bash

DIRECTORY=/opt/cardano/cnode
PORT=6000
HOSTADDR=0.0.0.0
TOPOLOGY=${DIRECTORY}/files/topology.json
DB_PATH=${DIRECTORY}/db
SOCKET_PATH=${DIRECTORY}/sockets
CONFIG=${DIRECTORY}/files/config.json
KES=${DIRECTORY}/priv/kes.skey
VRF=${DIRECTORY}/priv/vrf.skey
CERT=${DIRECTORY}/priv/node.cert

cardano-node run --topology ${TOPOLOGY} --database-path ${DB_PATH} --socket-path ${SOCKET_PATH} --host-addr ${HOSTADDR} --port ${PORT} --config ${CONFIG} --shelley-kes-key ${KES} --shelley-vrf-key ${VRF} --shelley-operational-certificate ${CERT}
