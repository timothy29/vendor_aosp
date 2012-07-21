# FNV specific properties
PRODUCT_PACKAGES += \
    GooManager \
    FNVPapers \
    AppWidgetPicker \
    busybox

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fnv.version=$(TARGET_PRODUCT)_007
