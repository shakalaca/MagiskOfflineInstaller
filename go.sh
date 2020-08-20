#!/bin/sh

cd /data/local/tmp
rm -f m.bin
sh update-binary -x

###
echo "[*] Set custom channel to : http://127.0.0.1:8080/"
cat download.json | ./busybox nc -l -p 8080

###
echo "[*] Press 'Update' to install magisk"
echo "HTTP/1.1 200 OK" >> m.bin
echo "Content-Type: application/zip" >> m.bin
echo >> m.bin
cat magisk.zip >> m.bin
cat m.bin | ./busybox nc -l -p 8080

###
echo "[*] Done :)"
