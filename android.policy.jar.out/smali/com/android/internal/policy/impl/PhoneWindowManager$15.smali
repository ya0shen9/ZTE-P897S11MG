.class Lcom/android/internal/policy/impl/PhoneWindowManager$15;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4017
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4021
    new-instance v3, Landroid/content/Intent;

    const-string v4, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4022
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4024
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4031
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$15;)V

    .line 4041
    .local v0, broadcastReceiver:Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "org.codeaurora.quickboot.poweron_start"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4042
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4045
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4047
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4051
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4053
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->releaseQuickBootWakeLock()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4054
    .end local v0           #broadcastReceiver:Landroid/content/BroadcastReceiver;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 4025
    :catch_0
    move-exception v1

    .line 4026
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 4027
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->releaseQuickBootWakeLock()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_1

    .line 4048
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .restart local v0       #broadcastReceiver:Landroid/content/BroadcastReceiver;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v1

    .line 4049
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 4051
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
