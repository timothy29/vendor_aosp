# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Tilapia Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/tilapia

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common_tablet

# Setup device specific product configuration.
PRODUCT_NAME := xylon_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_ID=JOP40D BUILD_FINGERPRINT="google/nakasig/tilapia:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2.1 JOP40D 533553 release-keys" BUILD_NUMBER=533553

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

