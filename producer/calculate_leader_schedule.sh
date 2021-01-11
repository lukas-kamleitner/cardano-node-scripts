cardano-cli query ledger-state --mainnet --allegra-era  --out-file /opt/cardano/ledger/ledger.json

sigmaValue=$(python3 /home/core/git/pooltool.io/leaderLogs/getSigma.py --ledger /opt/cardano/ledger/ledger.json  --pool-id $(cat /opt/cardano/cnode/priv/pool/KALU/stakepoolid.txt) | tail -n 1 | awk '{ print $2 }')
echo ${sigmaValue}
python3 /home/core/git/pooltool.io/leaderLogs/leaderLogs.py --pool-id $(cat /opt/cardano/cnode/priv/pool/KALU/stakepoolid.txt) --sigma ${sigmaValue} --vrf-skey /opt/cardano/cnode/priv/pool/KALU/vrf.skey --tz Europe/Vienna
