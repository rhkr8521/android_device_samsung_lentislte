## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := lentislte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/lentislte/device_lentislte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lentislte
PRODUCT_NAME := cm_lentislte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := lentislte
PRODUCT_MANUFACTURER := samsung
