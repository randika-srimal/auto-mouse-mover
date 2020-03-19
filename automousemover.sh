#! /bin/bash
sudo apt-get --assume-yes install xdotool;
clear;
Windows=()
WindowClassesArray=()
Windows=$(wmctrl -lx|awk '{print $3}')
for Window in $Windows ; do WindowClassesArray+=($Window) ; done
echo "Press any key to quit from auto mouse move";

# while [ true ] ; do
# read -t 3 -n 1
# if [ $? = 0 ] ; then
# exit ;
# else
# xdotool mousemove 500 500;
# xdotool mousemove 700 500;
# sleep 5; #Mouse pointer moving time interval
# xdotool mousemove 700 500;
# xdotool mousemove 500 500;
# fi
# done

while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
exit ;
else
rand=$[$RANDOM % ${#WindowClassesArray[@]}]
wmctrl -x -a ${WindowClassesArray[$rand]}
sleep 10; #Window changing time interval
rand=$[$RANDOM % ${#WindowClassesArray[@]}]
wmctrl -x -a ${WindowClassesArray[$rand]}
fi
done