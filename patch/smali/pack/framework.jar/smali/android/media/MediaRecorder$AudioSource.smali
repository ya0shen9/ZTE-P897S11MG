.class public final Landroid/media/MediaRecorder$AudioSource;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field public static final AUDIO_ZOOM_INTERVIEW_MODE:I = 0x16

.field public static final AUDIO_ZOOM_LANDSCAPE_MODE:I = 0x17

.field public static final AUDIO_ZOOM_NARRATOR_MODE:I = 0x15

.field public static final BARGE_IN_HEADPHONE:I = 0x20

.field public static final BARGE_IN_HEADPHONE_AND_SPEAKER:I = 0x21

.field public static final BARGE_IN_HEADSET_AND_SPEAKER:I = 0x22

.field public static final BARGE_IN_SPEAKER:I = 0x1f

.field public static final CAMCORDER:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final DRIVER_BARGE_IN_HEADPHONE:I = 0x42

.field public static final DRIVER_BARGE_IN_HEADSET:I = 0x43

.field public static final DRIVER_BARGE_IN_SPEAKER:I = 0x41

.field public static final DRIVER_VOICE_CALL:I = 0x3f

.field public static final DRIVER_VOICE_MIC:I = 0x3d

.field public static final DRIVER_VOICE_RECOGNITION:I = 0x40

.field public static final DRIVER_VOICE_UPLINK:I = 0x3e

.field public static final FM_RX:I = 0x9

.field public static final FM_RX_A2DP:I = 0xa

.field protected static final HOTWORD:I = 0x7cf

.field public static final MIC:I = 0x1

.field public static final PRODUCT_TEST_FRONT_MIC:I = 0x34

.field public static final PRODUCT_TEST_HEADSET_MIC:I = 0x35

.field public static final PRODUCT_TEST_TOP_MIC:I = 0x33

.field public static final REMOTE_SUBMIX:I = 0x8

.field public static final STEREO_MODE:I = 0x18

.field public static final VOICE_CALL:I = 0x4

.field public static final VOICE_COMMUNICATION:I = 0x7

.field public static final VOICE_DOWNLINK:I = 0x3

.field public static final VOICE_RECOGNITION:I = 0x6

.field public static final VOICE_RECOGNITION_CLOSE_TALK:I = 0x2a

.field public static final VOICE_RECOGNITION_FAR_TALK:I = 0x29

.field public static final VOICE_RECOGNITION_ONE_SHOT:I = 0x2b

.field public static final VOICE_SECRETARY:I = 0x19

.field public static final VOICE_UPLINK:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Landroid/media/MediaRecorder$AudioSource;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
