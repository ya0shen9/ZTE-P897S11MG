.class Landroid/widget/ProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 659
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 657
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;
    .locals 2
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 667
    sget-object v1, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar$RefreshData;

    .line 668
    .local v0, rd:Landroid/widget/ProgressBar$RefreshData;
    if-nez v0, :cond_0

    .line 669
    new-instance v0, Landroid/widget/ProgressBar$RefreshData;

    .end local v0           #rd:Landroid/widget/ProgressBar$RefreshData;
    invoke-direct {v0}, Landroid/widget/ProgressBar$RefreshData;-><init>()V

    .line 671
    .restart local v0       #rd:Landroid/widget/ProgressBar$RefreshData;
    :cond_0
    iput p0, v0, Landroid/widget/ProgressBar$RefreshData;->id:I

    .line 672
    iput p1, v0, Landroid/widget/ProgressBar$RefreshData;->progress:I

    .line 673
    iput-boolean p2, v0, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    .line 674
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 678
    sget-object v0, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 679
    return-void
.end method
