# Audio
BOARD_USES_MTK_AUDIO := true

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/audio/lib/hw/audio.primary.mt6797.so:system/lib/hw/audio.primary.mt6797.so \
	$(LOCAL_PATH)/prebuilt/audio/lib64/hw/audio.primary.mt6797.so:system/lib64/hw/audio.primary.mt6797.so \
	$(LOCAL_PATH)/prebuilt/audio/lib/libtfa9890_interface.so:system/lib/libtfa9890_interface.so \
	$(LOCAL_PATH)/prebuilt/audio/lib64/libtfa9890_interface.so:system/lib64/libtfa9890_interface.so
