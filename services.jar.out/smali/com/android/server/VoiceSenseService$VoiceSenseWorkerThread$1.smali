.class Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;
.super Ljava/lang/Thread;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;


# direct methods
.method constructor <init>(Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;->this$1:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 690
    const/4 v2, -0x1

    .line 693
    .local v2, ret:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_0

    .line 694
    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;->this$1:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    iget-object v4, v4, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    const-string v5, "Get RDB data size"

    invoke-virtual {v4, v5}, Lcom/android/server/VoiceSenseService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, vsBootupStatus:Ljava/lang/String;
    const-string v4, "VoiceSense-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckedChanged vsBootupStatus vsBootupStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 698
    :try_start_0
    const-string v4, "VoiceSense-Service"

    const-string v5, "onCheckedChanged vsBootupStatus 1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;->sleep(J)V

    .line 702
    const-string v4, "voice_sense=on"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 703
    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;->this$1:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    iget-object v4, v4, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z
    invoke-static {v4, v5}, Lcom/android/server/VoiceSenseService;->access$1802(Lcom/android/server/VoiceSenseService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v3           #vsBootupStatus:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 704
    .restart local v3       #vsBootupStatus:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 705
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VoiceSense-Service"

    const-string v5, "onCheckedChanged set shot state success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 711
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 693
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :catch_1
    move-exception v0

    .line 713
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "VoiceSense-Service"

    const-string v5, "onCheckedChanged set shot state success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method