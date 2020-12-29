#!/vendor/bin/sh
# Remove useless directories
rm -rf /data/anr
rm -rf /data/lineageos_updates
rm -rf /data/local/traces
rm -rf /data/misc/boottrace
rm -rf /data/misc/gcov
rm -rf /data/misc/perfprofd
rm -rf /data/misc/profman
rm -rf /data/misc/trace
rm -rf /data/misc/update_engine
rm -rf /data/misc/update_engine_log
rm -rf /data/misc/wmtrace
rm -rf /data/nfc
rm -rf /data/ota
rm -rf /data/ss
rm -rf /data/ssh
rm -rf /data/system/dropbox
rm -rf /data/system/heapdump
rm -rf /data/system/perfd
rm -rf /data/thermal
rm -rf /data/tombstones
rm -rf /data/vendor/tombstones

# Remove useless files
find /data/data/com.tencent.mm/MicroMsg/*/appbrand/* -mtime +3 -exec rm -rf {} \;
find /data/data/com.tencent.mm/MicroMsg/*/avatar/* -mtime +3 -exec rm -rf {} \;
find /data/data/com.tencent.mm/MicroMsg/*/image*/* -mtime +3 -exec rm -rf {} \;
find /data/media/0/Android/data/com.tencent.mm/MicroMsg/*/* -mtime +3 -exec rm -rf {} \;
find /data/media/0/tencent/MobileQQ*/*/* -mtime +3 -exec rm -rf {} \;
find /data/media/0/tencent/MobileQQ*/*/*/* -mtime +3 -exec rm -rf {} \;
rm -rf /data/backup/pending/* /data/data/*/app_webview*/BrowserMetrics/* /data/data/*/cache/* /data/data/*/code_cache/* /data/data/com.microsoft.office*/files/Microsoft/Office/* /data/data/com.microsoft.office*/files/temp*/* /data/local/tmp/* /data/media/0/*/.thumbnails/* /data/media/0/Android/data/*/cache/* /data/system/uiderrors.txt /data/user_de/*/*/cache/* /data/user_de/*/*/code_cache/*
