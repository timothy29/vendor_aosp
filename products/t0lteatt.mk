# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/t0lte/full_t0lteatt.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# t0lte Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/t0lte

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# Setup device specific product configuration.
PRODUCT_NAME := xylon_t0lteatt
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := t0lteatt
PRODUCT_MODEL := SAMSUNG-SGH-I317
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0lteatt TARGET_DEVICE=t0lteatt BUILD_FINGERPRINT="samsung/t0lteatt/t0lteatt:4.1.2/JZO54K/I317UCAMA4:user/release-keys" PRIVATE_BUILD_DESC="t0lteatt-user 4.1.2 JZO54K I317UCAMA4 release-keys"


# Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_n7100.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
