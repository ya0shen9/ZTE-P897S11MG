.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
.super Lcom/android/internal/util/State;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartConnectivityState"
.end annotation


# instance fields
.field private avoidUnsuitableWifi:Z

.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 1
    .parameter

    .prologue
    .line 3609
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    .line 3611
    return-void
.end method

.method private handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 3645
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive portal check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3646
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 3647
    .local v1, type:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v0, v2, v1

    .line 3648
    .local v0, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3649
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 3650
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z
    invoke-static {v2, v1}, Lcom/android/server/QcConnectivityService;->access$7000(Lcom/android/server/QcConnectivityService;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3651
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive check on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3652
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$7200(Lcom/android/server/QcConnectivityService;)Landroid/net/CaptivePortalTracker;

    move-result-object v2

    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/CaptivePortalTracker;->detectCaptivePortal(Landroid/net/NetworkInfo;)V

    .line 3660
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 3661
    return-void

    .line 3654
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive portal check skipped on low priority net "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 3633
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 3634
    .local v1, type:I
    const/4 v0, 0x0

    .line 3635
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3636
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->add(I)Z

    .line 3637
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 3638
    const/4 v0, 0x1

    .line 3641
    :cond_0
    return v0
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3615
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3617
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$6300(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3618
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$6300(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3620
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6402(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 3621
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6502(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 3622
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3626
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3627
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3665
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".processMessage what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3666
    const/4 v0, 0x0

    .line 3667
    .local v0, info:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 3668
    .local v1, ret:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3716
    const/4 v1, 0x0

    .line 3718
    :cond_0
    :goto_0
    return v1

    .line 3671
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 3672
    .restart local v0       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->add(I)Z

    .line 3673
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3674
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v4, "Dual Connectivity Mode detected"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3675
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3676
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 3677
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3681
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3679
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3687
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 3688
    .restart local v0       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    goto :goto_0

    .line 3693
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 3694
    .restart local v0       #info:Landroid/net/NetworkInfo;
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V

    .line 3695
    const/4 v1, 0x1

    .line 3696
    goto :goto_0

    .line 3700
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    .line 3701
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dual network support "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_4

    const-string v2, "enabled"

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3702
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 3703
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 3705
    :cond_2
    const/4 v1, 0x1

    .line 3706
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 3700
    goto :goto_2

    .line 3701
    :cond_4
    const-string v2, "disabled"

    goto :goto_3

    .line 3710
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-nez v2, :cond_0

    .line 3712
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3668
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f8 -> :sswitch_3
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_1
        0x1391 -> :sswitch_2
        0x1392 -> :sswitch_4
    .end sparse-switch
.end method
