@echo off

adb wait-for-device
adb push update-binary /data/local/tmp
adb push download.json /data/local/tmp
adb push magisk.zip /data/local/tmp
adb push go.sh /data/local/tmp
adb shell sh /data/local/tmp/go.sh
