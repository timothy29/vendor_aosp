## Specify phone tech before including full_phone
$(call inherit-product, vendor/aosp/configs/common_phone.mk)

# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/configs/common.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := xylon_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=takju BUILD_ID=JOP40C BUILD_FINGERPRINT=google/takju/maguro:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.2 JOP40C 527662 release-keys" BUILD_NUMBER=527662

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
   vendor/aosp/proprietary/tuna/media/bootanimation-new.zip:system/media/bootanimation.zip \
   vendor/aosp/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
   vendor/aosp/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

