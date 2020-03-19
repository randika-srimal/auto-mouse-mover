#! /bin/bash
sudo apt-get --assume-yes install xdotool;
clear;
wmctrl -lx|awk '{print $3}'
echo "Press any key to quit from auto mouse move";

while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
exit ;
else
xdotool mousemove 500 500;
xdotool mousemove 700 500;
sleep 5;
xdotool mousemove 700 500;
xdotool mousemove 500 500;
fi
done