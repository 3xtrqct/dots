#!/bin/sh

read used total <<< $(free -m | awk '/^Mem:/ {print $3, $2}')

gb=$(awk "BEGIN {printf \"%.1f\", $used / 1024}")

echo "{\"text\":\"${gb}G\",\"tooltip\":\"${used} MB / ${total} MB\"}"
