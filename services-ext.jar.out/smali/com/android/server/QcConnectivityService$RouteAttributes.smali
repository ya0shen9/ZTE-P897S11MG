.class final Lcom/android/server/QcConnectivityService$RouteAttributes;
.super Ljava/lang/Object;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAttributes"
.end annotation


# instance fields
.field private metric:I

.field private metricV6:I

.field private tableId:I

.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 1
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 467
    invoke-static {p1}, Lcom/android/server/QcConnectivityService;->access$004(Lcom/android/server/QcConnectivityService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->tableId:I

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metric:I

    .line 471
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metricV6:I

    .line 472
    return-void
.end method


# virtual methods
.method public getMetric()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metric:I

    return v0
.end method

.method public getTableId()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->tableId:I

    return v0
.end method

.method public getV6Metric()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metricV6:I

    return v0
.end method

.method public setMetric(I)V
    .locals 1
    .parameter "m"

    .prologue
    .line 487
    iput p1, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metric:I

    .line 488
    if-lez p1, :cond_0

    .line 489
    add-int/lit16 v0, p1, 0x400

    iput v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metricV6:I

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metricV6:I

    goto :goto_0
.end method
