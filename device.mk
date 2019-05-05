#
# Copyright (C) 2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL bullhead devices, and
# are also specific to bullhead devices
#
# Everything in this directory will become public

# Enable support for chinook sensorhub
TARGET_USES_CHINOOK_SENSORHUB := false

PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.rc:root/init.bullhead.rc \
    device/lge/bullhead/init.bullhead.usb.rc:root/init.bullhead.usb.rc \
    device/lge/bullhead/fstab.bullhead:root/fstab.bullhead \
    device/lge/bullhead/ueventd.bullhead.rc:root/ueventd.bullhead.rc \
    device/lge/bullhead/init.recovery.bullhead.rc:root/init.recovery.bullhead.rc \
    device/lge/bullhead/init.bullhead.ramdump.rc:root/init.bullhead.ramdump.rc \
    device/lge/bullhead/init.bullhead.fp.rc:root/init.bullhead.fp.rc \
    device/lge/bullhead/init.qcom.devwait.sh:system/bin/init.qcom.devwait.sh \
    device/lge/bullhead/init.qcom.devstart.sh:system/bin/init.qcom.devstart.sh

ifeq ($(TARGET_USES_CHINOOK_SENSORHUB),true)
PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.sensorhub.rc:root/init.bullhead.sensorhub.rc
else
PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.nanohub.rc:root/init.bullhead.sensorhub.rc
endif

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/lge/bullhead/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/bullhead/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/lge/bullhead/media_profiles.xml:system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    device/lge/bullhead/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/bullhead/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/bullhead/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/lge/bullhead/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    device/lge/bullhead/audio_policy_volumes_drc.xml:system/etc/audio_policy_volumes_drc.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml \

#Sound Trigger
PRODUCT_COPY_FILES += \
    device/lge/bullhead/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/lge/bullhead/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Input device files
PRODUCT_COPY_FILES += \
    device/lge/bullhead/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/bullhead/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    device/lge/bullhead/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc \
    device/lge/bullhead/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# for launcher layout
#PRODUCT_PACKAGES += \
#    BullheadLayout

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
    device/lge/bullhead/synaptics_rmi4_i2c.idc:system/usr/idc/synaptics_rmi4_i2c.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:system/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:system/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:system/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:system/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml

# For SPN display
PRODUCT_COPY_FILES += \
    device/lge/bullhead/spn-conf.xml:system/etc/spn-conf.xml

# For GPS
PRODUCT_COPY_FILES += \
    device/lge/bullhead/sec_config:system/etc/sec_config

# NFC config files
PRODUCT_COPY_FILES += \
    device/lge/bullhead/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lge/bullhead/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# For WiFi
PRODUCT_COPY_FILES += \
    device/lge/bullhead/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/lge/bullhead/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/bullhead/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/qca_cld/WCNSS_cfg.dat \
    device/lge/bullhead/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini

# Power configuration file
PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.power.sh:system/bin/init.bullhead.power.sh

# MBN
PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.sh:system/bin/init.bullhead.sh

# Qseecomd configuration file
PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.qseecomd.sh:system/bin/init.bullhead.qseecomd.sh

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

PRODUCT_CHARACTERISTICS := nosdcard

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# HIDL
$(call inherit-product, $(LOCAL_PATH)/hidl.mk)

# System Properties
-include $(LOCAL_PATH)/system_prop.mk

PRODUCT_PACKAGES += \
    gralloc.msm8992 \
    hwcomposer.msm8992 \
    libgenlock \
    memtrack.msm8992 \

# Light HAL
PRODUCT_PACKAGES += \
    lights.bullhead \
    lights.vts

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

# Audio HAL and utilities
USE_XML_AUDIO_POLICY_CONF := 1
PRODUCT_PACKAGES += \
    audio.primary.msm8992 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

# Audio effects
PRODUCT_PACKAGES += \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcomvisualizer \
    libqcompostprocbundle \
    libvolumelistener

PRODUCT_PACKAGES += \
    librmnetctl \
    rmnetcli


# GPS configuration
PRODUCT_COPY_FILES += \
    device/lge/bullhead/gps.conf:system/etc/gps.conf

# GPS
PRODUCT_PACKAGES += \
    gps.msm8992

# NFC packages
PRODUCT_PACKAGES += \
    libnfc-nci \
    NfcNci \
    Tag \
    nfc_nci.bullhead \

# Fingerprint HIDL implementation
PRODUCT_PACKAGES += \
    fingerprint.bullhead

# Wi-Fi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

# Camera
PRODUCT_PACKAGES += \
    camera.msm8992 \
    libcamera \
    libmmcamera_interface \
    libmmcamera_interface2 \
    libmmjpeg_interface \
    libqomx_core \
    mm-qcamera-app \
    Snap

# Sensor & activity_recognition HAL
TARGET_USES_NANOHUB_SENSORHAL := true
NANOHUB_SENSORHAL_LID_STATE_ENABLED := true
NANOHUB_SENSORHAL_SENSORLIST := $(LOCAL_PATH)/sensorhal/sensorlist.cpp
NANOHUB_SENSORHAL_DIRECT_REPORT_ENABLED := true

PRODUCT_PACKAGES += \
    sensors.bullhead \
    activity_recognition.bullhead \
    context_hub.default

ifeq ($(TARGET_USES_CHINOOK_SENSORHUB),true)
PRODUCT_PACKAGES += \
    sensortool.bullhead
else
PRODUCT_PACKAGES += \
    nanoapp_cmd
endif

# sensor utilities (only for userdebug and eng builds)
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += \
    nanotool \
    sensortest
endif

# Library used for VTS profiling (only for userdebug and eng builds)
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += \
    libvts_profiling \
    libvts_multidevice_proto
endif

PRODUCT_PACKAGES += \
    keystore.msm8992 \
    gatekeeper.msm8992

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
   fs_config_files

# For wlan_mac.bin symlink
PRODUCT_PACKAGES += \
    bullhead_wlan_mac

DEVICE_PACKAGE_OVERLAYS := \
    device/lge/bullhead/overlay

# Bluetooth HAL
PRODUCT_PACKAGES += \
    libbt-vendor

# Power HAL
PRODUCT_PACKAGES += \
    power.bullhead

# Thermal HAL
PRODUCT_PACKAGES += \
    thermal.bullhead

# Modem debugger/misc
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
ifeq (,$(filter aosp_bullhead, $(TARGET_PRODUCT)))
PRODUCT_PACKAGES += \
    NexusLogger
endif # aosp_bullhead

PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.diag.rc.userdebug:root/init.bullhead.diag.rc \
    device/lge/bullhead/init.bullhead.misc.rc.userdebug:root/init.bullhead.misc.rc
else
PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.diag.rc.user:root/init.bullhead.diag.rc \
    device/lge/bullhead/init.bullhead.misc.rc.user:root/init.bullhead.misc.rc
endif

# only include verity on user builds for LineageOS
ifeq ($(TARGET_BUILD_VARIANT),user)
   PRODUCT_COPY_FILES += device/lge/bullhead/fstab-verity.bullhead:root/fstab.bullhead

# setup dm-verity configs.
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc.0/f9824900.sdhci/by-name/system
#PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc.0/f9824900.sdhci/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)
endif

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8994/msm8992.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8994/msm8994-gpu-vendor.mk)
