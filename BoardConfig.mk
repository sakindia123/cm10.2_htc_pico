# Copyright (C) 2011 The Android Open Source Project
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
#

USE_CAMERA_STUB := true
BOARD_VENDOR := htc

TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS   += -DREFRESH_RATE=65 -DQCOM_NO_SECURE_PLAYBACK -DQCOM_LEGACY_OMX -DANCIENT_GL
COMMON_GLOBAL_CFLAGS   += -DQCOM_ICS_DECODERS -DQCOM_HARDWARE -DNO_UPDATE_PREVIEW -DQCOM_ICS_COMPAT

# Arch related defines and optimizations
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_NEON := true
TARGET_BOOTLOADER_BOARD_NAME := pico
TARGET_CORTEX_CACHE_LINE_32 := true
ARCH_ARM_HAVE_ARMV7A := true

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x12c00000
BOARD_PAGE_SIZE := 0x00000800

# Additional libraries
TARGET_PROVIDES_LIBAUDIO := true
BOARD_PREBUILT_LIBAUDIO := false

# Fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09600000
BOARD_FLASH_BLOCK_SIZE := 262144

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/htc/pico
TARGET_KERNEL_CONFIG := pico_defconfig

# Vold
BOARD_VOLD_MAX_PARTITIONS := 24
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/pico/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/pico/bluetooth/vnd_pico.txt

TARGET_SPECIFIC_HEADER_PATH := device/htc/pico/include

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/pico/prebuilt/lib/egl/egl.cfg

# Wifi related definitions
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4330_b2.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4330_apsta_b2.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/firmware/fw_bcm4330_p2p_b2.bin"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/firmware/fw_bcm4330_b2.bin nvram_path=/proc/calibration iface_name=eth0"
WIFI_BAND                        := 802_11_BG
BOARD_LEGACY_NL80211_STA_EVENTS  := true

# Misc
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Releasetools
TARGET_OTA_EXTRAS_FILE := device/htc/pico/releasetools/extras.txt

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x27a
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_NO_HW_OVERLAY := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# RIL
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_USES_LEGACY_RIL := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Add h/w acceleration in browser
ENABLE_WEBGL := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
TARGET_FORCE_CPU_UPLOAD := true

# Touch screen compatibility for JB
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Custom liblights
TARGET_PROVIDES_LIBLIGHT := true

# Keep Size in check
SMALLER_FONT_FOOTPRINT := true

# Power
TARGET_PROVIDES_POWERHAL := true

# FM Radio
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# TWRP
DEVICE_RESOLUTION := 320x480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NEVER_UMOUNT_SYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
