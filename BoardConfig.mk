#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

LOCAL_PATH := device/motorola/titan

# Vendor Unification Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/motorola/titan/init/init_titan.c

# Assert
TARGET_OTA_ASSERT_DEVICE := titan,titan_umts,titan_udstv,titan_umtsds,titan_retaildsds,XT1068,XT1064,XT1063,XT1069

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := titan_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/titan

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10444800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10526720
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1157627904
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom

#MultiROM config. MultiROM also uses parts of TWRP config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := $(LOCAL_PATH)/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_FONT := 160
MR_FSTAB := $(LOCAL_PATH)/rootdir/etc/twrp.fstab
MR_KEXEC_MEM_MIN := 0x05000000
MR_KEXEC_DTB := true
MR_CONTINUOUS_FB_UPDATE := true

# TWRP
DEVICE_RESOLUTION := 720x1280
TW_IGNORE_MAJOR_AXIS_0 := true
TW_CUSTOM_POWER_BUTTON := 107
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_EXFAT_FUSE := true
RECOVERY_SDCARD_ON_DATA := true
HAVE_SELINUX := true
BOARD_RECOVERY_SWIPE := true

# inherit from the proprietary version
-include vendor/motorola/titan/BoardConfigVendor.mk
