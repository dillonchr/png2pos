#!/usr/bin/bash
echo 3
sleep 1
echo 2
sleep 1
echo 1
sleep 1
ffmpeg -f video4linux2 -video_size 640x480 -i /dev/video2 -vframes 1 ./snap.png
convert -resize 400 -brightness-contrast +30x+100 -monochrome ./snap.png ./doctored.png
cat - > /dev/usb/lp0 <<TYP



TYP
./print.py doctored.png > /dev/usb/lp0
echo "        I was at UGX4" > /dev/usb/lp0
cat - > /dev/usb/lp0 <<TYP



TYP
cat - > /dev/usb/lp0 <<TYP








TYP
rm ./doctored.png
rm ./snap.png
echo okay

