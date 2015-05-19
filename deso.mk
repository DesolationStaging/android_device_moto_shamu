# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560

# Device hardware info
PRODUCT_CHIPSET := Qualcomm Snapdragon 805
PRODUCT_CPU := Quad-core 2.7 GHz Krait 450
PRODUCT_GPU := Adreno 420
PRODUCT_REAR_CAM := 13.0 MP 4128 x 3096 pixels
PRODUCT_FRONT_CAM := 2.0 MP 1600 x 1200 pixels
PRODUCT_SCREEN_SIZE := 5.96in ~493 ppi (AMOLED Display)
PRODUCT_SCREEN_RES := $(TARGET_SCREEN_WIDTH) x $(TARGET_SCREEN_HEIGHT)

#Inherit some common Desolation stuff.
$(call inherit-product, vendor/deso/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/deso/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := deso_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47I 1767468 release-keys"
