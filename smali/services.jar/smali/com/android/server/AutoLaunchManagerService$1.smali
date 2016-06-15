.class Lcom/android/server/AutoLaunchManagerService$1;
.super Landroid/os/Handler;
.source "AutoLaunchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AutoLaunchManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AutoLaunchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AutoLaunchManagerService;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 523
    const-string v5, "AutoLaunchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", agr1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 527
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v0, "disableComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;>;"
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->obj:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AutoLaunchManagerService;->access$500(Lcom/android/server/AutoLaunchManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 532
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsDisabled:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/AutoLaunchManagerService;->access$600(Lcom/android/server/AutoLaunchManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 533
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 535
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsDisabled:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/AutoLaunchManagerService;->access$600(Lcom/android/server/AutoLaunchManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;

    invoke-virtual {v5}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->copy()Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;

    move-result-object v2

    .line 536
    .local v2, "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # invokes: Lcom/android/server/AutoLaunchManagerService;->readAutoLaunchRestrictionsLPr(Ljava/util/List;)V
    invoke-static {v5, v0}, Lcom/android/server/AutoLaunchManagerService;->access$700(Lcom/android/server/AutoLaunchManagerService;Ljava/util/List;)V

    .line 540
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # invokes: Lcom/android/server/AutoLaunchManagerService;->writeAutoLaunchRestrictionsLPr(Ljava/util/List;)V
    invoke-static {v5, v0}, Lcom/android/server/AutoLaunchManagerService;->access$800(Lcom/android/server/AutoLaunchManagerService;Ljava/util/List;)V

    goto :goto_0

    .line 543
    .end local v0    # "disableComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-virtual {v5}, Lcom/android/server/AutoLaunchManagerService;->getAutoLaunchPackages()Ljava/util/Map;

    .line 544
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-lez v5, :cond_0

    .line 545
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/AutoLaunchManagerService;->setAllAutoLaunchPackagesDefault(Z)V

    goto :goto_0

    .line 549
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-virtual {v5}, Lcom/android/server/AutoLaunchManagerService;->getAutoLaunchPackages()Ljava/util/Map;

    .line 550
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 551
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AutoLaunchManagerService$1;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-virtual {v5, v4, v8, v8, v8}, Lcom/android/server/AutoLaunchManagerService;->setAutoLaunchPackageEnabled(Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
