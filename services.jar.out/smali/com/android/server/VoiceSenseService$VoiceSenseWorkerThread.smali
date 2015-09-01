.class Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;
.super Ljava/lang/Thread;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceSenseWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VoiceSenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    .line 668
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 669
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 671
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 672
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    new-instance v2, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;-><init>(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$1;)V

    #setter for: Lcom/android/server/VoiceSenseService;->mHandler:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;
    invoke-static {v1, v2}, Lcom/android/server/VoiceSenseService;->access$1402(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;)Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    .line 673
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    new-instance v2, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    #getter for: Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/VoiceSenseService;->access$1000(Lcom/android/server/VoiceSenseService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;-><init>(Lcom/android/server/VoiceSenseService;Landroid/content/Context;)V

    #setter for: Lcom/android/server/VoiceSenseService;->vsObserver:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
    invoke-static {v1, v2}, Lcom/android/server/VoiceSenseService;->access$1602(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    .line 679
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    #calls: Lcom/android/server/VoiceSenseService;->transferKeywords()I
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$1700(Lcom/android/server/VoiceSenseService;)I

    move-result v1

    if-gez v1, :cond_0

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    #calls: Lcom/android/server/VoiceSenseService;->isVoiceSenseToggled()Z
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$100(Lcom/android/server/VoiceSenseService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    #getter for: Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$1800(Lcom/android/server/VoiceSenseService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    new-instance v0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;-><init>(Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;)V

    .line 720
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 724
    .end local v0           #t:Ljava/lang/Thread;
    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 725
    return-void
.end method
