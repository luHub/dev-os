#!/bin/bash

echo "***************** Extracting System information wih adb *****************"
adb version
echo
echo "*************************************************************************"
echo " Before Next Step, connect your Android device and turn on Developer Mode"
echo
echo 
mkdir info && cd info
echo "***************** Extracting *********************************************"
echo "***************** System Info ********************************************"
adb devices | tail -n2 | cut -f1  | xargs | xargs -I {} adb -s {}  shell getprop > system.info
echo "***************** Features Info ******************************************"
adb devices | tail -n2 | cut -f1  | xargs | xargs -I {} adb -s {}  shell pm list features > features.info
echo "***************** Modules ************************************************"
adb devices | tail -n2 | cut -f1  | xargs | xargs -I {} adb -s {}  shell ls sys/module/ > module.info

