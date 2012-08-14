# FNV specific properties
PRODUCT_PACKAGES += \
    GooManager \
    AppWidgetPicker

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fnv.version=$(TARGET_PRODUCT)_008

# GooManager Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=projectfnv \
    ro.goo.rom=FNV \
    ro.goo.version=3

# Copy WallPaper App
PRODUCT_COPY_FILES += \
    vendor/fnv/proprietary/common/app/FNVW_2.0.1.apk:system/app/FNVPapers.apk

# Copy Sounds to media
PRODUCT_COPY_FILES += \
    vendor/fnv/proprietary/common/media/AstleyRingtone.mp3:system/media/audio/ringtones/AstleyRingtone.mp3 \
    vendor/fnv/proprietary/common/media/AstleyNotification.mp3:system/media/audio/notifications/AstleyNotification.mp3

# Copy themes to /system
PRODUCT_COPY_FILES += \
    vendor/fnv/proprietary/common/app/pcb-carrot-release.apk:system/app/com.teambroccoli.theme.pcbcarrot.apk \
    vendor/fnv/proprietary/common/app/com.knokfirst.BeetsbyKnokDonate.apk:system/app/com.knokfirst.BeetsbyKnokDonate.apk

# Set Default Theme Chooser Theme
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.themeId=BeetsbyKnok \
    persist.sys.themePackageName=com.knokfirst.BeetsbyKnokDonate

    
