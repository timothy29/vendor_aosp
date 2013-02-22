## XYAOSP Version prop ##
DATE = $(shell date -u +%Y%m%d)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.version=$(TARGET_PRODUCT)-official-2.1.1 \
    ro.modversion=$(TARGET_PRODUCT)_2.1.1_$(DATE)

# For XYStats
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.isitrom=Xylon \
    ro.xylon.modname=xylon-aosp \
    ro.xylon.modversion=Official_2.1.1 \
    ro.xylon.device=$(TARGET_PRODUCT) \
    ro.xylon.builtdate=$(DATE)
