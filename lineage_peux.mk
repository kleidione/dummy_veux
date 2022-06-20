# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from peux device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := poco
PRODUCT_DEVICE := peux
PRODUCT_MANUFACTURER := poco
PRODUCT_NAME := lineage_peux
PRODUCT_MODEL := POCO X4 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-poco
TARGET_VENDOR := poco
TARGET_VENDOR_PRODUCT_NAME := peux
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="veux-user 11 veux-user 11 RKQ1.211001.001 V13.0.13.0.RKCMIXM V13.0.13.0.RKCMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/peux_p_in/peux:11/RKQ1.211001.001/V13.0.13.0.RKCMIXM:user/release-keys
