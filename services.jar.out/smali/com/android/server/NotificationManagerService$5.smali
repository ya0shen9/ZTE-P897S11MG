.class Lcom/android/server/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1180
    .local v9, action:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1181
    .local v21, queryRestart:Z
    const/16 v19, 0x0

    .line 1182
    .local v19, queryRemove:Z
    const/16 v17, 0x0

    .line 1183
    .local v17, packageChanged:Z
    const/4 v12, 0x1

    .line 1185
    .local v12, cancelNotifications:Z
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1191
    :cond_0
    const/16 v18, 0x0

    .line 1192
    .local v18, pkgList:[Ljava/lang/String;
    if-eqz v19, :cond_3

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v20, 0x1

    .line 1194
    .local v20, queryReplace:Z
    :goto_0
    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryReplace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1196
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1228
    :goto_1
    const/4 v10, 0x0

    .line 1229
    .local v10, anyListenersInvolved:Z
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    array-length v1, v0

    if-lez v1, :cond_b

    .line 1230
    move-object/from16 v11, v18

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    aget-object v2, v11, v15

    .line 1231
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v21, :cond_a

    const/4 v5, 0x1

    :goto_3
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 1235
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1236
    const/4 v10, 0x1

    .line 1230
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1192
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v10           #anyListenersInvolved:Z
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v20           #queryReplace:Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_0

    .line 1197
    .restart local v20       #queryReplace:Z
    :cond_4
    if-eqz v21, :cond_5

    .line 1198
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 1200
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 1201
    .local v22, uri:Landroid/net/Uri;
    if-nez v22, :cond_7

    .line 1285
    .end local v18           #pkgList:[Ljava/lang/String;
    .end local v20           #queryReplace:Z
    .end local v22           #uri:Landroid/net/Uri;
    :cond_6
    :goto_4
    return-void

    .line 1204
    .restart local v18       #pkgList:[Ljava/lang/String;
    .restart local v20       #queryReplace:Z
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1205
    .restart local v2       #pkgName:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1208
    if-eqz v17, :cond_9

    .line 1211
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 1213
    .local v14, enabled:I
    const/4 v1, 0x1

    if-eq v14, v1, :cond_8

    if-nez v14, :cond_9

    .line 1215
    :cond_8
    const/4 v12, 0x0

    .line 1225
    .end local v14           #enabled:I
    :cond_9
    :goto_5
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18           #pkgList:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v18, v1

    .restart local v18       #pkgList:[Ljava/lang/String;
    goto :goto_1

    .line 1217
    :catch_0
    move-exception v13

    .line 1221
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "NotificationService"

    const-string v3, "Exception trying to look up app enabled setting"

    invoke-static {v1, v3, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1232
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v22           #uri:Landroid/net/Uri;
    .restart local v10       #anyListenersInvolved:Z
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v16       #len$:I
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 1241
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v16           #len$:I
    :cond_b
    if-eqz v10, :cond_6

    .line 1243
    if-nez v20, :cond_c

    .line 1244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->disableNonexistentListeners()V

    .line 1248
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    goto :goto_4

    .line 1250
    .end local v10           #anyListenersInvolved:Z
    .end local v18           #pkgList:[Ljava/lang/String;
    .end local v20           #queryReplace:Z
    :cond_d
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 1255
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    .line 1256
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1257
    :cond_e
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 1260
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    .line 1261
    monitor-exit v3

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1262
    :cond_f
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1266
    :cond_10
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1267
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1268
    .local v8, userHandle:I
    if-ltz v8, :cond_6

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_4

    .line 1271
    .end local v8           #userHandle:I
    :cond_11
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 1274
    :cond_12
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 1279
    :cond_13
    const-string v1, "com.android.server.NotificationManager.NTF_ALARM"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mNotificationAlarm:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_4
.end method
