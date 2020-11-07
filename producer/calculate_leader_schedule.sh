cardano-cli shelley query ledger-state --mainnet --out-file /home/cardano-block/scripts/ledger/ledger.json

sigmaValue=$(python3 /home/cardano-block/pooltool.io/leaderLogs/getSigma.py --ledger /home/cardano-block/scripts/ledger/ledger.json  --pool-id $(cat ${NODE_HOME}/stakepoolid.txt) | tail -n 1 | awk '{ print $2 }')

echo ${sigmaValue}

python3 /home/cardano-block/pooltool.io/leaderLogs/leaderLogs.py --pool-id $(cat ${NODE_HOME}/stakepoolid.txt) --sigma ${sigmaValue} --vrf-skey ${NODE_HOME}/vrf.skey
