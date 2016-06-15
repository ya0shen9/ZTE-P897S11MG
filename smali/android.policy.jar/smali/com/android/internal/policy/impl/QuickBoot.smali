.class public Lcom/android/internal/policy/impl/QuickBoot;
.super Ljava/lang/Object;
.source "QuickBoot.java"


# static fields
.field public static final QuickBootPowerOning:Ljava/lang/String; = "quick_boot_power_oning"

.field static final TAG:Ljava/lang/String; = "QuickBoot"


# instance fields
.field public final ACTION_ALARMSERVICE_QUICKBOOT:Ljava/lang/String;

.field public final ACTION_ALARM_SHUT_DOWN:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field mQuickBootReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private final playQuickbootAnim:Ljava/lang/Runnable;

.field private final stopQuickbootAnim:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    .line 42
    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mHandler:Landroid/os/Handler;

    .line 47
    const-string v1, "android.intent.action.ACTION_ALARM_SHUT_DOWN"

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->ACTION_ALARM_SHUT_DOWN:Ljava/lang/String;

    .line 48
    const-string v1, "android.intent.action.AS_QUICKBOOT"

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->ACTION_ALARMSERVICE_QUICKBOOT:Ljava/lang/String;

    .line 77
    new-instance v1, Lcom/android/internal/policy/impl/QuickBoot$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/QuickBoot$1;-><init>(Lcom/android/internal/policy/impl/QuickBoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->playQuickbootAnim:Ljava/lang/Runnable;

    .line 111
    new-instance v1, Lcom/android/internal/policy/impl/QuickBoot$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/QuickBoot$2;-><init>(Lcom/android/internal/policy/impl/QuickBoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->stopQuickbootAnim:Ljava/lang/Runnable;

    .line 237
    new-instance v1, Lcom/android/internal/policy/impl/QuickBoot$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/QuickBoot$3;-><init>(Lcom/android/internal/policy/impl/QuickBoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mQuickBootReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AS_QUICKBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.ACTION_ALARM_SHUT_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mQuickBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/QuickBoot;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/QuickBoot;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot;->stopQuickbootAnim:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/QuickBoot;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/QuickBoot;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/QuickBoot;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/QuickBoot;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->quickBootComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/QuickBoot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/QuickBoot;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->isInQuickBootPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/QuickBoot;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/QuickBoot;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method private isInQuickBootPowerOff()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    const-string v4, "persist.sys.quickboot"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "quickbootVal":I
    const-string v4, "service.quickboot.state"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 292
    .local v1, "quickboot_state":I
    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 295
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private quickBootComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->setHibernateFinishState()V

    .line 126
    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.quickboot.modereset"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "quickbootmodereset":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.quickboot.modereset"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->resetAirplaneModeSet()V

    .line 133
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intentBoot":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method private resetAirplaneModeSet()V
    .locals 18

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 147
    .local v11, "res":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "persist.sys.qbGpsWasOn"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 148
    .local v3, "gpsWasOn":I
    const/4 v15, 0x1

    if-ne v3, v15, :cond_0

    .line 149
    const-string v15, "gps"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 151
    :cond_0
    const-string v15, "QuickBoot"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "quickboot on: recovered GPS: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v15, "wifi"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v13

    .line 155
    .local v13, "wifi":Landroid/net/wifi/IWifiManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "persist.sys.quickboot.wifiwason"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 157
    .local v14, "wifiWasOn":I
    if-eqz v13, :cond_1

    .line 158
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 159
    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v13, v15}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :cond_1
    :goto_0
    const-string v15, "QuickBoot"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "quickboot on: recovered WI-FI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v15, "nfc"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v7

    .line 181
    .local v7, "nfc":Landroid/nfc/INfcAdapter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "persist_sys_qbnfcWasOn"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 183
    .local v8, "nfcWasOn":I
    if-eqz v7, :cond_2

    .line 184
    const/4 v15, 0x1

    if-ne v8, v15, :cond_2

    .line 185
    :try_start_1
    invoke-interface {v7}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 190
    :cond_2
    :goto_1
    const-string v15, "QuickBoot"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "quickboot on: recovered NFC: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 194
    .local v5, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "persist.sys.quickboot.btwason"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, "bluetoothWasOn":I
    if-eqz v5, :cond_3

    .line 196
    const/4 v15, 0x1

    if-ne v1, v15, :cond_3

    .line 197
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 201
    :cond_3
    const-string v15, "QuickBoot"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "quickboot on: recovered bluetooth: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v15, "phone"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 205
    .local v9, "phone":Lcom/android/internal/telephony/ITelephony;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "persist.sys.quickboot.radiowason"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 207
    .local v10, "radioChannel":I
    :try_start_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 208
    const-string v15, "phone_msim"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v6

    .line 209
    .local v6, "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v6, :cond_6

    .line 210
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v15

    if-ge v4, v15, :cond_6

    .line 211
    const/4 v15, 0x1

    shl-int/2addr v15, v4

    and-int/2addr v15, v10

    if-lez v15, :cond_4

    .line 212
    const-string v15, "QuickBoot"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Turning on radio on Subscription :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v15, 0x1

    invoke-interface {v6, v15, v4}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    .line 210
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 219
    .end local v4    # "i":I
    .end local v6    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_5
    if-eqz v9, :cond_6

    .line 220
    and-int/lit8 v15, v10, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 221
    const-string v15, "QuickBoot"

    const-string v16, "Turning on radio on Subscription"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v15, 0x1

    invoke-interface {v9, v15}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    :cond_6
    :goto_3
    const-string v15, "QuickBoot"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "quickboot on:recovered airplanemode: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "persist_sys_usb_config"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 233
    .local v12, "usbConfig":Ljava/lang/String;
    const-string v15, "sys.usb.config"

    invoke-static {v15, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v15, "QuickBoot"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "quickboot on:recovered usb:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 226
    .end local v12    # "usbConfig":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v15, "QuickBoot"

    const-string v16, "RemoteException during radio restore"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 162
    .end local v1    # "bluetoothWasOn":I
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v5    # "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v7    # "nfc":Landroid/nfc/INfcAdapter;
    .end local v8    # "nfcWasOn":I
    .end local v9    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v10    # "radioChannel":I
    :catch_1
    move-exception v15

    goto/16 :goto_0

    .line 188
    .restart local v7    # "nfc":Landroid/nfc/INfcAdapter;
    .restart local v8    # "nfcWasOn":I
    :catch_2
    move-exception v15

    goto/16 :goto_1
.end method

.method private setHibernateFinishState()V
    .locals 4

    .prologue
    .line 140
    const-string v1, "sys.hibernate.state"

    const-string v2, "unknow"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "sys.hibernate.state"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method


# virtual methods
.method public quickBootPowerOn()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 63
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mPowerManager:Landroid/os/PowerManager;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mHandler:Landroid/os/Handler;

    .line 65
    const-string v1, "service.quickboot.state"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mQuitBootWakeLock2"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 68
    .local v0, "mQuitBootWakeLock2":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 69
    const-string v1, "chargerQuickboot"

    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "chargerQuickboot"

    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 71
    const-string v1, "QuickBoot"

    const-string v2, "quickboot stop chargerQuickboot."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_boot_power_oning"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->playQuickbootAnim:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method
