include frameworks/libs/native_bridge_support/native_bridge_support.mk

PRODUCT_SOONG_NAMESPACES += \
    frameworks/libs/native_bridge_support/android_api/libc

PRODUCT_PACKAGES += \
    $(NATIVE_BRIDGE_PRODUCT_PACKAGES) \
    berberis_prebuilt_arm64 \
    libberberis_exec_region

PRODUCT_SYSTEM_PROPERTIES += \
    ro.berberis.flags=accurate-sigsegv \
    ro.berberis.version=16.0.0 \
    ro.dalvik.vm.native.bridge=libndk_translation.so \
    ro.dalvik.vm.isa.arm64=x86_64 \
    ro.dalvik.vm.isa.arm=x86 \
    ro.enable.native.bridge.exec=1

$(call inherit-product, vendor/x86_64-extras/ndk_translation/ndk_translation-vendor.mk)
