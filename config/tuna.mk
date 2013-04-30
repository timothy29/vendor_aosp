# Galaxy Nexus items (maguro, toro, toroplus)
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/common/etc/init.d/99tunacontrol:system/etc/init.d/99tunacontrol

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Use it here for testing
#PRODUCT_PROPERTY_OVERRIDES += \
#persist.sys.purgeable_assets=1
