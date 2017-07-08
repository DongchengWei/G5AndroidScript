java -jar %WORKSPACE%\Startadb.jar
ping 127.0.0.1 -n 10 -w 1000 > nul
adb root
ping 127.0.0.1 -n 5 -w 1000 > nul
adb shell reboot
java -jar %WORKSPACE%\RebootWait.jar
adb root
ping 127.0.0.1 -n 5 -w 1000 > nul
ping 127.0.0.1 -n 10 -w 1000 > nul
adb shell rm -rf /sdcard/app_*
adb shell rm -rf /sdcard/anr*
adb shell rm -rf /data/logs/*