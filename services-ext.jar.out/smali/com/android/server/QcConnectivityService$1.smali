.class Lcom/android/server/QcConnectivityService$1;
.super Landroid/content/BroadcastReceiver;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/QcConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/QcConnectivityService$NetworkFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$1;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 759
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$1;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$100(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$1;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$100(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    :cond_0
    return-void
.end method
