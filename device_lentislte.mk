$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/lentislte/lentislte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/lentislte/overlay

PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    charger_res_images

## Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

## Audio
PRODUCT_COPY_FILES += \
    device/samsung/lentislte/audio_effects.conf:system/etc/audio_effects.conf

PRODUCT_COPY_FILES += \
    device/samsung/lentislte/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sensors.wl_dis=true \
    ro.qualcomm.sensors.smd=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

## Root
PRODUCT_COPY_FILES += \
    device/samsung/lentislte/init.qcom.rc:root/init.qcom.rc \
    device/samsung/lentislte/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/lentislte/init.qcom-common.rc:root/init.qcom-common.rc \
    device/samsung/lentislte/ueventd.qcom.rc:root/ueventd.qcom.rc \

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/lentislte/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lentislte
PRODUCT_DEVICE := lentislte
