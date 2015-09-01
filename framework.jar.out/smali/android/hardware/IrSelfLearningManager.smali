.class public final Landroid/hardware/IrSelfLearningManager;
.super Ljava/lang/Object;
.source "IrSelfLearningManager.java"

# interfaces
.implements Landroid/hardware/IrSelflearning;


# static fields
.field private static final TAG:Ljava/lang/String; = "IrSelfLearning"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/hardware/ISelfLearningIrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mPackageName:Ljava/lang/String;

    .line 45
    const-string v0, "LatticeIrService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ISelfLearningIrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISelfLearningIrService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    .line 47
    return-void
.end method


# virtual methods
.method public DeviceExit()Z
    .locals 1

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->DeviceExit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DeviceInit()Z
    .locals 1

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->DeviceInit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Encryption(B)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0, p1}, Landroid/hardware/ISelfLearningIrService;->Encryption(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetLearningStatus()Z
    .locals 1

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->GetLearningStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PowerOff()Z
    .locals 1

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->PowerOff()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PowerOn()Z
    .locals 1

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->PowerOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReadIRCode()[I
    .locals 1

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->ReadIRCode()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReadIRFrequency()I
    .locals 4

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v1}, Landroid/hardware/ISelfLearningIrService;->ReadIRFrequency()I

    move-result v0

    .line 169
    .local v0, freq:I
    if-gez v0, :cond_0

    .line 170
    const-string v1, "IrSelfLearning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error halReadIRFrequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #freq:I
    :cond_0
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v1

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartLearning()Z
    .locals 1

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->StartLearning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 136
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StopLearning()Z
    .locals 1

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->StopLearning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Version()I
    .locals 1

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->Version()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIrSelfLearning()Z
    .locals 1

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->hasIrSelfLearning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatticeIrService()Z
    .locals 1

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0}, Landroid/hardware/ISelfLearningIrService;->hasLatticeIrService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmit(I[I)Z
    .locals 1
    .parameter "carrierFrequency"
    .parameter "pattern"

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrSelfLearningManager;->mService:Landroid/hardware/ISelfLearningIrService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISelfLearningIrService;->transmit(I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method
