# Release name
PRODUCT_RELEASE_NAME := mione_plus

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_PACKAGES += \
    Firewall \
    Focal \
    QuickSearchBox \
    LegacyCamera

# Inherit device configuration
$(call inherit-product, device/xiaomi/mione_plus/full_mione_plus.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := mione_plus
PRODUCT_NAME := mk_mione_plus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI-ONE Plus
PRODUCT_MANUFACTURER := Xiaomi

# Set MK_BUILDTYPE
MK_BUILDTYPE := RELEASE

PRODUCT_CHARACTERISTICS := phone

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mione_plus \
	BUILD_FINGERPRINT="Xiaomi/mione_plus/mione_plus:4.1.2/JZO54K/QDS84:userdebug/test-keys" \
	PRIVATE_BUILD_DESC="mione_plus-userdebug 4.1.2 JZO54K QDS84 test-keys" \

