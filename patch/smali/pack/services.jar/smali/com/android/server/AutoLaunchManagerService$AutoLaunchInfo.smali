.class Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
.super Ljava/lang/Object;
.source "AutoLaunchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AutoLaunchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoLaunchInfo"
.end annotation


# instance fields
.field public cn:Landroid/content/ComponentName;

.field public componentState:I

.field final synthetic this$0:Lcom/android/server/AutoLaunchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AutoLaunchManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "enabled"    # I

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p2, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->cn:Landroid/content/ComponentName;

    .line 400
    iput p3, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->componentState:I

    .line 401
    return-void
.end method


# virtual methods
.method copy()Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    .locals 4

    .prologue
    .line 404
    new-instance v0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->this$0:Lcom/android/server/AutoLaunchManagerService;

    iget-object v2, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->cn:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->componentState:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;-><init>(Lcom/android/server/AutoLaunchManagerService;Landroid/content/ComponentName;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "AutoLaunchInfo { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, ", componentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget v1, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->componentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
