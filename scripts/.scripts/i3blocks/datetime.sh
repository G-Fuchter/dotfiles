#!/bin/bash

FORMAT="${BLOCK_INSTANCE:-%H:%M:%S %Y-%m-%d}"
#FORMAT="+%H:%M:%S %Y-%m-%d"
DATETIME=$(date "+${FORMAT}")

echo "${DATETIME}"
#echo "${DATETIME}"
#echo ""
