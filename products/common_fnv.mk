# FNV specific properties
PRODUCT_PACKAGES += \
    GooManager \
    FNVPapers \
    AppWidgetPicker

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    fnv.version=1
    ro.fnv.version=$(TARGET_PRODUCT)_007
