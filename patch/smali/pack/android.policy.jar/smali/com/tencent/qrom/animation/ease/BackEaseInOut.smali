.class public Lcom/tencent/qrom/animation/ease/BackEaseInOut;
.super Lcom/tencent/qrom/animation/ease/BaseEase;
.source "BackEaseInOut.java"


# instance fields
.field private s:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/qrom/animation/ease/BaseEase;-><init>(F)V

    .line 6
    const v0, 0x3fd9cd60

    iput v0, p0, Lcom/tencent/qrom/animation/ease/BackEaseInOut;->s:F

    .line 10
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "back"    # F

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/tencent/qrom/animation/ease/BackEaseInOut;-><init>(F)V

    .line 14
    iput p2, p0, Lcom/tencent/qrom/animation/ease/BackEaseInOut;->s:F

    .line 15
    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 9
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    const-wide v7, 0x3ff8666666666666L    # 1.525

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 19
    iget v0, p0, Lcom/tencent/qrom/animation/ease/BackEaseInOut;->s:F

    .line 20
    .local v0, "s1":F
    div-float v1, p4, v5

    div-float/2addr p1, v1

    cmpg-float v1, p1, v6

    if-gez v1, :cond_0

    div-float v1, p3, v5

    mul-float v2, p1, p1

    float-to-double v3, v0

    mul-double/2addr v3, v7

    double-to-float v0, v3

    add-float v3, v0, v6

    mul-float/2addr v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    :cond_0
    div-float v1, p3, v5

    sub-float/2addr p1, v5

    mul-float v2, p1, p1

    float-to-double v3, v0

    mul-double/2addr v3, v7

    double-to-float v0, v3

    add-float v3, v0, v6

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0
.end method
