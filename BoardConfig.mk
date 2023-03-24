#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/huawei/anne

## Include common BoardConfig
include device/huawei/hi6250-9-common/BoardConfigCommon.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 25165824 # mmcblk0p31 (24576*1024)
BOARD_CACHEIMAGE_PARTITION_SIZE    := 134217728 # mmcblk0p43 (131072*1024)
BOARD_ODMIMAGE_PARTITION_SIZE      := 134217728 # mmcblk0p44 (131072*1024)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 # mmcblk0p33 (32768*1024)
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3909091328 # mmcblk0p52 (3817472*1024)
BOARD_PRODUCTIMAGE_PARTITION_SIZE  := 981467136  # mmcblk0p56 (958464*1024)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54316236800 # mmcblk0p59 (53043200*1024)
BOARD_VENDORIMAGE_PARTITION_SIZE   := 822083584 # mmcblk0p57 (802816*1024)



