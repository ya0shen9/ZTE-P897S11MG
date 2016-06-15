.class Lcom/android/server/AutoLaunchManagerService;
.super Landroid/app/IAutoLaunchManager$Stub;
.source "AutoLaunchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;,
        Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;,
        Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final MSG_BUILD_AUTOPKGS:I = 0x2

.field private static final MSG_REBUILD_PKG:I = 0x3

.field private static final MSG_UPDATE_COMPONENTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutoLaunchManager"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mAutoLaunchActions:[Ljava/lang/String;

.field private mAutoLaunchPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoLaunchPkgsDisabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoLaunchPkgsStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBulidAutoListCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 514
    invoke-direct {p0}, Landroid/app/IAutoLaunchManager$Stub;-><init>()V

    .line 92
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->obj:Ljava/lang/Object;

    .line 103
    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.intent.action.MEDIA_CHECKING"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.intent.action.PROVIDER_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android.intent.action.TIME_SET"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "android.intent.action.USER_PRESENT"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "android.location.PROVIDERS_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchActions:[Ljava/lang/String;

    .line 515
    iput-object p1, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 517
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAm:Landroid/app/ActivityManager;

    .line 518
    iput-boolean v4, p0, Lcom/android/server/AutoLaunchManagerService;->mBulidAutoListCompleted:Z

    .line 519
    new-instance v0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;-><init>(Lcom/android/server/AutoLaunchManagerService;)V

    .line 521
    .local v0, "receiver":Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;
    new-instance v1, Lcom/android/server/AutoLaunchManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AutoLaunchManagerService$1;-><init>(Lcom/android/server/AutoLaunchManagerService;)V

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;

    .line 557
    const-string v1, "AutoLaunchManager"

    const-string v2, "create AutoLaunchManagerService success."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AutoLaunchManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/AutoLaunchManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/AutoLaunchManagerService;->mBulidAutoListCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/AutoLaunchManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/AutoLaunchManagerService;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AutoLaunchManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AutoLaunchManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AutoLaunchManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AutoLaunchManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsDisabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AutoLaunchManagerService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/AutoLaunchManagerService;->readAutoLaunchRestrictionsLPr(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/AutoLaunchManagerService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AutoLaunchManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/AutoLaunchManagerService;->writeAutoLaunchRestrictionsLPr(Ljava/util/List;)V

    return-void
.end method

.method private hasNewUpdate(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "autolist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;

    .line 128
    .local v1, "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    iget-object v2, v1, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x1

    .line 132
    .end local v1    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAutoLaunchPackage(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 359
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchActions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 360
    .local v0, "action":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 362
    .local v4, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 367
    .local v6, "pkgInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x9

    if-nez v9, :cond_1

    .line 368
    iget-object v9, p0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 369
    .local v7, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 370
    const-string v8, "AutoLaunchManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is auto launch, resolveInfoList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v8, 0x1

    .line 375
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pkgInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_1
    return v8

    .line 363
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 359
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "pkgInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService;->mWhitelist:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v2

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPkgAutoLaunchEnabled(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 380
    .local v4, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 381
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 384
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 386
    .local v2, "enableSetting":I
    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    .line 387
    const/4 v5, 0x1

    .line 391
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "enableSetting":I
    .end local v4    # "resInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v5

    .line 380
    .restart local v4    # "resInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 391
    .end local v4    # "resInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private readAutoLaunchRestrictionsLPr(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "autolist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;>;"
    const-string v18, "AutoLaunchManager"

    const-string v19, "Reading auto launch restrictions"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v14, 0x0

    .line 162
    .local v14, "str":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/File;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v18

    const-string v19, "auto-launch-restrictions.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v3, "autoLaunchStateFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 252
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 170
    .end local v14    # "str":Ljava/io/FileInputStream;
    .local v15, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 171
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 179
    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object v14, v15

    .line 180
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    goto :goto_0

    .line 183
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :cond_3
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 185
    .local v9, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_e

    .line 187
    :cond_5
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 192
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 193
    .local v16, "tagName":Ljava/lang/String;
    const-string v18, "pkg"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 194
    new-instance v7, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;-><init>(Lcom/android/server/AutoLaunchManagerService;)V

    .line 195
    .local v7, "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 196
    .local v11, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 199
    .local v4, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/AutoLaunchManagerService;->hasNewUpdate(Ljava/util/List;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 200
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 246
    .end local v4    # "className":Ljava/lang/String;
    .end local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .end local v9    # "outerDepth":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_0
    move-exception v5

    move-object v14, v15

    .line 247
    .end local v15    # "str":Ljava/io/FileInputStream;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :goto_2
    const-string v18, "AutoLaunchManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading package manager stopped packages:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .restart local v9    # "outerDepth":I
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_6
    :try_start_2
    iput-object v11, v7, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->packageName:Ljava/lang/String;

    .line 205
    const/16 v18, 0x0

    const-string v19, "stopped"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, "stoppedStr":Ljava/lang/String;
    if-nez v13, :cond_b

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->isStopped:Z

    .line 208
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 210
    .local v10, "packageDepth":I
    :cond_7
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v10, :cond_c

    .line 212
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 216
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 217
    const-string v18, "disabled-components"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 218
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 220
    .local v8, "itemDepth":I
    :cond_9
    :goto_4
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v8, :cond_7

    .line 222
    :cond_a
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 227
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 228
    const-string v18, "item"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 229
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    new-instance v6, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;-><init>(Lcom/android/server/AutoLaunchManagerService;Landroid/content/ComponentName;I)V

    .line 231
    .local v6, "info":Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    const-string v18, "AutoLaunchManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add AutoLaunchInfo info from xml:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v7, v6}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->add(Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 249
    .end local v4    # "className":Ljava/lang/String;
    .end local v6    # "info":Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    .end local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .end local v8    # "itemDepth":I
    .end local v9    # "outerDepth":I
    .end local v10    # "packageDepth":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "stoppedStr":Ljava/lang/String;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_1
    move-exception v5

    move-object v14, v15

    .line 250
    .end local v15    # "str":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :goto_5
    const-string v18, "AutoLaunchManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading package manager stopped packages:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    .end local v5    # "e":Ljava/io/IOException;
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .restart local v9    # "outerDepth":I
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stoppedStr":Ljava/lang/String;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_b
    :try_start_3
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    goto/16 :goto_3

    .line 238
    .restart local v10    # "packageDepth":I
    :cond_c
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 240
    .end local v4    # "className":Ljava/lang/String;
    .end local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .end local v10    # "packageDepth":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "stoppedStr":Ljava/lang/String;
    :cond_d
    const-string v18, "AutoLaunchManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown element under <stopped-packages>: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 245
    .end local v16    # "tagName":Ljava/lang/String;
    :cond_e
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v14, v15

    .line 251
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 249
    .end local v9    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "type":I
    :catch_2
    move-exception v5

    goto :goto_5

    .line 246
    :catch_3
    move-exception v5

    goto/16 :goto_2
.end method

.method private readAutoLaunchWhiteList()V
    .locals 9

    .prologue
    .line 136
    const-string v6, "AutoLaunchManager"

    const-string v7, "Reading auto launch white list"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "str":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/autolaunch_whitelist.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v5, "whitelist":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    const-string v6, "AutoLaunchManager"

    const-string v7, "autorun: white list not exists!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v3, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/AutoLaunchManagerService;->mWhitelist:Ljava/util/ArrayList;

    .line 149
    iget-object v6, p0, Lcom/android/server/AutoLaunchManagerService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 150
    .local v4, "value":Ljava/lang/String;
    const-string v6, "AutoLaunchManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autorun: white pkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 152
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 153
    .end local v3    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    :goto_2
    const-string v6, "AutoLaunchManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autorun: failed to load white list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "AutoLaunchManager"

    const-string v7, "autorun: load white list success!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "str":Ljava/io/FileInputStream;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    :cond_1
    move-object v2, v3

    .line 154
    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    goto :goto_3

    .line 152
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private writeAutoLaunchRestrictionsLPr(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "autolist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;>;"
    const-string v12, "AutoLaunchManager"

    const-string v13, "Writing auto launch restrictions"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 339
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v1, Ljava/io/File;

    const/4 v12, 0x0

    invoke-static {v12}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v12

    const-string v13, "auto-launch-restrictions.xml"

    invoke-direct {v1, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .local v1, "autoLaunchStateFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 268
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 275
    .local v3, "fstr":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 276
    .local v11, "str":Ljava/io/BufferedOutputStream;
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 278
    .local v10, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v12, "utf-8"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 279
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 280
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 281
    const/4 v12, 0x0

    const-string v13, "package-restrictions"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 287
    .local v8, "itemSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v8, :cond_8

    .line 288
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;

    .line 289
    .local v7, "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    invoke-virtual {v7}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->size()I

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->get(I)Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    move-result-object v12

    iget v12, v12, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->componentState:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    .line 287
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 269
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .end local v8    # "itemSize":I
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v11    # "str":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 294
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .restart local v8    # "itemSize":I
    .restart local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11    # "str":Ljava/io/BufferedOutputStream;
    :cond_3
    const/4 v12, 0x0

    :try_start_2
    const-string v13, "pkg"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const/4 v12, 0x0

    const-string v13, "name"

    iget-object v14, v7, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->packageName:Ljava/lang/String;

    invoke-interface {v10, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    iget-boolean v12, v7, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->isStopped:Z

    if-eqz v12, :cond_4

    .line 301
    const/4 v12, 0x0

    const-string v13, "stopped"

    const-string v14, "true"

    invoke-interface {v10, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->size()I

    move-result v6

    .line 306
    .local v6, "infoSize":I
    if-lez v6, :cond_7

    .line 307
    const/4 v12, 0x0

    const-string v13, "disabled-components"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    if-ge v9, v6, :cond_6

    .line 309
    invoke-virtual {v7, v9}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->get(I)Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    move-result-object v5

    .line 310
    .local v5, "info":Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    iget v12, v5, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->componentState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 311
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    const/4 v12, 0x0

    const-string v13, "name"

    iget-object v14, v5, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->cn:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    :cond_5
    const-string v12, "AutoLaunchManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "xml file inner: AutoLaunchInfo info"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 317
    .end local v5    # "info":Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    :cond_6
    const/4 v12, 0x0

    const-string v13, "disabled-components"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    .end local v9    # "j":I
    :cond_7
    const/4 v12, 0x0

    const-string v13, "pkg"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 336
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v6    # "infoSize":I
    .end local v7    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .end local v8    # "itemSize":I
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v11    # "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    .line 337
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v12, "AutoLaunchManager"

    const-string v13, "Unable to write auto launch state, current changes will be lost at reboot"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 322
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v8    # "itemSize":I
    .restart local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11    # "str":Ljava/io/BufferedOutputStream;
    :cond_8
    const/4 v12, 0x0

    :try_start_3
    const-string v13, "package-restrictions"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 325
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 326
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 327
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1b0

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public getAutoLaunchPackages()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    const-string v11, "AutoLaunchManager"

    const-string v12, "getAutoLaunchPackages"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v12, p0, Lcom/android/server/AutoLaunchManagerService;->obj:Ljava/lang/Object;

    monitor-enter v12

    .line 731
    :try_start_0
    iget-boolean v11, p0, Lcom/android/server/AutoLaunchManagerService;->mBulidAutoListCompleted:Z

    if-nez v11, :cond_4

    .line 733
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgs:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 735
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    .line 736
    .local v9, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 738
    .local v8, "pkgInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x9

    if-nez v11, :cond_0

    .line 743
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchActions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v0, v1, v4

    .line 744
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v5, "intent":Landroid/content/Intent;
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const/16 v11, 0x20

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v13, 0x202

    invoke-virtual {v11, v5, v13}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 749
    .local v10, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 750
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgs:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/server/AutoLaunchManagerService;->isPkgAutoLaunchEnabled(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    .line 752
    .local v6, "isAutoEnabled":Z
    const-string v11, "AutoLaunchManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAutoLaunchPackages pkg: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is auto launch, resolveInfoList: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", auto: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 756
    .local v2, "enabled":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 767
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "enabled":Ljava/lang/Boolean;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "isAutoEnabled":Z
    .end local v10    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_0

    .line 768
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 773
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pkgInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 759
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "enabled":Ljava/lang/Boolean;
    .restart local v4    # "i$":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "isAutoEnabled":Z
    .restart local v7    # "len$":I
    .restart local v8    # "pkgInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v10    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    if-eqz v6, :cond_3

    .line 760
    :try_start_1
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 743
    .end local v2    # "enabled":Ljava/lang/Boolean;
    .end local v6    # "isAutoEnabled":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 773
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "len$":I
    .end local v8    # "pkgInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    iget-object v11, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgs:Ljava/util/HashMap;

    return-object v11
.end method

.method public isPackageAutoLaunchEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 607
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 608
    .local v0, "enabled":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 609
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not auto launch app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isPackageAutoLaunched(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 602
    .local v0, "enabled":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public noticeIfAutoLaunchPackage(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x10000000

    const v10, 0x10800b4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 573
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/AutoLaunchManagerService;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/AutoLaunchManagerService;->isAutoLaunchPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 578
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040019

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "text":Ljava/lang/String;
    iput v10, v1, Landroid/app/Notification;->icon:I

    .line 581
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    .line 582
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 583
    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 584
    iput v8, v1, Landroid/app/Notification;->defaults:I

    .line 585
    iput-object v9, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 586
    iput-object v9, v1, Landroid/app/Notification;->vibrate:[J

    .line 587
    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104001a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v11, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 592
    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v10, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 594
    const-string v3, "AutoLaunchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "noticeIfAutoLaunchPackage auto launch package + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + installed success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setAllAutoLaunchPackagesDefault(Z)V
    .locals 4
    .param p1, "stopNow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-object v2, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 617
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/AutoLaunchManagerService;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    invoke-virtual {p0, v1}, Lcom/android/server/AutoLaunchManagerService;->isPackageAutoLaunchEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/AutoLaunchManagerService;->setAutoLaunchPackageEnabled(Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 622
    :cond_1
    if-eqz p1, :cond_2

    .line 623
    invoke-virtual {p0, v1, v3, p1, v3}, Lcom/android/server/AutoLaunchManagerService;->setAutoLaunchPackageEnabled(Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/AutoLaunchManagerService;->isPackageAutoLaunchEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/server/AutoLaunchManagerService;->setAutoLaunchPackageEnabled(Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 629
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setAutoLaunchPackageEnabled(Ljava/lang/String;ZZZ)V
    .locals 31
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "stopNow"    # Z
    .param p4, "isStandalone"    # Z

    .prologue
    .line 632
    const/4 v9, 0x0

    .line 633
    .local v9, "autoItem":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    const/16 v22, 0x0

    .line 635
    .local v22, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v28, "AutoLaunchManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "setAutoLaunchPackageEnabled package name: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-nez p1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgs:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ApplicationInfo;

    .line 641
    .local v25, "pkgInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v25, :cond_0

    .line 646
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 647
    if-eqz v22, :cond_0

    .line 655
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v27, "sourceFile":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "archiveFilePath":Ljava/lang/String;
    new-instance v23, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 658
    .local v23, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 659
    .local v19, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v19 .. v19}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 660
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 661
    .local v24, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 666
    const/16 v16, 0x0

    .line 667
    .local v16, "isFind":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v6, "allComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/PackageParser$Activity;

    .line 669
    .local v26, "receiver":Landroid/content/pm/PackageParser$Activity;
    const-string v28, "AutoLaunchManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "the receiver="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 671
    const/16 v16, 0x0

    .line 672
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 673
    .local v15, "intentInfo":Landroid/content/pm/PackageParser$IntentInfo;
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$IntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v17

    .line 674
    .local v17, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    if-nez v16, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 675
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 676
    .local v5, "action":Ljava/lang/String;
    const-string v28, "AutoLaunchManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "the receiver action="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchActions:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    aget-object v4, v8, v14

    .line 678
    .local v4, "ac":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 679
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    .line 680
    .local v10, "cn":Landroid/content/ComponentName;
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    const/16 v16, 0x1

    .line 682
    goto :goto_2

    .line 650
    .end local v4    # "ac":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "allComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v7    # "archiveFilePath":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v14    # "i$":I
    .end local v15    # "intentInfo":Landroid/content/pm/PackageParser$IntentInfo;
    .end local v16    # "isFind":Z
    .end local v17    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "len$":I
    .end local v19    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "packageParser":Landroid/content/pm/PackageParser;
    .end local v24    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v26    # "receiver":Landroid/content/pm/PackageParser$Activity;
    .end local v27    # "sourceFile":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 651
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v28, "AutoLaunchManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "can not find package: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 677
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "ac":Ljava/lang/String;
    .restart local v5    # "action":Ljava/lang/String;
    .restart local v6    # "allComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v7    # "archiveFilePath":Ljava/lang/String;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v15    # "intentInfo":Landroid/content/pm/PackageParser$IntentInfo;
    .restart local v16    # "isFind":Z
    .restart local v17    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v18    # "len$":I
    .restart local v19    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v23    # "packageParser":Landroid/content/pm/PackageParser;
    .restart local v24    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v26    # "receiver":Landroid/content/pm/PackageParser$Activity;
    .restart local v27    # "sourceFile":Ljava/io/File;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 686
    .end local v4    # "ac":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v18    # "len$":I
    :cond_6
    if-eqz v16, :cond_3

    goto/16 :goto_1

    .line 694
    .end local v15    # "intentInfo":Landroid/content/pm/PackageParser$IntentInfo;
    .end local v17    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v26    # "receiver":Landroid/content/pm/PackageParser$Activity;
    :cond_7
    if-nez p4, :cond_8

    .line 695
    new-instance v9, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;

    .end local v9    # "autoItem":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;-><init>(Lcom/android/server/AutoLaunchManagerService;)V

    .line 696
    .restart local v9    # "autoItem":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->packageName:Ljava/lang/String;

    .line 697
    if-nez p2, :cond_8

    .line 698
    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v9, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->isStopped:Z

    .line 702
    :cond_8
    if-eqz p2, :cond_a

    const/16 v21, 0x1

    .line 704
    .local v21, "newEnableSetting":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 705
    .restart local v10    # "cn":Landroid/content/ComponentName;
    const-string v28, "AutoLaunchManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "setAutoLaunchPackageEnabled component: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", state: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 707
    if-nez p4, :cond_9

    if-nez p2, :cond_9

    .line 708
    new-instance v28, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;-><init>(Lcom/android/server/AutoLaunchManagerService;Landroid/content/ComponentName;I)V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->add(Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;)V

    goto :goto_5

    .line 702
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v21    # "newEnableSetting":I
    :cond_a
    const/16 v21, 0x2

    goto :goto_4

    .line 712
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v21    # "newEnableSetting":I
    :cond_b
    if-nez p4, :cond_0

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 715
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsDisabled:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 719
    .local v20, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x3e8

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 721
    if-eqz p3, :cond_0

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AutoLaunchManagerService;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 723
    const-string v28, "AutoLaunchManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "app: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is auto launch, stop the process"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 716
    .end local v20    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v28

    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v28
.end method

.method public systemReady(Z)V
    .locals 4
    .param p1, "firstBoot"    # Z

    .prologue
    .line 561
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsDisabled:Ljava/util/HashMap;

    .line 562
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgs:Ljava/util/HashMap;

    .line 563
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;

    .line 565
    invoke-direct {p0}, Lcom/android/server/AutoLaunchManagerService;->readAutoLaunchWhiteList()V

    .line 566
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 568
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    const-string v1, "AutoLaunchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemReady is first boot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void

    .line 567
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
