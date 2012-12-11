## Specify phone tech before including full_phone
$(call inherit-product, vendor/aosp/config/common_phone.mk)

# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Nexus 7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/grouper

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common_tablet

# Setup device specific product configuration.
PRODUCT_NAME := xylon_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_ID=JOP40C BUILD_FINGERPRINT=google/nakasi/grouper:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.2 JOP40C 527662 release-keys" BUILD_NUMBER=527662

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

