.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public blinkDetected:I

.field public faceRecognised:I

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileDegree:I

.field public smileScore:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1655
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1715
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 1724
    iput-object v2, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 1733
    iput-object v2, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 1742
    iput-object v2, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 1747
    iput v1, p0, Landroid/hardware/Camera$Face;->smileDegree:I

    .line 1751
    iput v1, p0, Landroid/hardware/Camera$Face;->smileScore:I

    .line 1755
    iput v1, p0, Landroid/hardware/Camera$Face;->blinkDetected:I

    .line 1759
    iput v1, p0, Landroid/hardware/Camera$Face;->faceRecognised:I

    .line 1656
    return-void
.end method


# virtual methods
.method public getBlinkDetected()I
    .locals 1

    .prologue
    .line 1787
    const/4 v0, -0x1

    return v0
.end method

.method public getSmileDegree()I
    .locals 1

    .prologue
    .line 1767
    iget v0, p0, Landroid/hardware/Camera$Face;->smileDegree:I

    return v0
.end method

.method public getSmileScore()I
    .locals 1

    .prologue
    .line 1777
    iget v0, p0, Landroid/hardware/Camera$Face;->smileScore:I

    return v0
.end method
