#!/usr/bin/env bash
curl --json @web3_clientVersion http://127.0.0.1:8545
if [ "$?" -eq "0" ]
then
    echo ""
    echo "Success:"
    echo "Anvil Online"
    exit 0
else
    echo ""
    echo "Error:"
    echo "Anvil Not Online"
    exit 1
fi
