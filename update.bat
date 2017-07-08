java -jar %WORKSPACE%\Startadb.jar
ping 127.0.0.1 -n 10 -w 1000 > nul
adb root
ping 127.0.0.1 -n 10 -w 1000 > nul
adb push %WORKSPACE%\AutoTest.jar /data/local/tmp
adb push D:\WorkingProject\G5AndroidUpdate\update.zip /storage/sdcard1
adb shell uiautomator runtest AutoTest.jar --nohup -c com.action.IntoFm
adb shell uiautomator runtest AutoTest.jar --nohup -c com.update.UpdateVersion
ping 127.0.0.1 -n 120 -w 1000 > nul
java -jar %WORKSPACE%\RebootWait.jar
ping 127.0.0.1 -n 10 -w 1000 > nul
java -jar %WORKSPACE%\Startadb.jar
ping 127.0.0.1 -n 10 -w 1000 > nul
adb root
ping 127.0.0.1 -n 10 -w 1000 > nul
adb push %WORKSPACE%\AutoTest.jar /data/local/tmp
adb shell uiautomator runtest AutoTest.jar --nohup -c com.action.IntoFm