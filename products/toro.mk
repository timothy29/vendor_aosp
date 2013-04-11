# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/aosp/config/cdma.mk)

# Inherit Tuna common stuff
$(call inherit-product, vendor/aosp/config/tuna.mk)

# Toro Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := xylon_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JDQ39 BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038
