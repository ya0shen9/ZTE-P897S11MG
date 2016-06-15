.class Lcom/android/server/PPPOEService$1;
.super Landroid/content/BroadcastReceiver;
.source "PPPOEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PPPOEService;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEService;


# direct methods
.method constructor <init>(Lcom/android/server/PPPOEService;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string v4, "PPPOEService"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v4, "android.net.wifi.PPPOE_ALARM_STOP_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v4}, Lcom/android/server/PPPOEService;->access$000(Lcom/android/server/PPPOEService;)Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-eq v4, v5, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    invoke-virtual {v4}, Lcom/android/server/PPPOEService;->stopPPPOE()V

    .line 168
    iget-object v4, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    const-wide/16 v5, 0x0

    # setter for: Lcom/android/server/PPPOEService;->mConnectedtime:J
    invoke-static {v4, v5, v6}, Lcom/android/server/PPPOEService;->access$202(Lcom/android/server/PPPOEService;J)J

    .line 169
    iget-object v4, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    sget-object v5, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    # setter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v4, v5}, Lcom/android/server/PPPOEService;->access$002(Lcom/android/server/PPPOEService;Landroid/net/wifi/PPPOEInfo$Status;)Landroid/net/wifi/PPPOEInfo$Status;

    .line 170
    iget-object v4, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    const-string v5, "PPPOE_STATE_FAILURE"

    # invokes: Lcom/android/server/PPPOEService;->notifyStatusChanged(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/PPPOEService;->access$300(Lcom/android/server/PPPOEService;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v4, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    const-string v4, "pppoe_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "errorCode":Ljava/lang/String;
    const-string v4, "PPPOE_STATE_CONNECTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    const-string v4, "PPPOE_STATE_DISCONNECTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    const-string v4, "PPPOE_STATE_FAILURE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 181
    .end local v1    # "errorCode":Ljava/lang/String;
    :cond_2
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 184
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 185
    const-string v4, "PPPOEService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.isConnected ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    invoke-virtual {v4}, Lcom/android/server/PPPOEService;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v3

    .line 188
    .local v3, "pppoeInfo":Landroid/net/wifi/PPPOEInfo;
    iget-object v4, v3, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v5, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-eq v4, v5, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    invoke-virtual {v4}, Lcom/android/server/PPPOEService;->stopPPPOE()V

    goto :goto_0
.end method
