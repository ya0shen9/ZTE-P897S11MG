.class public final Lcom/android/server/pm/HibernateThread;
.super Ljava/lang/Thread;
.source "HibernateThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x7d0

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_RADIO_WAIT_TIME:I = 0xbb8

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x1388

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "HibernateThread"

.field private static isCharging:Z

.field private static mProcess:Ljava/lang/Process;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sInstance:Lcom/android/server/pm/HibernateThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private DEBUG:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mChargerHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPackageDontKillSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 117
    sput-boolean v1, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    .line 132
    sput-boolean v1, Lcom/android/server/pm/HibernateThread;->isCharging:Z

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/HibernateThread;->DEBUG:Z

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/HibernateThread;->mChargerHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/HibernateThread;->mPackageDontKillSet:Ljava/util/HashSet;

    .line 141
    return-void
.end method

.method private Hibernate()V
    .locals 5

    .prologue
    .line 618
    iget-object v3, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/pm/HibernateThread;->forceKillActiveServices(Landroid/content/Context;)V

    .line 624
    iget-object v3, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 626
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v3, "HibernateThread"

    const-string v4, "pm.gotoSleep.........."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 631
    const-string v3, "service.quickboot.state"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2}, Landroid/os/SystemVibrator;-><init>()V

    .line 635
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    sget-object v3, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 641
    sget-object v3, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 643
    :cond_0
    sget-object v3, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    if-eqz v3, :cond_1

    .line 644
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 645
    sget-object v3, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 646
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    .line 648
    :cond_1
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HibernateThread"

    const-string v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static PowerShutdown()V
    .locals 0

    .prologue
    .line 788
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 789
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/server/pm/HibernateThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/HibernateThread;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/HibernateThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/HibernateThread;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/pm/HibernateThread;->DEBUG:Z

    return v0
.end method

.method private static beWallpaperApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 652
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 654
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 655
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 656
    .local v3, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 657
    const/4 v4, 0x1

    .line 660
    .end local v3    # "rsi":Landroid/content/pm/ServiceInfo;
    :goto_1
    return v4

    .line 654
    .restart local v3    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .end local v3    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 218
    sget-object v8, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 219
    :try_start_0
    sget-boolean v5, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    if-eqz v5, :cond_0

    .line 220
    const-string v5, "HibernateThread"

    const-string v6, "Shutdown sequence already running, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v8

    .line 280
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    .line 224
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand.pause"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "endmusicIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    new-instance v2, Landroid/content/Intent;

    const-string v5, "zte.com.cn.action.quickshutdown"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, "intentshutdown":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    sput-object v5, Lcom/android/server/pm/HibernateThread;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 235
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 236
    .local v3, "mWm":Landroid/view/IWindowManager;
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 237
    .local v4, "wm":Landroid/view/WindowManager;
    const-string v5, "HibernateThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Shutdown getRotation() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v3, v5}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 241
    const-string v5, "persist.sys.rotationconfig"

    const-string v8, "1"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v5, "HibernateThread"

    const-string v8, "Shutdown freezeRotation "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :goto_1
    new-instance v5, Lcom/android/server/pm/HibernateThread;

    invoke-direct {v5}, Lcom/android/server/pm/HibernateThread;-><init>()V

    sput-object v5, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    .line 252
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/shutdownanimation.zip"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "/system/bin/bootanimation"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "-s"

    aput-object v10, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    sput-object v5, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    :goto_2
    sget-object v5, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    iput-object p0, v5, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    .line 272
    sget-object v8, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v8, Lcom/android/server/pm/HibernateThread;->mPowerManager:Landroid/os/PowerManager;

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "plug_Type"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_3
    sput-boolean v5, Lcom/android/server/pm/HibernateThread;->isCharging:Z

    .line 277
    sget-object v5, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    new-instance v6, Lcom/android/server/pm/HibernateThread$2;

    invoke-direct {v6}, Lcom/android/server/pm/HibernateThread$2;-><init>()V

    iput-object v6, v5, Lcom/android/server/pm/HibernateThread;->mHandler:Landroid/os/Handler;

    .line 279
    sget-object v5, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    invoke-virtual {v5}, Lcom/android/server/pm/HibernateThread;->start()V

    goto/16 :goto_0

    .line 224
    .end local v0    # "endmusicIntent":Landroid/content/Intent;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "intentshutdown":Landroid/content/Intent;
    .end local v3    # "mWm":Landroid/view/IWindowManager;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 248
    .restart local v0    # "endmusicIntent":Landroid/content/Intent;
    .restart local v2    # "intentshutdown":Landroid/content/Intent;
    .restart local v3    # "mWm":Landroid/view/IWindowManager;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    :cond_1
    const-string v5, "persist.sys.rotationconfig"

    const-string v8, "0"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    .line 262
    sget-object v5, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x10400bf

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    sget-object v5, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x10400c3

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 264
    sget-object v5, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 265
    sget-object v5, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 266
    sget-object v5, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v8, 0x7d9

    invoke-virtual {v5, v8}, Landroid/view/Window;->setType(I)V

    .line 268
    sget-object v5, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    goto :goto_2

    :cond_3
    move v5, v7

    .line 273
    goto :goto_3

    .line 256
    :catch_0
    move-exception v5

    goto :goto_2

    .line 244
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method private displayHomeScreen()V
    .locals 4

    .prologue
    .line 740
    const-string v2, "HibernateThread"

    const-string v3, "start homescreen activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static forceKillActiveServices(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 663
    const-string v11, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 664
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 665
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 668
    .local v7, "listRun":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 669
    .local v10, "ti":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 670
    .local v9, "size":I
    const/4 v3, 0x0

    .line 671
    .local v3, "flag":I
    iget v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.mms"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "zte.com.cn.driverMode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 673
    const-string v11, "HibernateThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "QuickBoot DOWN do not kill persist process="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_1
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.launcher"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.inputmethod.latin"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.systemui"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.google.process.gapps"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.smspush"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.phone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.google.android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "android.process.media"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.qihoo360"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "zte.com.cn.alarmclock"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.quicinc.cne"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.providers.calendar"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.deskclock"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.voicedialer"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.qualcomm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.qualcomm.wiper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.nfc3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.android.settings"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.zte.milauncher"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "system"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 698
    :cond_2
    const-string v11, "HibernateThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "QuickBoot DOWN do not kill protect process="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 702
    :cond_3
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/android/server/pm/HibernateThread;->beWallpaperApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 703
    const-string v11, "HibernateThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "QuickBoot DOWN do not kill wallpaper process="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 707
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_input_method"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "currentInputMethod":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 711
    const-string v11, "HibernateThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "QuickBoot DOWN do not kill InputMethod process="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 715
    :cond_5
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-direct {v2, v11, v12, v13}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 716
    .local v2, "dp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_6

    .line 717
    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-ne v12, v11, :cond_7

    .line 718
    const/4 v3, 0x1

    .line 723
    :cond_6
    if-nez v3, :cond_0

    .line 724
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 716
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 729
    .end local v1    # "currentInputMethod":Ljava/lang/String;
    .end local v2    # "dp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "flag":I
    .end local v4    # "i":I
    .end local v9    # "size":I
    .end local v10    # "ti":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 730
    .restart local v10    # "ti":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v11, "HibernateThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "QuickBoot DOWN quickShutKill Kill ti.processName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 733
    .end local v10    # "ti":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 759
    if-eqz p0, :cond_0

    .line 760
    const-string v2, "HibernateThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    const-string v2, "HibernateThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 786
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HibernateThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 768
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 770
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 778
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 779
    :catch_1
    move-exception v2

    goto :goto_0

    .line 771
    :catch_2
    move-exception v0

    .line 773
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "HibernateThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private resetProperty()V
    .locals 2

    .prologue
    .line 792
    const-string v0, "sys.hibernate.state"

    const-string v1, "hibernating"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "battery_level"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "batteryLevel":I
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 155
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 194
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v6, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 162
    :try_start_0
    sget-boolean v5, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    if-eqz v5, :cond_1

    .line 163
    const-string v5, "HibernateThread"

    const-string v7, "Request to shutdown already running, returning."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v6

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    const-string v5, "HibernateThread"

    const-string v6, "quick boot power off...."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 171
    .local v3, "longPressBehavior":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const v4, 0x10400c5

    .line 174
    .local v4, "resourceId":I
    :goto_1
    const-string v5, "HibernateThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v1, Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "closer":Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x10400bf

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/android/server/pm/HibernateThread$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/HibernateThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 187
    .local v2, "dialog":Landroid/app/AlertDialog;
    iput-object v2, v1, Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 188
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 189
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 190
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 171
    .end local v1    # "closer":Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "resourceId":I
    :cond_2
    const v4, 0x10400c4

    goto :goto_1

    .line 192
    .end local v3    # "longPressBehavior":I
    :cond_3
    invoke-static {p0}, Lcom/android/server/pm/HibernateThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    const/4 v11, 0x0

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v1, v7, v9

    .line 373
    .local v1, "endTime":J
    const/4 v7, 0x1

    new-array v0, v7, [Z

    .line 374
    .local v0, "done":[Z
    new-instance v6, Lcom/android/server/pm/HibernateThread$5;

    invoke-direct {v6, p0, v1, v2, v0}, Lcom/android/server/pm/HibernateThread$5;-><init>(Lcom/android/server/pm/HibernateThread;J[Z)V

    .line 584
    .local v6, "t":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 586
    int-to-long v7, p1

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 589
    :goto_0
    aget-boolean v7, v0, v11

    if-nez v7, :cond_0

    .line 590
    const-string v7, "HibernateThread"

    const-string v8, "Timed out waiting for Bluetooth Radio and Wifi shutdown."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v7, 0x0

    invoke-static {v11, v7}, Lcom/android/server/pm/HibernateThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 614
    :goto_1
    return-void

    .line 593
    :cond_0
    sget-object v7, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    if-eqz v7, :cond_3

    .line 594
    const-string v7, "HibernateThread"

    const-string v8, "Waiting for shutdown animation..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-object v7, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 596
    .local v5, "stream":Ljava/io/InputStream;
    if-eqz v5, :cond_2

    .line 598
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 599
    .local v3, "now":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    .line 600
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_4

    .line 605
    :cond_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 609
    .end local v3    # "now":J
    :cond_2
    :goto_3
    const-string v7, "HibernateThread"

    const-string v8, "Shutdown animation completed."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/HibernateThread;->Hibernate()V

    goto :goto_1

    .line 603
    .restart local v3    # "now":J
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_4
    const-wide/16 v7, 0x1f4

    :try_start_2
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 606
    .end local v3    # "now":J
    :catch_0
    move-exception v7

    goto :goto_3

    .line 587
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/HibernateThread;->mActionDone:Z

    .line 285
    iget-object v0, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 300
    invoke-direct {p0}, Lcom/android/server/pm/HibernateThread;->displayHomeScreen()V

    .line 302
    invoke-direct {p0}, Lcom/android/server/pm/HibernateThread;->resetProperty()V

    .line 304
    const-string v6, "persist.sys.hibernate.debug"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/pm/HibernateThread;->DEBUG:Z

    .line 306
    const-string v6, "persist.sys.usb.config"

    const-string v7, "mtp,adb"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "usbConfig":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "persist_sys_usb_config"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    const-string v6, "mass_storage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    sget-object v6, Lcom/android/server/pm/HibernateThread;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 312
    :cond_0
    const-string v6, "HibernateThread"

    const-string v7, "quick boot,set usb type to charge_only when power off"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v6, "sys.usb.config"

    const-string v7, "charge_only"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/android/server/pm/HibernateThread$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/HibernateThread$3;-><init>(Lcom/android/server/pm/HibernateThread;)V

    .line 322
    .local v0, "br":Landroid/content/BroadcastReceiver;
    const-string v6, "HibernateThread"

    const-string v7, "Sending hibernate broadcast..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    add-long v3, v6, v8

    .line 325
    .local v3, "endTime":J
    iget-object v7, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v7

    .line 326
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/pm/HibernateThread;->mActionDone:Z

    if-nez v6, :cond_1

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v1, v3, v8

    .line 328
    .local v1, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v6, v1, v8

    if-gtz v6, :cond_3

    .line 329
    const-string v6, "HibernateThread"

    const-string v8, "hibernate broadcast timed out"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v1    # "delay":J
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "persist.sys.quickboot.modereset"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    const/16 v6, 0xbb8

    invoke-direct {p0, v6}, Lcom/android/server/pm/HibernateThread;->shutdownRadios(I)V

    .line 345
    sget-boolean v6, Lcom/android/server/pm/HibernateThread;->isCharging:Z

    if-ne v6, v10, :cond_2

    .line 346
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mChargerHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/HibernateThread$4;

    invoke-direct {v7, p0}, Lcom/android/server/pm/HibernateThread$4;-><init>(Lcom/android/server/pm/HibernateThread;)V

    const-wide/16 v8, 0x1770

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    :cond_2
    sget-object v7, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 364
    const/4 v6, 0x0

    :try_start_1
    sput-boolean v6, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    .line 365
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    .line 366
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 367
    return-void

    .line 333
    .restart local v1    # "delay":J
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v6, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v6

    goto :goto_0

    .line 337
    .end local v1    # "delay":J
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 366
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method
