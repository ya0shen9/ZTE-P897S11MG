.class Landroid/net/wifi/WifiStateMachine$UntetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UntetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4704
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4708
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mTetherToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$26204(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4711
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mHotspotshouldSleep:Z
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$27102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4712
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepPolicyObserver:Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$27200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->onChange(Z)V

    .line 4713
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->setTetherStarted(Z)V

    .line 4716
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0xb

    .line 4719
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 4784
    const/4 v3, 0x0

    .line 4786
    :goto_0
    return v3

    .line 4721
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 4724
    .local v1, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26300(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4786
    .end local v1    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 4727
    .restart local v1    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v4, "stopping hostapd"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4728
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z

    goto :goto_1

    .line 4732
    .end local v1    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x2003e

    const-wide/16 v5, 0x640

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 4736
    :sswitch_2
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 4737
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 4738
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4742
    :goto_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "hostapd connection lost"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4743
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4744
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4739
    :catch_0
    move-exception v0

    .line 4740
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Exception in stopAccessPoint()"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 4748
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTetherToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 4749
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Failed to get tether update, force stop access point"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4752
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z

    move-result v2

    .line 4753
    .local v2, "stopsupplicant":Z
    if-nez v2, :cond_2

    .line 4754
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Failed to stop hostapd"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4756
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 4757
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 4758
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4762
    :goto_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4763
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 4759
    :catch_1
    move-exception v0

    .line 4760
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Exception in stopAccessPoint()"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 4765
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopsupplicant : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$29000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4781
    .end local v2    # "stopsupplicant":Z
    :sswitch_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/net/wifi/WifiStateMachine;->access$29100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 4719
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_4
        0x2000c -> :sswitch_4
        0x2000d -> :sswitch_4
        0x2000e -> :sswitch_4
        0x20015 -> :sswitch_4
        0x20018 -> :sswitch_4
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_3
        0x2003e -> :sswitch_2
        0x20048 -> :sswitch_4
        0x20050 -> :sswitch_4
        0x20054 -> :sswitch_4
        0x20055 -> :sswitch_4
        0x2005a -> :sswitch_4
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
