.class final Lcom/android/server/firewall/SenderFilter$4;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 1
    .parameter "ifw"
    .parameter "resolvedComponent"
    .parameter "intent"
    .parameter "callerUid"
    .parameter "callerPid"
    .parameter "resolvedType"
    .parameter "receivingUid"

    .prologue
    .line 99
    invoke-static {p4, p5}, Lcom/android/server/firewall/SenderFilter;->isPrivilegedApp(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p4, p7}, Lcom/android/server/firewall/IntentFirewall;->signaturesMatch(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
