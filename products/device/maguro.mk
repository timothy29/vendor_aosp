# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/fnv/products/common.mk)

# Inherit fnv specific configurations
$(call inherit-product, vendor/fnv/products/common_fnv.mk)

# Setup device specific product configuration.
PRODUCT_NAME := fnv_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JRN84D BUILD_FINGERPRINT=google/mysid/maguro:4.1.1/JRN84D/336647:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRN84D 336647 release-keys" BUILD_NUMBER=235179

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
   vendor/fnv/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
   vendor/fnv/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/fnv/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/fnv/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/fnv/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so 

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/fnv/proprietary/tuna/media/bootanimation-new.zip:system/media/bootanimation.zip \
    vendor/fnv/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/fnv/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 

