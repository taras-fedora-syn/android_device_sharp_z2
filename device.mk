LOCAL_PATH := device/sharp/sharp_z2

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi 280dpi hdpi tvdpi mdpi ldpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := Sharp Z2,Sharp A1,FS8200

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    audio.a2dp.default \
    tinymix

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_device.xml:system/etc/audio_device.xml \
	$(LOCAL_PATH)/audio/audio_effects.xml:system/etc/audio_effects.xml \
	$(LOCAL_PATH)/audio/audio_em.xml:system/etc/audio_em.xml \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
	$(LOCAL_PATH)/audio/audio_policy_configuration_bluetooth_legacy_hal.xml:system/etc/audio_policy_configuration_bluetooth_legacy_hal.xml \
	$(LOCAL_PATH)/audio/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
	$(LOCAL_PATH)/audio/misound_res.bin:/system/etc/misound_res.bin

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_codecs_c2.xml:system/etc/media_codecs_c2.xml \
	$(LOCAL_PATH)/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
	$(LOCAL_PATH)/media/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
	$(LOCAL_PATH)/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
	$(LOCAL_PATH)/media/media_profiles_V1_0.xml:system/etc/media_profiles_V1_0.xml

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
	$(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
	$(LOCAL_PATH)/rootdir/fstab.mt6797:root/fstab.mt6797 \
	$(LOCAL_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
	$(LOCAL_PATH)/rootdir/init.common.rc:root/init.common.rc \
	$(LOCAL_PATH)/rootdir/init.common_svc.rc:root/init.common_svc.rc \
	$(LOCAL_PATH)/rootdir/init.environ.rc:root/init.environ.rc \
	$(LOCAL_PATH)/rootdir/init.epdg.rc:root/init.epdg.rc \
	$(LOCAL_PATH)/rootdir/init.fih.check.rc:root/init.fih.check.rc \
	$(LOCAL_PATH)/rootdir/init.mal.rc:root/init.mal.rc \
	$(LOCAL_PATH)/rootdir/init.microtrust.rc:root/init.microtrust.rc \
	$(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
	$(LOCAL_PATH)/rootdir/init.mt6797.rc:root/init.mt6797.rc \
	$(LOCAL_PATH)/rootdir/init.mt6797.usb.rc:root/init.mt6797.usb.rc \
	$(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
	$(LOCAL_PATH)/rootdir/init.recovery.mt6797.rc:root/init.recovery.mt6797.rc \
	$(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
	$(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/rootdir/init.volte.rc:root/init.volte.rc \
	$(LOCAL_PATH)/rootdir/init.wfca.rc:root/init.wfca.rc \
	$(LOCAL_PATH)/rootdir/init.xlog.rc:root/init.xlog.rc \
	$(LOCAL_PATH)/rootdir/init.zygote32.rc:root/init.zygote32.rc \
	$(LOCAL_PATH)/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc \
	$(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	$(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	$(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
	$(LOCAL_PATH)/rootdir/ueventd.mt6797.rc:root/ueventd.mt6797.rc \
	$(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
	$(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
	$(LOCAL_PATH)/rootdir/Fih_Hwid_Info:root/Fih_Hwid_Info \
	$(LOCAL_PATH)/rootdir/init.mtk.cda.sh:root/init.mtk.cda.sh \
	$(LOCAL_PATH)/rootdir/init.mtk.pre-cda.sh:root/init.mtk.pre-cda.sh \
	$(LOCAL_PATH)/rootdir/verity_key:root/verity_key

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
   $(LOCAL_KERNEL):kernel
  
# TWRP
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Device product elements
include $(LOCAL_PATH)/product/*.mk

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

TARGET_HAS_FOD := true

# Common stuff
$(call inherit-product, vendor/sharp/sharp_z2/config/common.mk)

# Vendor
$(call inherit-product, vendor/sharp/sharp_z2/sharp_z2-vendor.mk)
