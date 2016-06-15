.class public Landroid/app/AutoLaunchManager;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoLaunchManager"


# instance fields
.field private final mService:Landroid/app/IAutoLaunchManager;


# direct methods
.method constructor <init>(Landroid/app/IAutoLaunchManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Landroid/app/IAutoLaunchManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/app/AutoLaunchManager;->mService:Landroid/app/IAutoLaunchManager;

    .line 78
    return-void
.end method


# virtual methods
.method public getAutoLaunchPackages()Ljava/util/Map;
    .locals 2
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
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/AutoLaunchManager;->mService:Landroid/app/IAutoLaunchManager;

    invoke-interface {v1}, Landroid/app/IAutoLaunchManager;->getAutoLaunchPackages()Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isPackageAutoLaunchEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/app/AutoLaunchManager;->mService:Landroid/app/IAutoLaunchManager;

    invoke-interface {v0, p1}, Landroid/app/IAutoLaunchManager;->isPackageAutoLaunchEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageAutoLaunched(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/app/AutoLaunchManager;->mService:Landroid/app/IAutoLaunchManager;

    invoke-interface {v0, p1}, Landroid/app/IAutoLaunchManager;->isPackageAutoLaunched(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noticeIfAutoLaunchPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/app/AutoLaunchManager;->mService:Landroid/app/IAutoLaunchManager;

    invoke-interface {v0, p1}, Landroid/app/IAutoLaunchManager;->noticeIfAutoLaunchPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAllAutoLaunchPackagesDefault(Z)V
    .locals 1
    .param p1, "stopNow"    # Z

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/app/AutoLaunchManager;->mService:Landroid/app/IAutoLaunchManager;

    invoke-interface {v0, p1}, Landroid/app/IAutoLaunchManager;->setAllAutoLaunchPackagesDefault(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutoLaunchPackageEnabled(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "stopNow"    # Z
    .param p4, "isStandalone"    # Z

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/app/AutoLaunchManager;->mService:Landroid/app/IAutoLaunchManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IAutoLaunchManager;->setAutoLaunchPackageEnabled(Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method
