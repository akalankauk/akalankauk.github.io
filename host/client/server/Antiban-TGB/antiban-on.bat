@echo Start
adb kill-server
adb devices
adb connect 127.0.0.1:5555
echo Start
echo Please Wait
echo Processing...
adb -s 127.0.0.1:5555 shell sleep 2
adb -s 127.0.0.1:5555 shell am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity
adb -s 127.0.0.1:5555 shell sleep 3
adb -s 127.0.0.1:5555 shell cp /data/data/com.tencent.ig/lib/libgcloud.so /data/data/Magdy
adb -s 127.0.0.1:5555 shell cp /data/data/com.tencent.ig/lib/libtprt.so /data/data/Magdy
adb -s 127.0.0.1:5555 shell cp /data/data/com.tencent.ig/lib/libUE4.so /data/data/Magdy
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/lib/libtprt.so
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/lib/libUE4.so
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/lib/libgcloud.so
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/lib/libzip.so 
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/lib/libzlib.so
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/pri_tencent_analysis.db
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/tdm.db
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/tencent_analysis.db
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/xg_message.db
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/bugly_db_
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/config.db
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/iMSDK.db
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/__hs__db_issues
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/__hs__db_key_values
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/__hs__db_properties
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/__hs__db_sessions
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/__hs__db_support_key_values
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/__hs_log_store
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/__hs_db_helpshift_users
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/databases/beacon_db
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/shared_prefs/admob.xml
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/shared_prefs/beacon_cover.xml
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/shared_prefs/com.google.android.gms.measurement.prefs.xml
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/shared_prefs/com.tencent.ig_preferences.xml
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/shared_prefs/DENGTA_META.xml
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/shared_prefs/gsdk_prefs.xml
adb -s 127.0.0.1:5555 shell chmod -R 000 /data/data/com.tencent.ig/shared_prefs/HSJsonData.xml
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/iMSDK
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/ss_tmp
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/tss_tmp
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/cache
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/tbslog
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag
adb -s 127.0.0.1:5555 shell rm -rf /mnt/shell/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/app_crashrecord
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/AppEventsLogger.persistedevents
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/tpnlcache.data
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/google_app_measurement_local.db-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/pri_tencent_analysis.db-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/tencent_analysis.db-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/xg_message.db-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/google_app_measurement_local.db
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/pri_tencent_analysis.db
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/__hs__db_issues-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/__hs__db_key_values-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/tss_app_915c.dat
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/tss_cs_stat2.dat
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/files/tss.i.m.dat
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/__hs__db_sessions-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/__hs__db_support_key_values-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/bugly_db_-journal
adb -s 127.0.0.1:5555 shell rm -rf /data/data/com.tencent.ig/databases/__hs_log_store-journal
echo Done
exit /b
