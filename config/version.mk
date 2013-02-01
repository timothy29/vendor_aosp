## XYAOSP Version prop ##
DATE = $(shell date -u +%Y%m%d)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.version=$(TARGET_PRODUCT)-official-019 \
    ro.modversion=$(TARGET_PRODUCT)_019_$(DATE)

# For XYStats
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.isitrom=Xylon \
    ro.xylon.modname=xylon-aosp \
    ro.xylon.modversion=Official_019 \
    ro.xylon.device=$(TARGET_PRODUCT) \
    ro.xylon.builtdate=$(DATE)
