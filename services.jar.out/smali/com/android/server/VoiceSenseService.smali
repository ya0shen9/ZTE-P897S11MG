.class public Lcom/android/server/VoiceSenseService;
.super Landroid/os/IVoiceSenseService$Stub;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoiceSenseService$VoiseSenseObserver;,
        Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;,
        Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;,
        Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final QUICKSHUTDOWN_ACTION:Ljava/lang/String; = "zte.com.cn.action.quickshutdown"

.field private static final TAG:Ljava/lang/String; = "VoiceSense-Service"

.field private static final VOICEASSISTANT_INIT_FAILED_ACTION:Ljava/lang/String; = "VOICEASSISTANT_INIT_ERROR"

.field private static final VOICEASSISTANT_INIT_FAILED_REQUEST:I = 0x0

.field private static final VOICEASSISTANT_INIT_READY_ACTION:Ljava/lang/String; = "VOICEASSISTANT_INIT_READY"

.field private static final VOICEASSISTANT_SERVICE_CRASH_ACTION:Ljava/lang/String; = "com.cn.zte.voiceassistant.service.crash"

.field protected static final VOICEASSIT_INIT_WAIT_TIME:I = 0x1d4c0

.field private static final VOICESENSE_DISABLED:I = 0x0

.field private static final VOICESENSE_ENABLED:I = 0x1

.field private static final VOICE_ASSISTANT_DRIVER_ASSISTANT:Ljava/lang/String; = "voice_assistant_driver_assistant"

.field private static final VOICE_ASSISTANT_USER_DEFINE_MAGIC_2:Ljava/lang/String; = "voice_assistant_user_define_magic_2"

.field private static final VOICE_ASSISTANT_USER_DEFINE_MAGIC_3:Ljava/lang/String; = "voice_assistant_user_define_magic_3"

.field private static final VOICE_ASSISTANT_USER_DEFINE_MAGIC_4:Ljava/lang/String; = "voice_assistant_user_define_magic_4"

.field private static final VOICE_ASSISTANT_ZTE_VOICE_SWITCH:Ljava/lang/String; = "zte_voice_switch"

.field private static final VOICE_WAKEUP_ENABLED_ACTION:Ljava/lang/String; = "android.server.VOICE_WAKEUP_ENABLED_ACTION"

.field private static final VOICE_WAKEUP_FAILED_ACTION:Ljava/lang/String; = "android.server.VOICE_WAKEUP_FAILED_ACTION"


# instance fields
.field private final OEW_KEYWORD_PATH:Ljava/lang/String;

.field private final VOICE_SENSE_KEYWORD_PATH:Ljava/lang/String;

.field private isAlarmSet:Z

.field private isBootCompleted:Z

.field private isQuickShutDown:Z

.field private isRegisted:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

.field private mIsVoiceWakeupKey:Z

.field private mIsVsOpen:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

.field private mVoiceAssistantReady:Z

.field private final mVoiceAssitAlias:[Ljava/lang/String;

.field private mVoiceAssitInitFailedIntent:Landroid/app/PendingIntent;

.field private mVoiceWakeupReady:Z

.field private final mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWorker:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

.field private vsObserver:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Landroid/os/IVoiceSenseService$Stub;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/etc/firmware/audience/cvqmodels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oemkw_nihaozhongxing.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->OEW_KEYWORD_PATH:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/voicesense/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audience-vs-kw-1.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->VOICE_SENSE_KEYWORD_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zte_voice_switch"

    aput-object v1, v0, v2

    const-string v1, "voice_assistant_driver_assistant"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "voice_assistant_user_define_magic_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "voice_assistant_user_define_magic_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "voice_assistant_user_define_magic_4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mVoiceAssitAlias:[Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/android/server/VoiceSenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VoiceSenseService$1;-><init>(Lcom/android/server/VoiceSenseService;)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/android/server/VoiceSenseService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VoiceSenseService$2;-><init>(Lcom/android/server/VoiceSenseService;)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    .line 209
    iput-object p1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    .line 210
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->registerForBroadcasts()V

    .line 211
    new-instance v0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    const-string v1, "VoiceSenseServiceWorker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;-><init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mWorker:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    .line 212
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mWorker:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    invoke-virtual {v0}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->start()V

    .line 213
    const-string v0, "VoiceSense-Service"

    const-string v1, "#### Spawned worker thread ####"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method static native abortWDBJni()V
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/server/VoiceSenseService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isVoiceSenseToggled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/VoiceSenseService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupEnabled()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isAudioUplinkActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupFailed()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;)Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/VoiceSenseService;->mHandler:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/VoiceSenseService;->vsObserver:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/VoiceSenseService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->transferKeywords()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/VoiceSenseService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceAssit()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isAudioActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceSense()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/VoiceSenseService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/VoiceSenseService;->isQuickShutDown:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/VoiceSenseService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/VoiceSenseService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceSense()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/VoiceSenseService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/VoiceSenseService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/VoiceSenseService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private disableVoiceAssit()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.SETTINGS_SWITCH_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method private disableVoiceSense()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-direct {p0, v2}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    .line 341
    iget-boolean v0, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    iput-boolean v2, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceWakeup()V

    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    .line 352
    return-void
.end method

.method private disableVoiceWakeup()V
    .locals 1

    .prologue
    .line 381
    const-string v0, "voice_sense=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method private enableVoiceAssit()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.SETTINGS_SWITCH_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method private enableVoiceSense()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    .line 329
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->registerForBroadcastsWhileEnabling()V

    .line 330
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceWakeup()V

    .line 335
    return-void
.end method

.method private enableVoiceWakeup()V
    .locals 2

    .prologue
    .line 363
    iget-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isBootCompleted:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->transferKeywords()I

    move-result v1

    if-gez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isAudioUplinkActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupEnabled()V

    .line 374
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isBootCompleted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isQuickShutDown:Z

    if-eqz v1, :cond_0

    .line 375
    :cond_2
    const-string v1, "voice_sense=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_3
    new-instance v0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;

    const-string v1, "VoiceSenseEnablerThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;-><init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V

    .line 371
    .local v0, enabler:Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;
    invoke-virtual {v0}, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->start()V

    goto :goto_1
.end method

.method private getKeywordIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mVoiceAssitAlias:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mVoiceAssitAlias:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    :cond_0
    return v0

    .line 438
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static native getKeywordJni(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native getKeywordRDBJni(Ljava/lang/String;)I
.end method

.method private getPersistedVoiceSenseState(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v3, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 420
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 423
    :goto_0
    return v2

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method static native getValueJni(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private isAudioActive()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 465
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 466
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    :cond_0
    :goto_1
    return v3

    .line 467
    :cond_1
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_2
    const/4 v2, 0x1

    .local v2, j:I
    :goto_2
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 470
    invoke-static {v2}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 472
    :cond_3
    iget-object v5, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 473
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 475
    goto :goto_1
.end method

.method private isAudioUplinkActive()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 479
    const/4 v1, 0x1

    .local v1, j:I
    :goto_0
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 480
    invoke-static {v1}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    :cond_0
    :goto_1
    return v2

    .line 479
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_2
    iget-object v3, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 483
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 485
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isVoiceSenseToggled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 428
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/VoiceSenseService;->mVoiceAssitAlias:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/android/server/VoiceSenseService;->mVoiceAssitAlias:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/server/VoiceSenseService;->getPersistedVoiceSenseState(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 433
    :goto_1
    return v1

    .line 428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 489
    const-string v0, "VoiceSense-Service"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private notifyVoiceWakeupEnabled()V
    .locals 2

    .prologue
    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.VOICE_WAKEUP_ENABLED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 657
    return-void
.end method

.method private notifyVoiceWakeupFailed()V
    .locals 2

    .prologue
    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.VOICE_WAKEUP_FAILED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 662
    return-void
.end method

.method private persistVoiceSenseState(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "state"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    return-void
.end method

.method static native readSysfsJni(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v1, "com.cn.zte.voiceassistant.service.crash"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "zte.com.cn.action.quickshutdown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VoiceSenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 452
    return-void
.end method

.method private registerForBroadcastsWhileEnabling()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.server.VOICE_WAKEUP_ENABLED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v1, "android.server.VOICE_WAKEUP_FAILED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    .line 462
    return-void
.end method

.method static native runSysCmdJni(Ljava/lang/String;)I
.end method

.method static native setKeywordJni(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native setKeywordWDBJni(Ljava/lang/String;I)I
.end method

.method static native setKeywordsWDBJni([Ljava/lang/String;[II)I
.end method

.method static native setValueJni(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setVoiceAssitInitAlarm()V
    .locals 7

    .prologue
    .line 355
    const v0, 0x1d4c0

    .line 356
    .local v0, triggerTime:I
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/VoiceSenseService;->mVoiceAssitInitFailedIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 359
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isAlarmSet:Z

    .line 360
    return-void
.end method

.method private setVoiceStateState(I)V
    .locals 3
    .parameter "vsState"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceStateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->log(Ljava/lang/String;)V

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOICESENSE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    const-string v1, "android.media.EXTRA_VOICESENSE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 409
    return-void
.end method

.method private transferKeywords()I
    .locals 6

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, f_in:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 496
    .local v3, f_out:Ljava/io/FileOutputStream;
    const-wide/16 v1, 0x0

    .line 498
    .local v1, f_in_len:J
    const/4 v4, -0x1

    .line 501
    .local v4, ret:I
    const/4 v5, 0x0

    return v5
.end method

.method static native writeSysfsJni(Ljava/lang/String;Ljava/lang/String;I)I
.end method


# virtual methods
.method public abortWDB()V
    .locals 0

    .prologue
    .line 243
    invoke-static {}, Lcom/android/server/VoiceSenseService;->abortWDBJni()V

    .line 244
    return-void
.end method

.method public getKeyword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "sysfs"
    .parameter "file"

    .prologue
    .line 256
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->getKeywordJni(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeywordRDB(Ljava/lang/String;)I
    .locals 1
    .parameter "file"

    .prologue
    .line 247
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->getKeywordRDBJni(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 229
    const-string v0, "VoiceSense-Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### getValue ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->getValueJni(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSenseState()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public readSysfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sysfs"

    .prologue
    .line 268
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->readSysfsJni(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runSysCmd(Ljava/lang/String;)I
    .locals 1
    .parameter "cmd"

    .prologue
    .line 260
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->runSysCmdJni(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setKeyword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "sysfs"
    .parameter "file"

    .prologue
    .line 252
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->setKeywordJni(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setKeywordWDB(Ljava/lang/String;I)I
    .locals 1
    .parameter "file"
    .parameter "keyword_id"

    .prologue
    .line 235
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->setKeywordWDBJni(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setKeywordsWDB([Ljava/lang/String;[II)I
    .locals 1
    .parameter "file"
    .parameter "ids"
    .parameter "noOfKw"

    .prologue
    .line 239
    invoke-static {p1, p2, p3}, Lcom/android/server/VoiceSenseService;->setKeywordsWDBJni([Ljava/lang/String;[II)I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "id"
    .parameter "val"

    .prologue
    .line 224
    const-string v0, "VoiceSense-Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### setValue ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->setValueJni(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setVoiceSenseEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 273
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setVoiceSenseEnabledByKey(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "key"
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 277
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 278
    .local v0, ident:J
    const-string v5, "_needdelete"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 279
    .local v2, index:I
    move-object v4, p1

    .line 280
    .local v4, tmpKey:Ljava/lang/String;
    const/4 v3, 0x0

    .line 282
    .local v3, isNeedDelete:Z
    const-string v5, "zte_voice_switch"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/VoiceSenseService;->mIsVoiceWakeupKey:Z

    .line 287
    :goto_0
    if-lez v2, :cond_0

    .line 288
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 289
    const/4 v3, 0x1

    .line 292
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/VoiceSenseService;->getKeywordIndex(Ljava/lang/String;)I

    move-result v2

    .line 294
    if-eqz p2, :cond_4

    .line 295
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isVoiceSenseToggled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceWakeup()V

    .line 298
    :cond_1
    invoke-static {v2}, Lcom/android/server/FileOps;->turnOnVsKw(I)V

    .line 299
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/VoiceSenseService;->persistVoiceSenseState(Ljava/lang/String;I)V

    .line 300
    iget-boolean v5, p0, Lcom/android/server/VoiceSenseService;->mIsVoiceWakeupKey:Z

    if-eqz v5, :cond_3

    .line 301
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceSense()V

    .line 323
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return v6

    .line 285
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/VoiceSenseService;->mIsVoiceWakeupKey:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    .end local v0           #ident:J
    .end local v2           #index:I
    .end local v3           #isNeedDelete:Z
    .end local v4           #tmpKey:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 303
    .restart local v0       #ident:J
    .restart local v2       #index:I
    .restart local v3       #isNeedDelete:Z
    .restart local v4       #tmpKey:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceWakeup()V

    goto :goto_1

    .line 306
    :cond_4
    invoke-static {v2, v3}, Lcom/android/server/FileOps;->turnOffVsKw(IZ)V

    .line 307
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/VoiceSenseService;->persistVoiceSenseState(Ljava/lang/String;I)V

    .line 308
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isVoiceSenseToggled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 309
    iget-boolean v5, p0, Lcom/android/server/VoiceSenseService;->mIsVoiceWakeupKey:Z

    if-eqz v5, :cond_5

    .line 310
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceSense()V

    .line 314
    :goto_2
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceWakeup()V

    goto :goto_1

    .line 312
    :cond_5
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceWakeup()V

    goto :goto_2

    .line 316
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/VoiceSenseService;->mIsVoiceWakeupKey:Z

    if-eqz v5, :cond_7

    .line 317
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceSense()V

    goto :goto_1

    .line 319
    :cond_7
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceWakeup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public writeSysfs(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "sysfs"
    .parameter "value"
    .parameter "size"

    .prologue
    .line 264
    invoke-static {p1, p2, p3}, Lcom/android/server/VoiceSenseService;->writeSysfsJni(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
