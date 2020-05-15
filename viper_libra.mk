# Release name
PRODUCT_RELEASE_NAME := libra

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ViperOS stuff.
$(call inherit-product, vendor/viper/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := libra
PRODUCT_NAME := viper_libra
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-4c
PRODUCT_MANUFACTURER := Xiaomi

TARGET_BOOT_ANIMATION_RES := 1080

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT="Xiaomi/libra/libra:7.0/NRD90M/V8.2.3.0.NXKCNEC:user/release-keys" \
	PRIVATE_BUILD_DESC="libra-user 7.0 NRD90M V8.2.3.0.NXKCNEC release-keys"