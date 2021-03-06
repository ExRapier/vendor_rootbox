# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/d2-common

# Setup device specific product configuration.
PRODUCT_NAME := aokp_d2att
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2att
PRODUCT_MODEL := SGH-I747
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2att TARGET_DEVICE=d2att BUILD_FINGERPRINT="d2att-user 4.1.2 JZO54K I747UCALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2att/d2att:4.1.2/JZO54K/I747UCALEM:user/release-keys"

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
