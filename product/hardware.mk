# Hardware-specific permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml

# Mediatek
PRODUCT_PACKAGES += \
    libstlport \
    libgralloc_extra \
    libgui_ext \
    libui_ext \
    libmtk_symbols \
    libxlog
