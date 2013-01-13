## XYAOSP Version prop ##
DATE = $(shell vendor/aosp/tools/getdate)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.version=$(TARGET_PRODUCT)-official-016 \
    ro.modversion=$(TARGET_PRODUCT)_016_$(DATE)

# For XYStats
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.isitrom= \
    ro.xylon.modname= \
    ro.xylon.modversion= \
    ro.xylon.device= \
    ro.xylon.builtdate=
