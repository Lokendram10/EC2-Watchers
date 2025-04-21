#!/bin/bash

# Get RAM usage in percentage
RAM_USAGE=$(free | awk '/Mem/ { printf("%.2f"), $3/$2 * 100.0 }')

# Get CPU usage in percentage (using mpstat for more accurate results)
CPU_USAGE=$(mpstat 1 1 | grep "Average" | awk '{ print 100 - $12 }')

# Send a Telegram alert with RAM and CPU usage
curl -s -X POST https://api.telegram.org/bot7805971663:AAF1N942lWTWZ7qB6uJcw94-uX4k4wdNXIA/sendMessage \
    -d chat_id=1405067651 \
    -d text="Current RAM Usage: ${RAM_USAGE}% | Current CPU Usage: ${CPU_USAGE}%"