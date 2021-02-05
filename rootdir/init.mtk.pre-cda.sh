#!/system/bin/sh

echo "---Start init.mtk.pre-cda.sh---"

#remove CDAStatus
/system/bin/rm "/hidden/data/CDA/CDAStatus"

#Run initCDA
#/system/bin/InitCDA -initMultiCDA
  /system/bin/InitCDA -initOneImage
  /system/bin/InitCDA -rebuildBuildProp

echo "---Start ConfigFIH---"
## add for config fih
  /system/bin/ConfigFIH
echo "---End ConfigFIH---"

echo "---end init.mtk.pre-cda.sh---"
