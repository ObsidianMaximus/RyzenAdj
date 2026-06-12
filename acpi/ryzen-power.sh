#!/bin/bash

if grep -q 1 /sys/class/power_supply/AC/online; then
    /usr/local/bin/ryzenadj --fast-limit=18000 --slow-limit=18000 --tctl-temp=83
else
    /usr/local/bin/ryzenadj --fast-limit=10000 --slow-limit=10000 --tctl-temp=83
fi
