# Config utilise

TODO
Regarder un convertiseur Un convertisseur DAC (Digital to Analog Converter)  pour meilleur son  

## Shairport Sync pour emuler le airplay 1 seulement
sudo apt-get update  
sudo apt-get upgrade -y  
sudo apt-get -y install build-essential git xmltoman autoconf automake libtool libdaemon-dev libpopt-dev libconfig-dev libasound2-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev  
git clone https://github.com/mikebrady/shairport-sync.git  
cd shairport-sync  
autoreconf -i -f  
./configure --sysconfdir=/etc --with-alsa --with-soxr --with-avahi --with-ssl=openssl --with-metadata --with-systemd  
make  
sudo make install  
sudo systemctl enable shairport-sync  
sudo systemctl start shairport-sync  

## Bluetooth
sudo apt-get install -y bluetooth bluez blueman vim  
sudo reboot  
bluetoothctl  
-- Dans l'interface faire :  
-- power on  
-- agent on  
-- default-agent  
-- scan on  
-- pair XX:XX:XX:XX:XX:XX  
-- connect XX:XX:XX:XX:XX:XX  

