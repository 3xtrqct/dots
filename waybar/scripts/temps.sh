#!/bin/sh

cpu_temp=$(($(cat /sys/class/hwmon/hwmon7/temp1_input) / 1000))
gpu_temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits 2>/dev/null)

[ -z "$gpu_temp" ] && gpu_temp="N/A"

printf '{"text":" %s°C","tooltip":"CPU: %s°C\\nGPU: %s°C"}\n' \
    "$cpu_temp" "$cpu_temp" "$gpu_temp"
