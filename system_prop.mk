# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.disable=0 \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.track.enable=false \
    audio.offload.video=true \
    persist.audio.ssr.3mic=false \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.spkr.cal.duration=0 \
    qcom.hw.aac.encoder=true \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio_hal.period_size=192 \
    vendor.audio.offload.buffer.size.kb=32 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.voice.path.for.pcm.voip=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.enable_timeout_ms=12000 \
    bluetooth.hfp.client=1 \
    ro.bluetooth.dun=true \
    ro.bluetooth.emb_wp_mode=true \
    ro.bluetooth.hfp.ver=1.6 \
    ro.bluetooth.sap=true \
    ro.bluetooth.wipower=true \
    ro.bt.bdaddr_path=/data/misc/bluetooth/bdaddr \
    ro.btconfig.chip=QCA6164 \
    ro.btconfig.dev=/dev/ttyHS0 \
    ro.btconfig.if=uart \
    ro.btconfig.vendor=qcom \
    ro.qualcomm.bluetooth.ftp=true \
    ro.qualcomm.bluetooth.hfp=true \
    ro.qualcomm.bluetooth.hsp=true \
    ro.qualcomm.bluetooth.map=true \
    ro.qualcomm.bluetooth.nap=true \
    ro.qualcomm.bluetooth.opp=true \
    ro.qualcomm.bluetooth.pbap=true \
    vendor.qcom.bluetooth.soc=rome

# Button jack
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.button_jack_profile=volume \
    persist.sys.button_jack_switch=0

# Dex
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-filter=speed \
    ro.sys.fw.dex2oat_thread_count=6 \
    dalvik.vm.boot-dex2oat-threads=6 \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.image-dex2oat-threads=4

# Dalvik heap
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=288m \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapsize=768m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heaptargetutilization=0.75

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.display.support=23

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.enable_gl_backpressure=1 \
    ro.opengles.version=196610 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.max_virtual_display_dimension=2048 \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=10500000 \
    debug.sf.late.app.duration=20500000 \
    debug.sf.early.sf.duration=21000000 \
    debug.sf.early.app.duration=16500000 \
    debug.sf.earlyGl.sf.duration=13500000 \
    debug.sf.earlyGl.app.duration=21000000 \
    ro.surface_flinger.protected_contents=true \
    debug.hwui.use_buffer_age=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    av.debug.disable.pers.cache=true \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    mm.enable.qcom_parser=3379827 \
    mm.enable.smoothstreaming=true \
    mmp.enable.3g2=true

# Network
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    ro.data.large_tcp_window_size=true \
    ro.use_data_netmgrd=true

# OOS enhancements
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.oosenhance.enable=true \
    ro.sys.oosenhance.timer=20000

# Others
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.android.strictmode=0 \
    persist.power.useautobrightadj=true

# Qualcomm specifics
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1 \
    persist.dpm.feature=0 \
    ro.qc.sdk.camera.facialproc=false \
    ro.qc.sdk.gestures.camera=false \
    ro.qc.sdk.sensors.gestures=true \
    ro.qcom.ad.sensortype=2 \
    ro.qcom.ad=1 \
    ro.qualcomm.cabl=0 \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.custom_ecc=1 \
    persist.radio.force_on_dc=true \
    persist.radio.multisim.config=dsds \
    persist.radio.rat_on=combine \
    persist.radio.sib16_support=1

# Rild
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ssr.enable_ramdumps=0 \
    persist.sys.ssr.restart_level=modem \
    ril.subscription.types=NV,RUIM \
    rild.libargs=-d[SPACE]/dev/smd0 \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so

# Special persist properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.cpu_overclock=false \
    persist.vendor.edge_touch_mode=false

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_cdma_sub=0 \
    ro.telephony.default_network=10 \
    telephony.lteOnCdmaDevice=1

# Video
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    debug.mdpcomp.logs=0 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    persist.mdpcomp_perfhint=50 \
    persist.mdpcomp.4k2kSplit=1 \
    persist.metadata_dynfps.disable=false \
    persist.vendor.audio.speaker.prot.enable=true \
    ro.hdmi.enable=true \
    vidc.debug.level=0 \
    vidc.enc.dcvs.extra-buff-count=2

# ADB at boot
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=adb,mtp \
    ro.adb.secure=1

# Charger
PRODUCT_PROPERTY_OVERRIDES += \
   ro.charger.enable_suspend=true

# ZRAM writeback
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24
  
# Disable traced and iorapd
PRODUCT_PROPERTY_OVERRIDES += \
	ro.iorapd.enable=false \
	persist.traced.enable=0 