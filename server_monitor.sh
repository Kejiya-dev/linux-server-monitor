#!/bin/bash

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
top -bn1 | grep "Cpu(s)"

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
echo "System Uptime:"
uptime

echo ""
echo "================================"
echo "       MONITORING COMPLETE"
echo "================================"
