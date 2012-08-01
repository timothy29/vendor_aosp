# FNV specific properties
PRODUCT_PACKAGES += \
    GooManager \
    FNVPapers \
    AppWidgetPicker

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fnv.version=$(TARGET_PRODUCT)_008

# GooManager Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=projectfnv \
    ro.goo.rom=FNV \
    ro.goo.version=1

# Copy Black Exodus to /system
PRODUCT_COPY_FILES += \
    vendor/fnv/proprietary/common/app/BlackExodus.apk:system/app/com.nitroz.blackexodus.apk

# Set Default Theme Chooser Theme
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.themeId=BlackExodus \
    persist.sys.themePackageName=com.nitroz.blackexodus

    
