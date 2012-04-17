# Copyright (C) 2012 The CyanogenMod Project
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


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# EGL config
PRODUCT_COPY_FILES += \
    device/samsung/msm8660-common/configs/egl.cfg:system/lib/egl/egl.cfg

# Media config
PRODUCT_COPY_FILES += \
    device/samsung/msm8660-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# Thermald config
PRODUCT_COPY_FILES += \
    device/samsung/msm8660-common/configs/thermald.conf:system/etc/thermald.conf

# QCOM Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug
endif

# 8660 Common Firmware
PRODUCT_COPY_FILES += \
    device/samsung/msm8660-common/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd \
    device/samsung/msm8660-common/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/samsung/msm8660-common/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/samsung/msm8660-common/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/samsung/msm8660-common/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/samsung/msm8660-common/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/samsung/msm8660-common/firmware/cyttsp_8660_ffa.hex:system/etc/firmware/cyttsp_8660_ffa.hex \
    device/samsung/msm8660-common/firmware/cyttsp_8660_fluid_p2.hex:system/etc/firmware/cyttsp_8660_fluid_p2.hex \
    device/samsung/msm8660-common/firmware/cyttsp_8660_fluid_p3.hex:system/etc/firmware/cyttsp_8660_fluid_p3.hex \
    device/samsung/msm8660-common/firmware/dsps_fluid.b00:system/etc/firmware/dsps_fluid.b00 \
    device/samsung/msm8660-common/firmware/dsps_fluid.b01:system/etc/firmware/dsps_fluid.b01 \
    device/samsung/msm8660-common/firmware/dsps_fluid.b02:system/etc/firmware/dsps_fluid.b02 \
    device/samsung/msm8660-common/firmware/dsps_fluid.b03:system/etc/firmware/dsps_fluid.b03 \
    device/samsung/msm8660-common/firmware/dsps_fluid.mdt:system/etc/firmware/dsps_fluid.mdt

# Hercules/SkyRocket Wifi files
PRODUCT_COPY_FILES += \
    device/samsung/msm8660-common/etc/wifi/bcm4330_apsta.bin:system/etc/wifi/bcm4330_apsta.bin \
    device/samsung/msm8660-common/etc/wifi/bcm4330_mfg.bin:system/etc/wifi/bcm4330_mfg.bin \
    device/samsung/msm8660-common/etc/wifi/bcm4330_p2p.bin:system/etc/wifi/bcm4330_p2p.bin \
    device/samsung/msm8660-common/etc/wifi/bcm4330_sta.bin:system/etc/wifi/bcm4330_sta.bin \
    device/samsung/msm8660-common/etc/wifi/default_ap.conf:system/etc/wifi/default_ap.conf \
    device/samsung/msm8660-common/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/msm8660-common/etc/wifi/nvram_mfg.txt_murata:system/etc/wifi/nvram_mfg.txt_murata \
    device/samsung/msm8660-common/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/msm8660-common/etc/wifi/nvram_net.txt_murata:system/etc/wifi/nvram_net.txt_murata \
    device/samsung/msm8660-common/etc/wifi/wl:system/etc/wifi/wl \
    device/samsung/msm8660-common/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Hercules/SkyRocket Wifi files
PRODUCT_COPY_FILES += \
    device/samsung/msm8660-common/configs/vold.fstab:system/etc/vold.fstab \

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    device/samsung/msm8660-common/prebuilt/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/samsung/msm8660-common/prebuilt/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/samsung/msm8660-common/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh
