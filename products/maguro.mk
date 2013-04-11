# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit common sound files from Sony.
#$(call inherit-product, vendor/aosp/config/sound_effects.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Inherit Tuna common stuff
$(call inherit-product, vendor/aosp/config/tuna.mk)

# Maguro Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := xylon_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=takju BUILD_ID=JDQ39 BUILD_FINGERPRINT="google/takju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="takju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.mcc_fallback=262
