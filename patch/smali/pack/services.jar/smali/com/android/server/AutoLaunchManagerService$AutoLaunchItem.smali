.class Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
.super Ljava/lang/Object;
.source "AutoLaunchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AutoLaunchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoLaunchItem"
.end annotation


# instance fields
.field autoInfolist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;",
            ">;"
        }
    .end annotation
.end field

.field isStopped:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/AutoLaunchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AutoLaunchManagerService;)V
    .locals 1

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->autoInfolist:Ljava/util/ArrayList;

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->isStopped:Z

    .line 429
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->autoInfolist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method copy()Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    .locals 4

    .prologue
    .line 444
    new-instance v2, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;

    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->this$0:Lcom/android/server/AutoLaunchManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;-><init>(Lcom/android/server/AutoLaunchManagerService;)V

    .line 445
    .local v2, "item":Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;
    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->packageName:Ljava/lang/String;

    .line 446
    iget-boolean v3, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->isStopped:Z

    iput-boolean v3, v2, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->isStopped:Z

    .line 447
    iget-object v3, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->autoInfolist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    .line 448
    .local v1, "info":Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    invoke-virtual {v1}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;->copy()Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->add(Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;)V

    goto :goto_0

    .line 450
    .end local v1    # "info":Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    :cond_0
    return-object v2
.end method

.method get(I)Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->autoInfolist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchInfo;

    return-object v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->autoInfolist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 457
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "AutoLaunchItem { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, "autoInfolist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v1, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->autoInfolist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, ", isStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-boolean v1, p0, Lcom/android/server/AutoLaunchManagerService$AutoLaunchItem;->isStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
