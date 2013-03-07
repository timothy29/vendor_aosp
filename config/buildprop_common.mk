# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-flags=v=n,o=v \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false \
    pm.sleep_mode=1 \
    ro.ext4fs=1 \
    ro.HOME_APP_ADJ=1 \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.enc.jpeg.quality=100 \
    windowsmgr.max_events_per_sec=280 \

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=gpu
PRODUCT_PROPERTY_OVERRIDES += \
    debug.performance.tuning=1
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1

# Misc Files & init.d files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aosp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/aosp/prebuilt/common/etc/init.local.rc:root/init.xylon.rc \
    vendor/aosp/prebuilt/common/bin/sysinit:system/bin/sysinit

# 01010101010101010010101010
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aosp/prebuilt/common/etc/init.d/00fnvxy:system/etc/init.d/00fnvxy \
    vendor/aosp/prebuilt/common/etc/init.d/01pikachu:system/etc/init.d/01pikachu \
    vendor/aosp/prebuilt/common/etc/init.d/95zipalign:system/etc/init.d/95zipalign \
    vendor/aosp/prebuilt/common/etc/init.d/98heuheu:system/etc/init.d/98heuheu \
    vendor/aosp/prebuilt/common/bin/zipalign:system/bin/zipalign

# Google Proprietaries
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/aosp/prebuilt/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so
