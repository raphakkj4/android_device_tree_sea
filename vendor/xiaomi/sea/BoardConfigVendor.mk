# BoardConfigVendor.mk - Redmi Note 12S (sea) and ocean

# Vendor output directory
TARGET_COPY_OUT_VENDOR := vendor

# 32-bit and 64-bit blobs
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SUPPORTS_32_BIT_APPS := true

# Enable prebuilt blobs in vendor
TARGET_PROVIDES_VNDK := true

# Current VNDK for AOSP compatibility
BOARD_VNDK_VERSION := current

# Disable VINTF if no vendor manifest is present
PRODUCT_ENFORCE_VINTF_MANIFEST := false

# Allow usage of stripped blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# (Optional) Vendor SEPolicy directory
# BOARD_SEPOLICY_DIRS += vendor/xiaomi/sea/sepolicy

# (Optional) If the ROM has linker namespaces enabled
PRODUCT_TREBLE_LINKER_NAMESPACES := true
