# EC2 Watchers

This script monitors the CPU and RAM usage on an EC2 instance and sends usage alerts to a Telegram chat every 1 minute, showing the actual percentage of usage.

# Requirements

- AWS EC2 instance (Ubuntu)
- Telegram account
- A created Telegram bot (search in telegram[@BotFather])
- Your Telegram Chat ID  (search in telegram[@userinfobot])
- Basic Linux terminal knowledge


# How to Create a Telegram Bot

1. Open [@BotFather]
2. Run `/newbot`
3. Set a name and username for your bot
4. Copy the generated token
5. Start your bot by sending `/start` in your bot chat

# How to Get Your Telegram Chat ID

1. Open [@userinfobot]
2. Start the bot and it will show your `chat id`

# Setup Instructions

# In EC2 instance (SSH into local machine or "Connect" in AWS)

# 1. Clone the Repository

```bash
git clone https://github.com/Lokendram10/EC2-Watchers.git
cd ec2-monitoring

# give permission to execute


```bash
chmod +x monitoring.sh
```

# 3. Add Your Telegram Bot Credentials

Edit the script file and replace:

- `Your Bot Token` with your bot token (from BotFather)
- `Your Chat ID` with your chat ID (from userinfobot)

 open `monitoring.sh` with `vim` or `nano`:

```bash
vim monitoring.sh
```

Update these two lines:

```bash
BOT_TOKEN="your bot token here"
CHAT_ID="your chat id here"
```

# 4. Setup Cron Job to Run Every Minute

```bash
crontab -e
```

Choose an editor, then add this line.

```bash
* * * * * /bin/bash /home/ubuntu/EC2-Watchers/monitoring.sh
```

> Adjust the path `/home/ubuntu/EC2-Watchers/monitoring.sh` to match where your script is located.

```bash
 realpath monitoring.sh 
```
> Find exact location of monitoring.sh


---

© 2025 Lokendra Dhote  
[LinkedIn](https://www.linkedin.com/in/lokendra-dhote-b47152257) • [GitHub](https://github.com/Lokendram10)
