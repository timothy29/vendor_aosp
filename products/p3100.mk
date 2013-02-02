
## PRODUCT CONFIGURATION ##
PRODUCT_NAME := xylon_p3100
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p3100
PRODUCT_MODEL := GT-P3100
PRODUCT_MANUFACTURER := samsung

# Inherit AOSP device configuration for GT-P3100.
$(call inherit-product, device/samsung/p3100/full_p3100.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

## TECHNICAL OVERLAYS ##
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common_tablet
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/tilapia

## IS A PHONE? RIGHT? ##
$(call inherit-product, vendor/aosp/config/gsm.mk)


# FINGERPRINT / ID / PRODUCT NAME #
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espressorfxx TARGET_DEVICE=espressorf BUILD_FINGERPRINT=samsung/espressorfxx/espressorf:4.0.3/IML74K/P3100XWALE2:user/release-keys PRIVATE_BUILD_DESC="espressorfxx-user 4.0.3 IML74K P3100XWALE2 release-keys"

# DA BOOT #
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

