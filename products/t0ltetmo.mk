# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/t0ltetmo/full_t0ltetmo.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# t0lte Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/t0lte

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# Setup device specific product configuration.
PRODUCT_NAME := xylon_t0ltetmo
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := t0ltetmo
PRODUCT_MODEL := SGH-T889
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltetmo TARGET_DEVICE=t0ltetmo BUILD_FINGERPRINT="samsung/t0ltetmo/t0ltetmo:4.1.2/JZO54K/T889UVBMB4:user/release-keys" PRIVATE_BUILD_DESC="t0ltetmo-user 4.1.2 JZO54K T889UVBMB4 release-keys"


# Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
