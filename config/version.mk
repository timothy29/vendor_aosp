## XYAOSP Version prop ##
DATE = $(shell date -u +%Y%m%d)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.version=$(TARGET_PRODUCT)-official-2.4.2 \
    ro.modversion=$(TARGET_PRODUCT)_2.4.2_$(DATE)

# For XYStats
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.isitrom=xylon \
    ro.xylon.modname=xylon-aosp \
    ro.xylon.modversion=2.4.2-$(DATE) \
    ro.xylon.device=$(TARGET_PRODUCT) \
    ro.xylon.builtdate=$(DATE)
