.class Landroid/net/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3201
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3204
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$11302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3205
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$11402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3206
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11508(Landroid/net/wifi/WifiStateMachine;)I

    .line 3207
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 3213
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 3215
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)V

    .line 3217
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;)V

    .line 3219
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$11800(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 3222
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 3225
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3226
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 3231
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$12002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3233
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;)V

    .line 3235
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 3236
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3237
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 3238
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 3239
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3241
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3257
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3258
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3260
    .local v1, powerManager:Landroid/os/PowerManager;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    #calls: Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 3266
    .end local v1           #powerManager:Landroid/os/PowerManager;
    :goto_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 3268
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3269
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 3270
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20083

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3278
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "wifi_scan_available"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3279
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3280
    const-string/jumbo v2, "scan_enabled"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3281
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3282
    return-void

    .line 3228
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_0

    .line 3244
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 3246
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Attempting to reconnect to wifi network .."

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3247
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 3252
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    .line 3253
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3263
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3443
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$11302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3444
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 3445
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$15202(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 3447
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;)V

    .line 3449
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3450
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3451
    const-string/jumbo v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3452
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3453
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;)V

    .line 3455
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$13202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 3456
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    const/4 v9, 0x4

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3286
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 3439
    :goto_0
    return v6

    .line 3288
    :sswitch_0
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/WorkSource;

    #calls: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 3289
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;I)V

    :cond_0
    :goto_1
    move v6, v7

    .line 3439
    goto :goto_0

    .line 3292
    :sswitch_1
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    #calls: Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v8, v9, v10, v6}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3294
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 3298
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3299
    .local v1, country:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set country code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3300
    if-eqz v1, :cond_0

    .line 3301
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3302
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3304
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3305
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/net/wifi/WifiStateMachine;->access$13202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 3307
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set country code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 3313
    .end local v1           #country:Ljava/lang/String;
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3314
    .local v0, band:I
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set frequency band "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3315
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiNative;->setBand(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3316
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3318
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->bssFlush()V

    .line 3319
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v11, :cond_4

    .line 3320
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->disable5GHzFrequencies(Z)Z

    .line 3321
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$13602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3328
    :cond_3
    :goto_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 3322
    :cond_4
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v8, v11, :cond_3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3324
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiNative;->disable5GHzFrequencies(Z)Z

    .line 3325
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$13602(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_2

    .line 3330
    :cond_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set frequency band "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3334
    .end local v0           #band:I
    :sswitch_4
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_6

    move v6, v7

    :cond_6
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$1602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3336
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    .line 3339
    :sswitch_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3342
    .local v4, mode:I
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3343
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Already in delayed stop"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3347
    :cond_7
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 3349
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8, v7}, Landroid/net/wifi/WifiStateMachine;->access$11402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3350
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11508(Landroid/net/wifi/WifiStateMachine;)I

    .line 3351
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delayed stop message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$13900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3353
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3355
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x20012

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    invoke-virtual {v9, v10, v11, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3360
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3361
    .local v2, driverStopIntent:Landroid/content/Intent;
    const-string v8, "DelayedStopCounter"

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3362
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x800

    invoke-static {v9, v6, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$14002(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 3366
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$14200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 3370
    .end local v2           #driverStopIntent:Landroid/content/Intent;
    .end local v4           #mode:I
    :sswitch_6
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3371
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$11402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3372
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11508(Landroid/net/wifi/WifiStateMachine;)I

    .line 3373
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$14200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3374
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Delayed stop ignored due to start"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$14300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3375
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 3376
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 3381
    :sswitch_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delayed stop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$14400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3382
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 3383
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$14500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    if-eq v6, v8, :cond_9

    .line 3384
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3385
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)V

    .line 3387
    :cond_9
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3388
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->stopDriver()Z

    .line 3389
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3390
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3391
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$14600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3393
    :cond_a
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$14700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$14800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3397
    :sswitch_8
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_b

    .line 3398
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 3399
    :cond_b
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_c

    .line 3400
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 3402
    :cond_c
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Illegal arugments to CMD_START_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3406
    :sswitch_9
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_d

    .line 3407
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 3408
    :cond_d
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_e

    .line 3409
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 3411
    :cond_e
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$15000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3415
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_f

    .line 3416
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v6, v9, v7}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;IZ)V

    .line 3417
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 3419
    :cond_f
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3423
    :sswitch_b
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_10

    .line 3424
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v11, v6}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3426
    :cond_10
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v6, v11, v7}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3430
    :sswitch_c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 3431
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3432
    .local v5, remoteAddress:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_11

    move v3, v7

    .line 3433
    .local v3, enable:Z
    :goto_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/net/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v3           #enable:Z
    :cond_11
    move v3, v6

    .line 3432
    goto :goto_3

    .line 3286
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_6
        0x2000e -> :sswitch_5
        0x20012 -> :sswitch_7
        0x2001f -> :sswitch_4
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_b
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_8
        0x20055 -> :sswitch_9
        0x20056 -> :sswitch_a
        0x2005a -> :sswitch_3
        0x2005c -> :sswitch_c
        0x20087 -> :sswitch_1
    .end sparse-switch
.end method
