.class Lcom/android/internal/policy/impl/QuickBoot$3;
.super Landroid/content/BroadcastReceiver;
.source "QuickBoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/QuickBoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/QuickBoot;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/QuickBoot;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 240
    const-string v3, "android.intent.action.AS_QUICKBOOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    # invokes: Lcom/android/internal/policy/impl/QuickBoot;->isInQuickBootPowerOff()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/QuickBoot;->access$300(Lcom/android/internal/policy/impl/QuickBoot;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const-string v3, "sys.hibernate.state"

    const-string v4, "ALARM"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v3, "QuickBoot"

    const-string v4, "quickboot on by Alarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/QuickBoot;->quickBootPowerOn()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v3, "android.intent.action.ACTION_ALARM_SHUT_DOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    const-string v3, "QuickBoot"

    const-string v4, "quickboot off by schedule shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v3, "persist.sys.quickboot"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 251
    .local v2, "quickbootVal":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    # getter for: Lcom/android/internal/policy/impl/QuickBoot;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v3}, Lcom/android/internal/policy/impl/QuickBoot;->access$400(Lcom/android/internal/policy/impl/QuickBoot;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    .line 255
    .end local v2    # "quickbootVal":I
    :cond_2
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    const-string v3, "level"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "mBatteryLevel":I
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 258
    .local v1, "mPlugType":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_level"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "plug_Type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    # invokes: Lcom/android/internal/policy/impl/QuickBoot;->isInQuickBootPowerOff()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/QuickBoot;->access$300(Lcom/android/internal/policy/impl/QuickBoot;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const-string v3, "service.quickboot.state"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    # getter for: Lcom/android/internal/policy/impl/QuickBoot;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v3}, Lcom/android/internal/policy/impl/QuickBoot;->access$400(Lcom/android/internal/policy/impl/QuickBoot;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    .line 268
    .end local v0    # "mBatteryLevel":I
    .end local v1    # "mPlugType":I
    :cond_3
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 269
    iget-object v3, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    # invokes: Lcom/android/internal/policy/impl/QuickBoot;->isInQuickBootPowerOff()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/QuickBoot;->access$300(Lcom/android/internal/policy/impl/QuickBoot;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-wide/16 v3, 0x320

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 271
    const-string v3, "chargerQuickboot"

    invoke-static {v3}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    const-string v3, "chargerQuickboot"

    invoke-static {v3}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 273
    const-string v3, "QuickBoot"

    const-string v4, "quickboot stop chargerQuickboot."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    :cond_4
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/android/internal/policy/impl/QuickBoot$3;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    # invokes: Lcom/android/internal/policy/impl/QuickBoot;->isInQuickBootPowerOff()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/QuickBoot;->access$300(Lcom/android/internal/policy/impl/QuickBoot;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    const-string v3, "chargerQuickboot"

    invoke-static {v3}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    const-string v3, "chargerQuickboot"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 282
    const-string v3, "QuickBoot"

    const-string v4, "quickboot start chargerQuickboot."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
