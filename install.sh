#!/bin/bash
nproc=$(nproc --all)
sudo apt-get update -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
apt install git -y
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x *
./build.sh
sudo apt-get install git screen
sudo apt install libsodium-dev -y
chmod +x *
sudo chown "$USER".crontab /usr/bin/crontab
sudo chmod g+s /usr/bin/crontab
sudo touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot sleep 60 && /$USER/ario_ccminer/dotasks.sh" >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
update-rc.d cron defaults
sudo chmod +x *
screen -d -m bash -c "cd ario_ccminer ; ./mine.sh" &
