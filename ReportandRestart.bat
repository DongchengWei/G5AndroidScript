adb shell su 0 svbugreport 1
adb shell cp /sdcard/app_* /data/logs
adb shell cp /sdcard/anr* /data/logs
mkdir %BUILD_NUMBER%
adb pull /data/logs/ %WORKSPACE%\%BUILD_NUMBER%
copy %WORKSPACE%\monkey.txt %WORKSPACE%\%BUILD_NUMBER%