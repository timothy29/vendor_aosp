# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# d2att Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := xylon_d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2tmo
PRODUCT_MODEL := SGH-T999
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="samsung/d2tmo/d2tmo:4.1.1/JRO03L/T999UVDLJA:user/release-keys" PRIVATE_BUILD_DESC="d2tmo-user 4.1.1 JRO03L T999UVDLJA release-keys"

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 
