# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LG
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 9 PPR1.180610.009 4898911 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:9/PPR1.180610.009/4898911:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/gapps/config.mk)
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
USE_MESSAGING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
