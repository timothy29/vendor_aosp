# Galaxy Nexus items (maguro, toro, toroplus)
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/common/etc/init.d/99tunacontrol:system/etc/init.d/99tunacontrol \
    vendor/aosp/prebuilt/common/etc/init.d/03defrag:system/etc/init.d/03defrag \
    vendor/aosp/prebuilt/common/etc/init.d/10ext4:system/etc/init.d/10ext4 \
    vendor/aosp/prebuilt/common/etc/init.d/88sqlite:system/etc/init.d/88sqlite \
    vendor/aosp/prebuilt/common/etc/init.d/89touch:system/etc/init.d/89touch

# Use it here for testing
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.purgeable_assets=1 \
    persist.sys.use.dithering=0 \
