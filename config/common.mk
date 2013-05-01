PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# T-Mobile theme engine
include vendor/aosp/config/themes_common.mk

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/dictionaries

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Backup Tool
XY_BUILD = true
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/aosp/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/aosp/prebuilt/common/bin/50-xy.sh:system/addon.d/50-xy.sh \
    vendor/aosp/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Build Information Properties
include vendor/aosp/config/version.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_EST_DATE=$(shell date +"%s")

# Build.prop Modifications, Tweaks, blah.
include vendor/aosp/config/buildprop_common.mk

# CyanogenMod Packages
PRODUCT_PACKAGES += \
    Apollo \
    CMFileManager \
    Development \
    LockClock \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Superuser Packages
PRODUCT_PACKAGES += \
    Superuser \
    su

SUPERUSER_PACKAGE := com.xyaosp.superuser

# Xylon Packages
PRODUCT_PACKAGES += \
    DashClock \
    LatinImeDictionaryPack \
    PermissionsManager \
    Torch \
    tune2fs \
    XYPapers \
    XYSettings \
    XYStats

# NFC
PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/com.xylon.android.xml:system/etc/permissions/com.xylon.android.xml \
    vendor/aosp/config/permissions/com.xylon.nfc.enhanced.xml:system/etc/permissions/com.xylon.nfc.enhanced.xml

# SuperSU and sysrw
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/aosp/prebuilt/common/xbin/sysro:system/xbin/sysro

# Special Ringtone
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/media/Xylonize.mp3:system/media/audio/ringtones/Xylonize.mp3
