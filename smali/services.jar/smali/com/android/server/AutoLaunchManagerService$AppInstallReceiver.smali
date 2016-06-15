.class Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoLaunchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AutoLaunchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AutoLaunchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AutoLaunchManagerService;)V
    .locals 3

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 473
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 477
    # getter for: Lcom/android/server/AutoLaunchManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AutoLaunchManagerService;->access$000(Lcom/android/server/AutoLaunchManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 478
    const-string v1, "AutoLaunchManager"

    const-string v2, "create AppInstallReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 483
    const-string v4, "AutoLaunchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 486
    .local v0, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # setter for: Lcom/android/server/AutoLaunchManagerService;->mBulidAutoListCompleted:Z
    invoke-static {v4, v7}, Lcom/android/server/AutoLaunchManagerService;->access$102(Lcom/android/server/AutoLaunchManagerService;Z)Z

    .line 488
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # invokes: Lcom/android/server/AutoLaunchManagerService;->isInWhiteList(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Lcom/android/server/AutoLaunchManagerService;->access$200(Lcom/android/server/AutoLaunchManagerService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 492
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/AutoLaunchManagerService;->access$300(Lcom/android/server/AutoLaunchManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 493
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/AutoLaunchManagerService;->access$300(Lcom/android/server/AutoLaunchManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 496
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 498
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # setter for: Lcom/android/server/AutoLaunchManagerService;->mBulidAutoListCompleted:Z
    invoke-static {v4, v7}, Lcom/android/server/AutoLaunchManagerService;->access$102(Lcom/android/server/AutoLaunchManagerService;Z)Z

    goto :goto_0

    .line 501
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 503
    .restart local v3    # "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->mAutoLaunchPkgsStatus:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/AutoLaunchManagerService;->access$400(Lcom/android/server/AutoLaunchManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 504
    .local v2, "old":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/AutoLaunchManagerService;->access$300(Lcom/android/server/AutoLaunchManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 506
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/AutoLaunchManagerService$AppInstallReceiver;->this$0:Lcom/android/server/AutoLaunchManagerService;

    # getter for: Lcom/android/server/AutoLaunchManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/AutoLaunchManagerService;->access$300(Lcom/android/server/AutoLaunchManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
