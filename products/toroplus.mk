# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/aosp/config/cdma.mk)

# Inherit Tuna common stuff
$(call inherit-product, vendor/aosp/config/tuna.mk)

# Toroplus Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := xylon_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.1.1/JRO03U/L700FH05:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.1.1 JRO03U L700FH05 release-keys"
