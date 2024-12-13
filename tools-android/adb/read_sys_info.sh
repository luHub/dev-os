#!/bin/bash

echo "***************** Extracting System information wih adb *****************"
adb version
echo
echo "*************************************************************************"
echo " Before Next Step, connect your Android device and turn on Developer Mode"
echo
echo 
echo "***************** Extracting *********************************************"
echo "***************** System Info ********************************************"

adb devices | tail -n2 | cut -f1  | xargs | xargs -I {} adb -s {}  shell getprop > system.info
echo "***************** Features Info *********************************************"
adb devices | tail -n2 | cut -f1  | xargs | xargs -I {} adb -s {}  shell pm list features > features.info
echo "***************** Subsystems Info *********************************************"
adb devices | tail -n2 | cut -f1  | xargs | xargs -I {} adb -s {}  shell dumpsys media.camera > camera.info
adb devices | tail -n2 | cut -f1  | xargs | xargs -I {} adb -s {}  shell dumpsys media.camera > camera.info


