#!/bin/bash
# CRON job setup script
crontab -l > mycron
echo "0 * * * * php $(pwd)/cron.php" >> mycron
crontab mycron
rm mycron