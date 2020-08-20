Magisk Offline Installer
========================

Prerequisites
-------------
1. Your device must installed MagiskManager (any version)
2. You must clear cache of MagiskManager before running this script
3. You have to enable `USB debugging` on your device
4. You have [Android platform](https://developer.android.com/studio/releases/platform-tools) tools installed (can execute `adb` on your computer)

How to
------
1. Grab specific version of Magisk archive, rename to `magisk.zip` and put in this directory
2. Connect your device with USB cable
3. Open MagiskManager on your device
   - go settings and change `Update Channel` to custom
   - set Custom Channel to `http://127.0.0.1:8080/`
   - BEFORE GOING BACK TO MAIN SCREEN, execute `install.bat` or `install.sh` on your computer, wait until you see `[*] Set custom channel to : http://127.0.0.1:8080/`
   - back to main screen and you should notice latest version of Magisk becomes 99999
4. Click Update and patch boot.img or install magisk
5. When finished
   - adb pull /sdcard/Download/magisk_patched.img
   - fastboot flash boot magisk_patched.img
   or just reboot to apply when your device is already rooted.
