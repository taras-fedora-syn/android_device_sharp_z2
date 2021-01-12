# Device Tree for Sharp Z2

## Spec Sheet

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Deca-core 2.1 GHz                 |
| Chipset                 | Mediatek MT6797 Helio X20         |
| GPU                     | Mali-T880 MP4                     |
| Memory                  | 4 GB                              |
| Shipped Android Version | 6.0                               |
| Storage                 | 32 GB                             |
| Battery                 | 3000 mAh (non-removable)          |
| Dimensions              | 153 x 76 x 8.4 mm                 |
| Display                 | 1920x1080 pixels, 5.5 (~401 PPI)  |
| Rear Camera             | 16 MP, LED flash                  |
| Front Camera            | 8 MP                              |
| Release Date            | 2016, October                     |

# Device Picture

![Sharp Z2](https://fdn2.gsmarena.com/vv/pics/sharp/sharp-z2-1.jpg "Sharp Z2")

# Build
   
| Step                | Task                                                                                                                 |
| :-------------------| :--------------------------------------------------------------------------------------------------------------------|
| 1. Init source      | mkdir foldername                                                                                                     |
|                     | chmod -R 777 foldername                                                                                              |
|                     | cd foldername                                                                                                        |
|                     | git config --global user.name "name" && git config --global user.email "name@gmail.com"                              |
|                     | repo init -u https://android.googlesource.com/platform/manifest -b android-8.1.0_r81                                 |
|                     | repo sync -c -j4 --force-sync                                                                                        |
| 2. Init device files| git clone https://github.com/taras-fedora-syn/android_device_sharp_z2.git -b aosp device/sharp/sharp_z2              |
|                     | git clone https://github.com/taras-fedora-syn/android_vendor_sharp_z2.git --single-branch vendor/sharp/sharp_z2      |
|                     | git clone https://github.com/taras-fedora-syn/android_kernel_sharp_z2.git --single-branch kernel/sharp/sharp_z2      |
|                     | git clone https://github.com/Moyster/o_vendor_mediatek.git -b los-15.1 vendor/mediatek                               |
|                     |                                                                                                                      |
|                     |                                                                                                                      |
|                     | git clone https://github.com/HyperTeam/android_device_mediatek_sepolicy.git -b lineage-17.1 device/mediatek/sepolicy |
|                     | . vendor/mediatek/patches/install.sh                                                                                 |
|                     |                                                                                                                      |
|                                                                                                                                            |
| 4. Setup enviroment | source build/envsetup.sh                                                                                             |
| 5. Init device      | lunch                                                                                                                |
| 6. Start build      | make otapackage                                                                                                      |
|                     |                                                                                                                      | 
