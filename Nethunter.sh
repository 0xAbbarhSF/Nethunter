#!/data/data/com.termux/files/usr/bin/bash
clear
echo
DIRECTORY="/data/data/com.termux/files/usr/share/figlet"
if [ ! -d "$DIRECTORY" ]; then
apt update && apt install figlet
fi
figlet -f mini    .....KALI-NETHUNTER.....

echo " ------------ am Z3r0 (StarFord-abba )--"
echo
echo
echo "Select Your Phone Architecture"
echo "----------------------------------------------------"
echo "1)arm64/armv8 (64 bit)"
echo "2)arm/armhf/armv7 (32 bit)"
echo "3)find your architecture"
read aarch
case $aarch in
1)
echo
echo "prerequisites are installing.........."
echo
apt install proot wget tar -y
echo
echo "installed successfully.... :D"
echo
echo "Now Kali Nethunter Is Installing......."
echo
wget https://build.nethunter.com/kalifs/kalifs-latest/kalifs-arm64-full.tar.xz
echo
proot --link2symlink tar -xf kalifs-arm64-full.tar.xz
cd kali-arm64 && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r kali-arm64 -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > startkali.sh

chmod 777 startkali.sh && termux-fix-shebang startkali.sh
echo
echo "Now You Can Start Kali Linux (Nethunter) By :--> ./startkali.sh"
echo
;;
2)
echo "prerequisites are installing.........."
echo
apt install proot wget tar -y
echo
echo "installed successfully.... :D"
echo
echo "Now Kali Nethunter Is Installing......."
echo
wget https://build.nethunter.com/kalifs/kalifs-latest/kalifs-armhf-minimal.tar.xz
echo
proot --link2symlink tar -xf kalifs-armhf-minimal.tar.xz
cd kali-armhf && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r kali-armhf -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > startkali.sh

chmod 777 startkali.sh && termux-fix-shebang startkali.sh
echo
echo "Now You Can Start Kali Linux (Nethunter) By :--> ./startkali.sh" 
echo "Thanks to allah swt"
echo

;;
3)
echo
echo "Your phone architecture is :-"
dpkg --print-architecture
;;
esac
