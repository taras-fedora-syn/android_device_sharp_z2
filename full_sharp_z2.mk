$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sharp/sharp_z2/device.mk)

# Release name
PRODUCT_RELEASE_NAME := sharp_z2

PRODUCT_DEVICE := sharp_z2
PRODUCT_NAME := full_sharp_z2
PRODUCT_BRAND := Sharp
PRODUCT_MODEL := Sharp Z2
PRODUCT_MANUFACTURER := Sharp

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FS8002_00WW-user 6.0 MRA58K 00WW_1_360 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "alps/TSP_0001_FIH/TSP:6.0/MRA58K/0001_1_360:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
