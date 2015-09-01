.class Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
.super Landroid/os/UEventObserver;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiseSenseObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFullWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/VoiceSenseService;

.field private final voiceSenseUevent:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/VoiceSenseService;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 760
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->this$0:Lcom/android/server/VoiceSenseService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 755
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DEVPATH=/devices/fe12f000.slim/es704-codec-gen0"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->voiceSenseUevent:[Ljava/lang/String;

    .line 761
    iput-object p2, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->mContext:Landroid/content/Context;

    .line 762
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 763
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "VSObserverFullWL"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 767
    new-instance v1, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;-><init>(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;Lcom/android/server/VoiceSenseService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 769
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->voiceSenseUevent:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 782
    const-string v5, "VoiceSense-Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### VoiceSense UEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ###"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string v5, "persist.sys.quickboot"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 785
    .local v4, quickboolVal:I
    const-string v5, "service.quickboot.state"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 786
    .local v3, quickboolState:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v3, :cond_0

    .line 789
    const-string v5, "VoiceSense-Service"

    const-string v6, "should not wakeup while quick shutdown"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEVPATH=/devices/fe12f000.slim/es704-codec-gen0/firmware/es704-codec-gen0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 796
    const-string v5, "VoiceSense-Service"

    const-string v6, "wangjunweitest ++++++++++"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    :cond_1
    iget-object v5, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->this$0:Lcom/android/server/VoiceSenseService;

    #calls: Lcom/android/server/VoiceSenseService;->isAudioActive()Z
    invoke-static {v5}, Lcom/android/server/VoiceSenseService;->access$2100(Lcom/android/server/VoiceSenseService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 810
    const-string v5, "VoiceSense-Service"

    const-string v6, "should not be waked up while audio active"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :cond_2
    iget-object v5, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->this$0:Lcom/android/server/VoiceSenseService;

    const-string v6, "ES705 Get Event Status"

    invoke-virtual {v5, v6}, Lcom/android/server/VoiceSenseService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, VsStatus:Ljava/lang/String;
    const-string v5, "VoiceSense-Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VsStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v0, "VoiceSenseUevent"

    .line 822
    .local v0, CUSTOM_INTENT:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 823
    .local v2, i:Landroid/content/Intent;
    const-string v5, "VsStatus"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v5, "VoiceSenseUevent"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 827
    iget-object v5, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
