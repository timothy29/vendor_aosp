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
    ro.goo.version=3

# Copy themes to /system
PRODUCT_COPY_FILES += \
    vendor/fnv/proprietary/common/app/BlackExodus.apk:system/app/com.nitroz.blackexodus.apk \
    vendor/fnv/proprietary/common/app/FreehandWhite-release.apk:system/app/com.hooolm.freehand.ics.white.apk \
    vendor/fnv/proprietary/common/app/pcb-carrot-release.apk:system/app/com.teambroccoli.theme.pcbcarrot.apk \
    vendor/fnv/proprietary/common/app/com.knokfirst.BeetsbyKnokDonate.apk:system/app/com.knokfirst.BeetsbyKnokDonate.apk

# Set Default Theme Chooser Theme
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.themeId=BeetsbyKnok \
    persist.sys.themePackageName=com.knokfirst.BeetsbyKnokDonate

    
