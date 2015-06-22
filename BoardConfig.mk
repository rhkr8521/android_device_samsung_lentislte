USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/lentislte/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := apq8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno450
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := lentislte

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3b7 dwc3_msm.cpu_to_affin=1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 00001000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/lentislte/kernel
TARGET_KERNEL_CONFIG := apq8084_sec_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/lentislte

BOARD_EGL_CFG := egl.cfg
USE_OPENGL_RENDERER := true

## Adreno Source
HAVE_ADRENO_SOURCE:=false

## Sound
BOARD_USES_LEGACY_ALSA_AUDIO:=true
BOARD_USES_ALSA_AUDIO:=true

## Qualcomm
BOARD_USES_QCOM_HARDWARE:=true
BOARD_USES_QCOM_LIBS:=true
BOARD_USES_QCOM_LEGACY:=true
TARGET_USES_QCOM_BSP:=true
TARGET_USES_C2D_COMPOSITION:=true
TARGET_QCOM_DISPLAY_VARIANT:=caf
TARGET_QCOM_MEDIA_VARIANT:=caf
TARGET_QCOM_AUDIO_VARIANT:=caf
TARGET_ENABLE_QC_AV_ENHANCEMENTS:=true

## Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
 ifeq ($(TARGET_BUILD_VARIANT),user)
  ifeq ($(WITH_DEXPREOPT),)
   WITH_DEXPREOPT:=true
  endif
 endif
endif
WITH_DEXPREOPT_BOOT_IMG_ONLY ?=true

BOARD_HAS_NO_SELECT_BUTTON := true

