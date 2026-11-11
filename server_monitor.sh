#!/bin/bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$SCRIPT_DIR/logs"

exec > >(tee -a "$SCRIPT_DIR/logs/monitor.log") 2>&1

echo ""
echo "Monitoring Started At: $(date)"
echo "================================"

echo "================================"
echo "       LINUX SERVER MONITOR"
echo "================================"

echo ""
echo "Hostname:"
hostname

echo ""
echo "Date and Time:"
date

echo ""
echo "CPU Information:"
echo "CPU Cores:"
nproc

echo ""
echo "CPU Usage:"

CPU_USAGE=$(top -bn1 | awk -F',' '/Cpu\(s\)/ {
    for (i=1; i<=NF; i++) {
        if ($i ~ /id/) {
            gsub(/[^0-9.]/, "", $i)
            printf "%.0f", 100 - $i
        }
    }
}')

echo "CPU Usage Percentage: ${CPU_USAGE}%"

if [ "$CPU_USAGE" -ge 80 ]; then
    echo "WARNING: High CPU usage!"
else
    echo "OK: CPU usage is normal."
fi

echo ""
echo "Memory Usage:"
free -h

MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

echo "Memory Usage Percentage: ${MEMORY_USAGE}%"

if [ "$MEMORY_USAGE" -ge 80 ]; then
    echo "WARNING: High memory usage!"
else
    echo "OK: Memory usage is normal."
fi

echo ""
echo "Disk Usage:"
df -h /

DISK_USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disk Usage Percentage: ${DISK_USAGE}%"

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "WARNING: High disk usage!"
else
    echo "OK: Disk usage is normal."
fi

echo ""
echo "Top 5 CPU-Consuming Processes:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

echo ""
echo "================================"
echo "       MONITORING COMPLETE"
echo "================================"
