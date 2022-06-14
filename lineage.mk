$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sharp/sharp_z2/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release Name
PRODUCT_RELEASE_NAME := Sharp Z2

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sharp_z2
PRODUCT_NAME := lineage_sharp_z2
PRODUCT_BRAND := Sharp
PRODUCT_MODEL := Sharp Z2
PRODUCT_MANUFACTURER := Sharp Z2 LeEco Inside
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080