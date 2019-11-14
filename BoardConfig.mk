#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
-include device/oneplus/sm8150-common/BoardConfigCommon.mk

BOARD_VENDOR := oneplus
DEVICE_PATH := device/oneplus/hotdogb
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Assert
TARGET_OTA_ASSERT_DEVICE := OnePlus7T

# AVB
# Enable chain partition for system and product
BOARD_AVB_VBMETA_SYSTEM := system product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/1d84000.ufshc
BOARD_KERNEL_CMDLINE += androidboot.force_normal_boot=1
TARGET_KERNEL_CONFIG := kronic_defconfig

# Partitions
#PRODUCT_USE_DYNAMIC_PARTITIONS := true
BOARD_SUPER_PARTITION_SIZE := 15032385536
BOARD_SUPER_PARTITION_GROUPS := oneplus_dynamic_partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 7511998464
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    vendor \
    product
BOARD_EXT4_SHARE_DUP_BLOCKS := true
#PRODUCT_BUILD_PRODUCT_IMAGE  := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 1291284480
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 973119488
BOARD_USERDATAIMAGE_PARTITION_SIZE := 115601780736
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Fingerprint
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_X = 453
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_Y = 2069
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_SIZE = 190

# Sensors
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_X := 1000
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_Y := 260

# SEPolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
