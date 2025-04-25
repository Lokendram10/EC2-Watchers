#!/bin/bash

# Get RAM usage in percentage
RAM_USAGE=$(free | awk '/Mem/ { printf("%.2f"), $3/$2 * 100.0 }')

# Get CPU usage in percentage (using mpstat for more accurate results)
CPU_USAGE=$(mpstat 1 1 | grep "Average" | awk '{ print 100 - $12 }')

# Send a Telegram alert with RAM and CPU usage
curl -s -X POST https://api.telegram.org/botYourBotApi/sendMessage \
    -d chat_id=YourChatId \
    -d text="Current RAM Usage: ${RAM_USAGE}% | Current CPU Usage: ${CPU_USAGE}%"
