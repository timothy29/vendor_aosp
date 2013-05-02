## XYAOSP Version prop ##

# Let's make life easier
DATE = $(shell date -u +%Y%m%d)
XYLON_VERSION_MAJOR = 2
XYLON_VERSION_MINOR = 7
XYLON_VERSION_MAINTENANCE = 5

XYLON_VERSION := XYLON-4.2.2-v$(XYLON_VERSION_MAJOR).$(XYLON_VERSION_MINOR).$(XYLON_VERSION_MAINTENANCE)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.version=$(XYLON_VERSION) \
    ro.modversion=$(TARGET_PRODUCT)_$(XYLON_VERSION_MAJOR).$(XYLON_VERSION_MINOR).$(XYLON_VERSION_MAINTENANCE)_$(DATE)

# For XYStats
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.isitrom=xylon \
    ro.xylon.modname=xylon-aosp \
    ro.xylon.modversion=$(XYLON_VERSION_MAJOR).$(XYLON_VERSION_MINOR).$(XYLON_VERSION_MAINTENANCE)_$(DATE) \
    ro.xylon.device=$(TARGET_PRODUCT) \
    ro.xylon.builtdate=$(DATE)
