# Inherit AOSP device configuration for geeb
$(call inherit-product, device/lge/geeb/full_geeb.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/geeb

# Setup device specific product configuration
PRODUCT_NAME := aokp_geeb
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := geeb
PRODUCT_MODEL := LG Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=gee BUILD_FINGERPRINT=lge/gee/geeb:4.3/JWR66V/737497:user/release-keys PRIVATE_BUILD_DESC="gee-user 4.3 JWR66V 737497 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
