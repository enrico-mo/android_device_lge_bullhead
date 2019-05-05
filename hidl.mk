#
# Copyright (C) 2017 The The LineageOS Project
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

# Bluetooth HAL
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl

# Light HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Dumpstate HAL
PRODUCT_PACKAGES += \
    android.hardware.dumpstate@1.0-service.bullhead

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-impl

# NFC packages
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Fingerprint HIDL implementation
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@3.2-impl

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.contexthub@1.0-impl

# new gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \

# Thermal HAL
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \

#GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

#USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

