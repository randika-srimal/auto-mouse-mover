#! /bin/bash
sudo apt-get --assume-yes install xdotool;
clear;
echo "Press 'Q' key to quit from auto mouse move";
while true; do
xdotool mousemove 500 500;
xdotool mousemove 700 500;
sleep 298;
xdotool mousemove 700 500;
xdotool mousemove 500 500;
read -t 1 -n 1 key
    if [[ $key = q ]]
    then
        break
    fi
done