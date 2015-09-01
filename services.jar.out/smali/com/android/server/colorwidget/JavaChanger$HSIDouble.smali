.class Lcom/android/server/colorwidget/JavaChanger$HSIDouble;
.super Ljava/lang/Object;
.source "JavaChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/colorwidget/JavaChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HSIDouble"
.end annotation


# instance fields
.field public h:D

.field public i:D

.field public s:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-wide v0, p0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->h:D

    .line 156
    iput-wide v0, p0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->s:D

    .line 157
    iput-wide v0, p0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->i:D

    .line 158
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .parameter "h_in"
    .parameter "s_in"
    .parameter "i_in"

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-wide p1, p0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->h:D

    .line 162
    iput-wide p3, p0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->s:D

    .line 163
    iput-wide p5, p0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->i:D

    .line 164
    return-void
.end method
