.class Landroid/view/VolumePanel$5;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->onDisplaySafeVolumeWarning(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;

.field final synthetic val$nStreamType:I


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    iput p2, p0, Landroid/view/VolumePanel$5;->val$nStreamType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 874
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget v1, p0, Landroid/view/VolumePanel$5;->val$nStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->disableSafeMediaVolume(I)V

    .line 875
    return-void
.end method
