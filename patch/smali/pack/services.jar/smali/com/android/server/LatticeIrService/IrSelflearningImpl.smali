.class public Lcom/android/server/LatticeIrService/IrSelflearningImpl;
.super Landroid/hardware/ISelfLearningIrService$Stub;
.source "IrSelflearningImpl.java"


# static fields
.field private static final MAX_XMIT_BUFFER:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "LatticeIrService"


# instance fields
.field private DeviceInit_done:Z

.field private err:I

.field private final mContext:Landroid/content/Context;

.field private final mHal:I

.field private final mHalLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/hardware/ISelfLearningIrService$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    .line 42
    iput-boolean v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 45
    iput-object p1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mContext:Landroid/content/Context;

    .line 46
    iput-boolean v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 47
    invoke-static {}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->Openirslf_hal()I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    .line 48
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lattice IR Service, HAL not loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private static native Openirslf_hal()I
.end method

.method private static native halDeviceExit(I)I
.end method

.method private static native halDeviceInit(I)I
.end method

.method private static native halEncryption(IB)I
.end method

.method private static native halGetLearningStatus(I)I
.end method

.method private static native halPowerOff(I)I
.end method

.method private static native halPowerOn(I)I
.end method

.method private static native halReadIRCode(I)[I
.end method

.method private static native halReadIRFrequency(I)I
.end method

.method private static native halStartLearning(I)I
.end method

.method private static native halStopLearning(I)I
.end method

.method private static native halVersion(I)I
.end method

.method private static native halself_learning_support(I)I
.end method

.method private static native halsendIR(II[I)I
.end method

.method private throwifNoLatticehal()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lattice IR Service, HAL not loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DeviceInit function is not called first or DeviceInit function returned with some failure"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    return-void
.end method


# virtual methods
.method public DeviceExit()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 140
    iput-boolean v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 142
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v2}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halDeviceExit(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 145
    iget v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v2, :cond_0

    .line 146
    const-string v2, "LatticeIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error halDeviceExit() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public DeviceInit()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 121
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 123
    iget-object v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v3}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halDeviceInit(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 126
    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v3, :cond_0

    .line 127
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 128
    const-string v3, "LatticeIrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error DeviceInit() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v2, :cond_1

    :goto_0
    return v0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method public Encryption(B)Z
    .locals 4
    .param p1, "val"    # B

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 272
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0, p1}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halEncryption(IB)I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 275
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v0, :cond_0

    .line 276
    const-string v0, "LatticeIrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Encryption : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 278
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetLearningStatus()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 218
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v2}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halGetLearningStatus(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 220
    iget v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v2, :cond_0

    .line 221
    const-string v2, "LatticeIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error GetLearningStatus() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PowerOff()Z
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 106
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halPowerOff(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 109
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v0, :cond_0

    .line 110
    const-string v0, "LatticeIrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error halPoweroff() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PowerOn()Z
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 91
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halPowerOn(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 94
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v0, :cond_0

    .line 95
    const-string v0, "LatticeIrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error halPoweron() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReadIRCode()[I
    .locals 2

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 248
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halReadIRCode(I)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ReadIRFrequency()I
    .locals 4

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 233
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halReadIRFrequency(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 236
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v0, :cond_0

    .line 237
    const-string v0, "LatticeIrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error halReadIRFrequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    return v0

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public StartLearning()Z
    .locals 4

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 187
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halStartLearning(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 190
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v0, :cond_0

    .line 191
    const-string v0, "LatticeIrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error halStartLearning() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StopLearning()Z
    .locals 4

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 203
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halStopLearning(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 206
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v0, :cond_0

    .line 207
    const-string v0, "LatticeIrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error halStopLearning() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Version()I
    .locals 4

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 257
    iget-object v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 260
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v0, :cond_0

    .line 261
    const-string v0, "LatticeIrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    return v0

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasIrSelfLearning()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-boolean v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 78
    .local v0, "DeviceInit_done_temp":Z
    iput-boolean v1, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 79
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 80
    iput-boolean v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->DeviceInit_done:Z

    .line 82
    iget v2, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v2}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halself_learning_support(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasLatticeIrService()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmit(I[I)Z
    .locals 10
    .param p1, "carrierFrequency"    # I
    .param p2, "pattern"    # [I

    .prologue
    .line 156
    const-wide/16 v4, 0x0

    .line 158
    .local v4, "totalXmitbyte":J
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 159
    .local v3, "slice":I
    if-gtz v3, :cond_0

    .line 160
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Non-positive IR slice"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    :cond_0
    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "slice":I
    :cond_1
    const-wide/16 v6, 0x1000

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 166
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "IR pattern too long"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    :cond_2
    invoke-direct {p0}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->throwifNoLatticehal()V

    .line 172
    iget-object v7, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHalLock:Ljava/lang/Object;

    monitor-enter v7

    .line 173
    :try_start_0
    iget v6, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->mHal:I

    invoke-static {v6, p1, p2}, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->halsendIR(II[I)I

    move-result v6

    iput v6, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    .line 174
    iget v6, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-gez v6, :cond_3

    .line 175
    const-string v6, "LatticeIrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error transmitting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget v6, p0, Lcom/android/server/LatticeIrService/IrSelflearningImpl;->err:I

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 177
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 179
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
