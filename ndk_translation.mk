include frameworks/libs/native_bridge_support/native_bridge_support.mk

PRODUCT_SOONG_NAMESPACES += \
    frameworks/libs/native_bridge_support/android_api/libc

PRODUCT_PACKAGES += \
    $(NATIVE_BRIDGE_PRODUCT_PACKAGES)

PRODUCT_SYSTEM_PROPERTIES += \
    ro.dalvik.vm.native.bridge=libndk_translation.so \
    ro.dalvik.vm.isa.arm64=x86_64 \
    ro.dalvik.vm.isa.arm=x86 \
    ro.enable.native.bridge.exec=1 \
    ro.ndk_translation.version=0.2.3 \
    ro.ndk_translation.flags=accurate-sigsegv

$(call inherit-product, vendor/x86_64-extras/ndk_translation/ndk_translation-vendor.mk)
