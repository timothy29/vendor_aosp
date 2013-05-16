# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := d710
PRODUCT_NAME := xylon_d710
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SPH-D710

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.1.2/JZO54K/SPH-D710.GB27:user/release-keys PRIVATE_BUILD_DESC="SPH-D710-user 4.1.2 JZO54K SPH-D710.GB27 release-keys"

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aosp/prebuilt/hybrid_hdpi.conf:system/etc/beerbong/properties.conf \
   vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
