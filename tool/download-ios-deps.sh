#!/bin/bash

if [ "$#" -ne 1 ] || [[ "$1" != http* ]]; then
    echo "Usage: $0 URL -- download and extract an graft-core ios-deps package (typically from https://graft.rocks)" >&2
    exit 1
fi

if ! [ -d graft_coin/ios/External/ios/graft ]; then
    echo "This script needs to be invoked from the graft-wallet top-level project directory" >&2
    exit 1
fi

curl -sS "$1" | tar --strip-components=1 -C graft_coin/ios/External/ios/graft/ -xJv
