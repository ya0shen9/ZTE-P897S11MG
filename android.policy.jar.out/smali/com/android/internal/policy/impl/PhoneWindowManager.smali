.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;
    }
.end annotation


# static fields
.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEFAULT_LONG_PRESS_POWERON_TIME:I = 0x1f4

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_HOME_VOICEASSIST:I = 0x3

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field static final PRINT_ANIM:Z = false

.field static final QUICKBOOT_LAUNCH_TIMEOUT:I = 0x7d0

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3ffffffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field private static mHallState:I

.field private static mHomeKeyDisablePackages:[Ljava/lang/String;

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccelerometerDefault:Z

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field mAssistKeyLongPressed:Z

#SweetYao
.field private mBarController:Lcom/android/internal/policy/impl/BarController;
#SweetYao

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mButtonLightEnabled:Z

#SweetYao
.field mCameraPowerShutter:Z
#SweetYao

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/internal/policy/impl/LewaGlobalActions;

.field private mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field mLight:Landroid/os/IHardwareService;

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressPoweronTime:I

.field mLongPressVibePattern:[J

.field mMenuKeyInjected:Z

.field mMenuKeyLongPressed:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPanelOrientation:I

.field mPendingPowerKeyUpCanceled:Z

.field mPointerLocationMode:I

.field mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreloadedRecentApps:Z

.field mQuickBoot:Lcom/android/internal/policy/impl/QuickBoot;

.field private final mQuickBootLock:Ljava/lang/Object;

.field private final mQuickBootPowerLongPress:Ljava/lang/Runnable;

.field mQuickBootWakeLock:Landroid/os/PowerManager$WakeLock;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private mScreenshotChordEnabled:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotForLog:Ljava/lang/Runnable;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTouchExplorationEnabled:Z

.field mTranslucentDecorEnabled:Z

.field mUiMode:I

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field mWifiDisplayConnected:Z

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field mWifiDisplayUIBCRotation:I

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHallState:I

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 198
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 202
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 206
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 398
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 399
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 403
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 2063
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.yep.factory.activity.TouchPanelKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDisablePackages:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 252
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 256
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 258
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 259
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 260
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 261
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 262
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 263
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 264
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 266
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 272
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 273
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 284
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 291
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 301
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 303
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 304
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 307
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 313
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 314
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 315
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 316
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 317
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 318
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 319
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    .line 320
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 322
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 324
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressPoweronTime:I

    .line 388
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 390
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 393
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 395
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 417
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 450
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 451
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 452
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 453
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 455
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 456
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 457
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 458
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 461
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 506
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    .line 507
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayUIBCRotation:I

    .line 529
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 590
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v2, 0x400

    const/high16 v3, 0x1000

    const/high16 v4, 0x4000

    const/high16 v6, 0x400

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    .line 597
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "NavigationBar"

    const/high16 v2, 0x800

    const/high16 v3, 0x2000

    const/high16 v4, -0x8000

    const/4 v5, 0x2

    const/high16 v6, 0x800

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    .line 790
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 832
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 839
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    .line 896
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2071
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyLongPressed:Z

    .line 2072
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyInjected:Z

    .line 2718
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 2785
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 3948
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 3949
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 3951
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 4017
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootPowerLongPress:Ljava/lang/Runnable;

    .line 4630
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 4651
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 4666
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 4705
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 5164
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5269
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInQuickBootPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->releaseQuickBootWakeLock()V

    return-void
.end method

.method private acquireQuickBootWakeLock()V
    .locals 1

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4059
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4061
    :cond_0
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 3

    .prologue
    .line 5308
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 5309
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 5311
    :cond_0
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "sysui"
    .parameter "fl"
    .parameter "r"

    .prologue
    .line 3159
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 3162
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 3163
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3164
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3165
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3166
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3174
    :cond_3
    :goto_0
    return-void

    .line 3168
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3169
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3170
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3171
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    .prologue
    .line 5686
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    .prologue
    .line 2030
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2031
    .local v0, dreamManager:Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 2033
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2034
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 720
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 723
    :cond_1
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 788
    return-void
.end method

.method private cancelPendingScreenshotForLog()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 775
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    .prologue
    .line 2655
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    .line 2656
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 2658
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 2659
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 2660
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2668
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 2662
    :catch_0
    move-exception v0

    .line 2663
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2665
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .prologue
    .line 5664
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 5665
    .local v0, newVal:I
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    .line 5666
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 5667
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 5669
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1341
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    if-eqz v1, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1344
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 1347
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1

    .line 1348
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1350
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1351
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1353
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private enablePointerLocation()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1311
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    .line 1312
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1313
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1315
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1318
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1319
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1323
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1324
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1325
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1328
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1329
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1330
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1332
    .local v1, wm:Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1333
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 1336
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1338
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    .line 4801
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4802
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 4803
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4806
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4810
    :goto_0
    if-eqz p1, :cond_0

    .line 4811
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 4813
    :cond_0
    return-void

    .line 4803
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4807
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2051
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2053
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2054
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .prologue
    .line 2041
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 5124
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 5125
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 5126
    const/4 v2, 0x0

    .line 5132
    :cond_0
    return-object v2

    .line 5128
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 5129
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 5130
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 5129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getScreenoffGestureName(I)Ljava/lang/String;
    .locals 3
    .parameter "gKeycode"

    .prologue
    .line 4482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4483
    .local v0, gestrueName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "WindowManager"

    const-string v2, "touch gesture getScreenoffGestureName "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    const-string v1, "225"

    const-string v2, "double_tap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4485
    const-string v1, "226"

    const-string v2, "shake"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4486
    const-string v1, "227"

    const-string v2, "direction_right"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4487
    const-string v1, "228"

    const-string v2, "direction_left"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4488
    const-string v1, "229"

    const-string v2, "direction_down"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4489
    const-string v1, "230"

    const-string v2, "direction_up"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4490
    const-string v1, "231"

    const-string v2, "long_home"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4491
    const-string v1, "232"

    const-string v2, "draw_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4492
    const-string v1, "233"

    const-string v2, "draw_b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4493
    const-string v1, "234"

    const-string v2, "draw_c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4494
    const-string v1, "235"

    const-string v2, "draw_d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4495
    const-string v1, "236"

    const-string v2, "draw_e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4496
    const-string v1, "237"

    const-string v2, "draw_f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    const-string v1, "238"

    const-string v2, "draw_g"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4498
    const-string v1, "239"

    const-string v2, "draw_h"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4499
    const-string v1, "240"

    const-string v2, "draw_i"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4500
    const-string v1, "241"

    const-string v2, "draw_j"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4501
    const-string v1, "242"

    const-string v2, "draw_k"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4502
    const-string v1, "243"

    const-string v2, "draw_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4503
    const-string v1, "244"

    const-string v2, "draw_m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4504
    const-string v1, "245"

    const-string v2, "draw_n"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4505
    const-string v1, "246"

    const-string v2, "draw_o"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4506
    const-string v1, "247"

    const-string v2, "draw_p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4507
    const-string v1, "248"

    const-string v2, "draw_q"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4508
    const-string v1, "249"

    const-string v2, "draw_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4509
    const-string v1, "250"

    const-string v2, "draw_s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4510
    const-string v1, "251"

    const-string v2, "draw_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4511
    const-string v1, "252"

    const-string v2, "draw_u"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4512
    const-string v1, "253"

    const-string v2, "draw_v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4513
    const-string v1, "254"

    const-string v2, "draw_w"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4514
    const-string v1, "255"

    const-string v2, "draw_x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4515
    const-string v1, "256"

    const-string v2, "draw_y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4516
    const-string v1, "257"

    const-string v2, "draw_z"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4517
    const-string v1, "270"

    const-string v2, "gesture_max"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4520
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method static getMsgDispatchMediaKeyWithWakeLock()I
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v0, 0x3

    return v0
.end method

.method static getScreenshotChordDebounceDelayMillis()J
    .locals 2
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    const/high16 v0, 0x4020

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 783
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 2635
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 2637
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 2046
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getWindowTypesWhereHomeDoesntWork()[I
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 890
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_0

    .line 891
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 892
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    .line 894
    :cond_0
    return-void
.end method

.method private handleLongPressOnHome()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 871
    const-string v1, "yitian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   handleLongPressOnHome  mLongPressOnHomeBehavior="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v1, :cond_0

    .line 874
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 875
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 877
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v1, v5, :cond_1

    .line 878
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 880
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_0

    .line 881
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "event_Home_Longpressed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v0, intentToVoiceA:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .parameter "win"
    .parameter "fallbackEvent"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 2586
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 2587
    .local v0, actions:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 2588
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 2590
    .local v1, delayMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 2594
    .end local v1           #delayMillis:J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private interceptKeyMenuForLongpress(Landroid/view/KeyEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 2076
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v11

    .line 2077
    .local v11, keyguardOn:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 2078
    .local v10, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    .line 2079
    .local v12, repeatCount:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v9, 0x1

    .line 2080
    .local v9, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    .line 2081
    .local v8, canceled:Z
    const/16 v0, 0x52

    if-ne v10, v0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2082
    if-eqz v9, :cond_4

    .line 2083
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyInjected:Z

    if-eqz v0, :cond_1

    .line 2084
    const/4 v0, 0x0

    .line 2119
    :goto_1
    return v0

    .line 2079
    .end local v8           #canceled:Z
    .end local v9           #down:Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 2086
    .restart local v8       #canceled:Z
    .restart local v9       #down:Z
    :cond_1
    if-nez v12, :cond_3

    .line 2087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyLongPressed:Z

    .line 2117
    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 2088
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 2089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyLongPressed:Z

    .line 2090
    if-nez v11, :cond_2

    .line 2092
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2093
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_2

    .line 2097
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyInjected:Z

    if-eqz v0, :cond_5

    .line 2098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyInjected:Z

    .line 2099
    const/4 v0, 0x0

    goto :goto_1

    .line 2101
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyLongPressed:Z

    if-eqz v0, :cond_6

    .line 2102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyLongPressed:Z

    goto :goto_2

    .line 2104
    :cond_6
    if-nez v11, :cond_2

    .line 2106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuKeyInjected:Z

    .line 2107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2108
    .local v1, now:J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v13

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x52

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2111
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v13

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x52

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto :goto_2

    .line 2119
    .end local v1           #now:J
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 5
    .parameter "handled"

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 696
    if-nez p1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "PhoneWindowManager.mQuitBootWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 699
    .local v0, mQuitBootWakeLock1:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 700
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInQuickBootPowerOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    .end local v0           #mQuitBootWakeLock1:Landroid/os/PowerManager$WakeLock;
    :cond_0
    :goto_0
    return-void

    .line 703
    .restart local v0       #mQuitBootWakeLock1:Landroid/os/PowerManager$WakeLock;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .parameter "canceled"

    .prologue
    const/4 v0, 0x0

    .line 709
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 713
    :cond_0
    return v0
.end method

.method private interceptScreenshotChord()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    .line 726
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_0

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 729
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    iget-wide v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 731
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 732
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mipop.cropimage"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, mipopShutScreen:Landroid/content/Intent;
    const/high16 v3, 0x1001

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 736
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 742
    .end local v0           #mipopShutScreen:Landroid/content/Intent;
    .end local v1           #now:J
    :cond_0
    return-void
.end method

.method private interceptScreenshotLog()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 745
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_1

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 748
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 750
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 751
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotForLog()V

    .line 754
    const-string v4, "1"

    const-string v5, "persist.sys.ztelog.enable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    const-string v4, "WindowManager"

    const-string v5, "interceptScreenshotLog start activity LCDcheck"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.emode"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.zte.smartdialer.input"

    const-string v5, "*983*564740#"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string v4, "com.zte.smartdialer.isAutoTPTest"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const/high16 v4, 0x1001

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 761
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 771
    .end local v2           #now:J
    :cond_1
    return-void

    .line 762
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #now:J
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when start SystemAgent service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5084
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5476
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .parameter "accessibilityMode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1486
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1492
    :cond_0
    :goto_0
    return v0

    .line 1488
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1490
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 2
    .parameter "vis"

    .prologue
    .line 5672
    const/16 v0, 0x1800

    .line 5673
    .local v0, flags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInQuickBootPowerOff()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5909
    const-string v4, "persist.sys.quickboot"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5910
    .local v0, quickbootVal:I
    const-string v4, "service.quickboot.state"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5911
    .local v1, quickboot_state:I
    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 5914
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5080
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4533
    sparse-switch p1, :sswitch_data_0

    .line 4557
    :cond_0
    :goto_0
    return v0

    .line 4538
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 4555
    goto :goto_0

    .line 4533
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x50 -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4841
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 6

    .prologue
    .line 2618
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2619
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 2621
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2622
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2626
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2631
    :cond_0
    :goto_0
    return-void

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2598
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2599
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2602
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2603
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2607
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 2608
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 2609
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 2611
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2615
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 2612
    :catch_0
    move-exception v0

    .line 2613
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 3568
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3569
    .local v0, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3570
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 3571
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3573
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3574
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3575
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_1

    .line 3576
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 3581
    :cond_1
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 5461
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5473
    :cond_0
    :goto_0
    return-void

    .line 5464
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5466
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5469
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 5471
    .local v1, ringTone:Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 5472
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    .line 2641
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 2643
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 2644
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 2645
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2652
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2650
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1120
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1122
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 1124
    :cond_0
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1129
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1131
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1133
    :cond_3
    return-void
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 1357
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1358
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 1371
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1360
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1362
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1364
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 1366
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 1368
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1358
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private releaseQuickBootWakeLock()V
    .locals 1

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4065
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4067
    :cond_0
    return-void
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 5
    .parameter "swipeTarget"

    .prologue
    .line 4688
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4689
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v2

    .line 4690
    .local v2, sb:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 4691
    .local v1, nb:Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_5

    .line 4692
    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4693
    .local v0, barTarget:Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    xor-int v3, v2, v1

    if-eqz v3, :cond_2

    if-eq v0, p1, :cond_2

    .line 4695
    monitor-exit v4

    .line 4703
    .end local v0           #barTarget:Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1
    return-void

    .line 4692
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 4697
    .restart local v0       #barTarget:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 4698
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 4699
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 4700
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 4702
    .end local v0           #barTarget:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_5
    monitor-exit v4

    goto :goto_1

    .end local v1           #nb:Z
    .end local v2           #sb:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 4887
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4889
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4893
    :cond_0
    :goto_0
    return-void

    .line 4890
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setFullScreenOrNot(Z)V
    .locals 4
    .parameter "isFullScreen"

    .prologue
    .line 5918
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFullScreenOrNot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5919
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5920
    .local v0, res:Landroid/content/ContentResolver;
    const-string v2, "topfullscreenornot"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5921
    return-void

    .line 5920
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 3964
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3965
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 3966
    monitor-exit v4

    .line 4015
    :goto_0
    return-void

    .line 3968
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3971
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3972
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4009
    .local v1, conn:Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4011
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4012
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4014
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #conn:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private toggleRecentApps()V
    .locals 4

    .prologue
    .line 2671
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 2672
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2674
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 2675
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 2676
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2683
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 2678
    :catch_0
    move-exception v0

    .line 2679
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2681
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private updateCameraPower()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "camera_power_shutter"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraPowerShutter:Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 5283
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 5284
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 5286
    .local v0, enable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 5287
    if-eqz v0, :cond_2

    .line 5289
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5294
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5296
    :cond_0
    monitor-exit v2

    .line 5297
    return-void

    .line 5284
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5292
    .restart local v0       #enable:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5296
    .end local v0           #enable:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 20
    .parameter "win"
    .parameter "oldVis"
    .parameter "vis"

    .prologue
    .line 5595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5598
    .local v15, transWin:Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 5599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 5602
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v14, 0x1

    .line 5603
    .local v14, statusBarHasFocus:Z
    :goto_1
    if-eqz v14, :cond_0

    .line 5604
    const v6, -0x3fffe7fa

    .line 5610
    .local v6, flags:I
    const v18, 0x3fffe7f9

    and-int v18, v18, p3

    and-int v19, p2, v6

    or-int p3, v18, v19

    .line 5613
    .end local v6           #flags:I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v18

    if-nez v18, :cond_1

    .line 5614
    const v18, 0x3fffffff

    and-int p3, p3, v18

    .line 5618
    :cond_1
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/4 v10, 0x1

    .line 5620
    .local v10, immersiveSticky:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v9, 0x1

    .line 5624
    .local v9, hideStatusBarWM:Z
    :goto_3
    and-int/lit8 v18, p3, 0x4

    if-eqz v18, :cond_b

    const/4 v8, 0x1

    .line 5626
    .local v8, hideStatusBarSysui:Z
    :goto_4
    and-int/lit8 v18, p3, 0x2

    if-eqz v18, :cond_c

    const/4 v7, 0x1

    .line 5629
    .local v7, hideNavBarSysui:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    if-nez v9, :cond_3

    if-eqz v8, :cond_2

    if-nez v10, :cond_3

    :cond_2
    if-eqz v14, :cond_d

    :cond_3
    const/16 v17, 0x1

    .line 5635
    .local v17, transientStatusBarAllowed:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    if-eqz v7, :cond_e

    if-eqz v10, :cond_e

    const/16 v16, 0x1

    .line 5639
    .local v16, transientNavBarAllowed:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_f

    if-nez v17, :cond_f

    if-eqz v8, :cond_f

    const/4 v5, 0x1

    .line 5641
    .local v5, denyTransientStatus:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_10

    if-nez v16, :cond_10

    const/4 v4, 0x1

    .line 5643
    .local v4, denyTransientNav:Z
    :goto_9
    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    .line 5645
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 5648
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 5651
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v12

    .line 5652
    .local v12, oldImmersiveMode:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v11

    .line 5653
    .local v11, newImmersiveMode:Z
    if-eqz p1, :cond_6

    if-eq v12, v11, :cond_6

    .line 5654
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v13

    .line 5655
    .local v13, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;Z)V

    .line 5658
    .end local v13           #pkg:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 5660
    return p3

    .line 5595
    .end local v4           #denyTransientNav:Z
    .end local v5           #denyTransientStatus:Z
    .end local v7           #hideNavBarSysui:Z
    .end local v8           #hideStatusBarSysui:Z
    .end local v9           #hideStatusBarWM:Z
    .end local v10           #immersiveSticky:Z
    .end local v11           #newImmersiveMode:Z
    .end local v12           #oldImmersiveMode:Z
    .end local v14           #statusBarHasFocus:Z
    .end local v15           #transWin:Landroid/view/WindowManagerPolicy$WindowState;
    .end local v16           #transientNavBarAllowed:Z
    .end local v17           #transientStatusBarAllowed:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_0

    .line 5602
    .restart local v15       #transWin:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 5618
    .restart local v14       #statusBarHasFocus:Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5620
    .restart local v10       #immersiveSticky:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 5624
    .restart local v9       #hideStatusBarWM:Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 5626
    .restart local v8       #hideStatusBarSysui:Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 5629
    .restart local v7       #hideNavBarSysui:Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 5635
    .restart local v17       #transientStatusBarAllowed:Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 5639
    .restart local v16       #transientNavBarAllowed:Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_8

    .line 5641
    .restart local v5       #denyTransientStatus:Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_9
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 5545
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5546
    .local v4, win:Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v4, :cond_1

    move v0, v5

    .line 5590
    :goto_1
    return v0

    .line 5545
    .end local v4           #win:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 5549
    .restart local v4       #win:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d4

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    :cond_2
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    .local v2, tmpVisibility:I
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v6, :cond_3

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v6, v7, :cond_3

    :cond_3
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v4, v6, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    .local v3, visibility:I
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v3, v6

    .local v0, diff:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .local v1, needsMenu:Z
    if-nez v0, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v6, v1, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-ne v6, v7, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "No keyguard interface!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .parameter "windowToken"
    .parameter "screenOnListener"

    .prologue
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "No lock screen! waitForWindowDrawn false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No lock screen! windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .locals 13
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "logo"
    .parameter "windowFlags"

    .prologue
    if-nez p2, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const/4 v9, 0x0

    .local v9, wm:Landroid/view/WindowManager;
    const/4 v7, 0x0

    .local v7, view:Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .local v6, ta:Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_4

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    const/4 v10, 0x0

    if-eqz v7, :cond_0

    throw v7

    move-result-object v11

    if-nez v11, :cond_0

    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    or-int/lit8 v10, p9, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    or-int/lit8 v11, p9, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x2

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultIcon(I)V

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultLogo(I)V

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_6

    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/WindowManager;

    move-object v9, v0

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v10

    if-eqz v10, :cond_8

    move-object v10, v7

    :goto_2
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .end local v2           #context:Landroid/content/Context;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v8           #win:Landroid/view/Window;
    :catch_0
    move-exception v3

    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_5
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_9

    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :cond_9
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    .local v3, e:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_9

    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_3

    .end local v3           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_a

    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_a
    throw v10

    .restart local v2       #context:Landroid/content/Context;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .parameter "config"
    .parameter "keyboardPresence"
    .parameter "navigationPresence"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/16 v6, 0x7d4

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-gez v3, :cond_2

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_3

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v6, :cond_b

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_3
    :goto_0
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v6, :cond_4

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    :cond_4
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v1, :cond_c

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_c

    move v0, v1

    .local v0, applyWindow:Z
    :goto_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v3, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_a

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v3, :cond_a

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v3, :cond_a

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_a

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v3, v5, :cond_a

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_7
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v3, p1, :cond_d

    const/4 v3, 0x2

    :goto_2
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v1

    :cond_8
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_9
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .end local v0           #applyWindow:Z
    :cond_a
    return-void

    :cond_b
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto :goto_0

    :cond_c
    move v0, v2

    goto :goto_1

    .restart local v0       #applyWindow:Z
    :cond_d
    move v3, v1

    goto :goto_2
.end method

.method public beginLayoutLw(ZIII)V
    .locals 33
    .parameter "isDefaultDisplay"
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    if-eqz p1, :cond_a

    packed-switch p4, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v22, v0

    .local v22, overscanLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v24, v0

    .local v24, overscanTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v23, v0

    .local v23, overscanRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v21, v0

    .local v21, overscanBottom:I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int v2, p2, v22

    sub-int v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v2, p3, v24

    sub-int v2, v2, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int v2, p2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    sub-int v2, p3, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    const/high16 v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    sget-object v25, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .local v25, pf:Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .local v13, df:Landroid/graphics/Rect;
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .local v20, of:Landroid/graphics/Rect;
    sget-object v32, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .local v32, vf:Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .local v12, dcf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v28, v0

    .local v28, sysui:I
    and-int/lit8 v2, v28, 0x2

    if-nez v2, :cond_b

    const/16 v19, 0x1

    .local v19, navVisible:Z
    :goto_1
    const/high16 v2, -0x8000

    and-int v2, v2, v28

    if-eqz v2, :cond_c

    const/16 v18, 0x1

    .local v18, navTranslucent:Z
    :goto_2
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_d

    const/4 v14, 0x1

    .local v14, immersive:Z
    :goto_3
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_e

    const/4 v15, 0x1

    .local v15, immersiveSticky:Z
    :goto_4
    if-nez v14, :cond_0

    if-eqz v15, :cond_f

    :cond_0
    const/16 v17, 0x1

    .local v17, navAllowedHidden:Z
    :goto_5
    if-nez v15, :cond_10

    const/4 v2, 0x1

    :goto_6
    and-int v18, v18, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v18, v18, v2

    if-nez v19, :cond_1

    if-eqz v17, :cond_11

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    :cond_2
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_8
    or-int v19, v19, v2

    const/16 v31, 0x0

    .local v31, updateSysUiVisibility:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v30

    .local v30, transientNavBarShowing:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_13

    :cond_3
    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_16

    sub-int v2, p3, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v29, v2, v3

    .local v29, top:I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p3, v21

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-eqz v30, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    :goto_a
    if-eqz v19, :cond_4

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .end local v29           #top:I
    :cond_4
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object v8, v12

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v31, 0x1

    .end local v30           #transientNavBarShowing:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v25

    move-object v4, v13

    move-object/from16 v5, v32

    move-object/from16 v6, v32

    move-object/from16 v7, v32

    move-object v8, v12

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    const/high16 v2, 0x400

    and-int v2, v2, v28

    if-eqz v2, :cond_19

    const/16 v26, 0x1

    .local v26, statusBarTransient:Z
    :goto_c
    const/high16 v2, 0x4000

    and-int v2, v2, v28

    if-eqz v2, :cond_1a

    const/16 v27, 0x1

    .local v27, statusBarTranslucent:Z
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v27, v27, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v26, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v26, :cond_7

    if-nez v27, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v31, 0x1

    .end local v26           #statusBarTransient:Z
    .end local v27           #statusBarTranslucent:Z
    :cond_8
    if-eqz v31, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .end local v14           #immersive:Z
    .end local v15           #immersiveSticky:Z
    .end local v17           #navAllowedHidden:Z
    .end local v18           #navTranslucent:Z
    .end local v19           #navVisible:Z
    .end local v28           #sysui:I
    .end local v31           #updateSysUiVisibility:Z
    :cond_9
    return-void

    .end local v12           #dcf:Landroid/graphics/Rect;
    .end local v13           #df:Landroid/graphics/Rect;
    .end local v20           #of:Landroid/graphics/Rect;
    .end local v21           #overscanBottom:I
    .end local v22           #overscanLeft:I
    .end local v23           #overscanRight:I
    .end local v24           #overscanTop:I
    .end local v25           #pf:Landroid/graphics/Rect;
    .end local v32           #vf:Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v22, v0

    .restart local v22       #overscanLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v24, v0

    .restart local v24       #overscanTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v23, v0

    .restart local v23       #overscanRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v21, v0

    .restart local v21       #overscanBottom:I
    goto/16 :goto_0

    .end local v21           #overscanBottom:I
    .end local v22           #overscanLeft:I
    .end local v23           #overscanRight:I
    .end local v24           #overscanTop:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v22, v0

    .restart local v22       #overscanLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v24, v0

    .restart local v24       #overscanTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v23, v0

    .restart local v23       #overscanRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v21, v0

    .restart local v21       #overscanBottom:I
    goto/16 :goto_0

    .end local v21           #overscanBottom:I
    .end local v22           #overscanLeft:I
    .end local v23           #overscanRight:I
    .end local v24           #overscanTop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v22, v0

    .restart local v22       #overscanLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v24, v0

    .restart local v24       #overscanTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v23, v0

    .restart local v23       #overscanRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v21, v0

    .restart local v21       #overscanBottom:I
    goto/16 :goto_0

    .end local v21           #overscanBottom:I
    .end local v22           #overscanLeft:I
    .end local v23           #overscanRight:I
    .end local v24           #overscanTop:I
    :cond_a
    const/16 v22, 0x0

    .restart local v22       #overscanLeft:I
    const/16 v24, 0x0

    .restart local v24       #overscanTop:I
    const/16 v23, 0x0

    .restart local v23       #overscanRight:I
    const/16 v21, 0x0

    .restart local v21       #overscanBottom:I
    goto/16 :goto_0

    .restart local v12       #dcf:Landroid/graphics/Rect;
    .restart local v13       #df:Landroid/graphics/Rect;
    .restart local v20       #of:Landroid/graphics/Rect;
    .restart local v25       #pf:Landroid/graphics/Rect;
    .restart local v28       #sysui:I
    .restart local v32       #vf:Landroid/graphics/Rect;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_1

    .restart local v19       #navVisible:Z
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_2

    .restart local v18       #navTranslucent:Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_3

    .restart local v14       #immersive:Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    .restart local v15       #immersiveSticky:Z
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5

    .restart local v17       #navAllowedHidden:Z
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_7

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_8

    .restart local v30       #transientNavBarShowing:Z
    .restart local v31       #updateSysUiVisibility:Z
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_9

    .restart local v29       #top:I
    :cond_14
    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_a

    .end local v29           #top:I
    :cond_16
    sub-int v2, p2, v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v16, v2, v3

    .local v16, left:I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p2, v23

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-eqz v30, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    :goto_e
    if-eqz v19, :cond_4

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_b

    :cond_17
    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_e

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_e

    .end local v16           #left:I
    .end local v30           #transientNavBarShowing:Z
    :cond_19
    const/16 v26, 0x0

    goto/16 :goto_c

    .restart local v26       #statusBarTransient:Z
    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_d

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    return-void
.end method

.method callCancelPendingPowerKeyAction()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    return-void
.end method

.method callCancelPendingScreenshotChordAction()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    return-void
.end method

.method callHandleLongPressOnHome()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    return-void
.end method

.method callInterceptPowerKeyDown(Z)V
    .locals 0
    .parameter "handled"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    return-void
.end method

.method callInterceptPowerKeyUp(Z)Z
    .locals 1
    .parameter "canceled"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v0

    return v0
.end method

.method callInterceptScreenshotChord()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    return-void
.end method

.method callKeyguardIsShowingTq()Z
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    return v0
.end method

.method callLaunchAssistAction()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    return-void
.end method

.method callLaunchAssistLongPressAction()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method callUpdateLockScreenTimeout()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    return-void
.end method

.method callUpdateSystemUiVisibilityLw()I
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .parameter "win"
    .parameter "attrs"

    .prologue
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ed -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .parameter "windowType"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 4
    .parameter "attrs"
    .parameter "outAppOp"

    .prologue
    const/4 v2, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .local v1, type:I
    const/4 v3, -0x1

    aput v3, p2, v2

    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .local v0, permission:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, -0x8

    goto :goto_0

    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput v3, p2, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ec -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .parameter "onWallpaper"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x10a002a

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x10a0027

    goto :goto_0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, intent:Landroid/content/Intent;
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object v3, v2

    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_2

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_1
    return-object v4

    :cond_0
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :cond_1
    move-object v3, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0x10080

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_3

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.dock_home"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v2

    goto :goto_1

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_4
    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .local v0, repeatEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/16 v18, 0x0

    .local v18, fallbackEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .local v20, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .local v21, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .local v22, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .local v19, initialDown:Z
    :goto_0
    if-eqz v19, :cond_3

    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .local v17, fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    const/16 v18, 0x0

    :cond_0
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    :cond_1
    :goto_2
    return-object v18

    .restart local v20       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v21       #keyCode:I
    .restart local v22       #metaState:I
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .restart local v19       #initialDown:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17       #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .restart local v14       #flags:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, changes:I
    const/4 v2, 0x0

    .local v2, topIsFullscreen:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v6, :cond_b

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v6

    if-eqz v6, :cond_a

    move v2, v4

    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    :cond_3
    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v6, v2, :cond_5

    if-nez v2, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setFullScreenOrNot(Z)V

    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    or-int/lit8 v0, v0, 0x7

    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v3

    const v4, -0x3ffffffa

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    or-int/lit8 v0, v0, 0x1

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    return v0

    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move-object v1, v3

    goto/16 :goto_0

    .restart local v1       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move v2, v5

    goto :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_c

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_d

    :cond_c
    move v2, v4

    :goto_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    move v2, v5

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_f

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_10
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v6, :cond_12

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v3

    if-eqz v3, :cond_11

    or-int/lit8 v0, v0, 0x7

    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto :goto_3

    :cond_12
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v6, :cond_14

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x7

    :cond_13
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_14
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v3

    if-eqz v3, :cond_15

    or-int/lit8 v0, v0, 0x7

    :cond_15
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_3
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3ffffffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAboveUniverseLayer()I
    .locals 1

    .prologue
    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    const v6, 0x10100

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v2, fl:I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .local v3, systemUiVisibility:I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_0

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .local v1, availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .local v0, availBottom:I
    :goto_0
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :goto_1
    return-void

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .restart local v1       #availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0       #availBottom:I
    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 5556
    goto :goto_1

    .line 5559
    :cond_2
    and-int/lit16 v4, v2, 0x400

    if-nez v4, :cond_3

    const/high16 v4, 0x200

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_4
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method getLongPressOnHomeBehavior()I
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    return v0
.end method

.method protected getMLock()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .end local p2
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .end local p1
    :cond_0
    return p1
.end method

.method getPowerKeyTime()J
    .locals 2
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    return-wide v0
.end method

.method getPowerKeyTriggered()Z
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    return v0
.end method

.method getScreenshotChordEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    return v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserRotationMode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getVolumeDownKeyConsumedByScreenshotChord()Z
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    return v0
.end method

.method getVolumeDownKeyTime()J
    .locals 2
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    return-wide v0
.end method

.method getVolumeDownKeyTriggered()Z
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    return v0
.end method

.method getVolumeUpKeyTriggered()Z
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    return v0
.end method

.method goHome()Z
    .locals 19

    .prologue
    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v18

    .local v18, result:I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    .end local v18           #result:I
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .local v4, dock:Landroid/content/Intent;
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .restart local v18       #result:I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .end local v4           #dock:Landroid/content/Intent;
    .end local v18           #result:I
    :catch_0
    move-exception v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 6
    .parameter "stream"
    .parameter "keycode"

    .prologue
    const/16 v5, 0x18

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 4773
    :goto_0
    return-void

    .line 4767
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    if-ne p2, v5, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    if-ne p2, v5, :cond_3

    :goto_3
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjust*StreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    move v2, v3

    goto :goto_3

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 11
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x1020

    const/4 v8, 0x0

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/internal/policy/impl/QuickBoot;

    invoke-direct {v4, p1, p3}, Lcom/android/internal/policy/impl/QuickBoot;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBoot:Lcom/android/internal/policy/impl/QuickBoot;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v4, "1"

    const-string v5, "ro.config.headless"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    invoke-direct {v4, p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    new-instance v4, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v4, v10, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "PhoneWindowManager.mQuickBootWakeLock"

    invoke-virtual {v4, v10, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v4, "ro.quickboot.press_duration"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressPoweronTime:I

    const-string v4, "1"

    const-string v5, "ro.debuggable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    const v4, 0x10e0013

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    const v4, 0x10e0015

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    const v4, 0x10e0014

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    const v4, 0x10e0016

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setFullScreenOrNot(Z)V

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "hardware"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    if-nez v4, :cond_0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-direct {v4, p1, v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v4, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    const-string v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, wifiDisplayFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .local v3, wifidisplayIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070019

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001a

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001b

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001c

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001d

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    new-instance v4, Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_1

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #wifiDisplayFilter:Landroid/content/IntentFilter;
    .end local v3           #wifidisplayIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .local v4, plugged:Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v2, "/sys/class/switch/hdmi/state"

    .local v2, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    .local v0, buf:[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .local v3, n:I
    if-le v3, v7, :cond_0

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .end local v0           #buf:[C
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    return-void

    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_2
    move v4, v8

    goto :goto_0

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_1

    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_1

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_7
    throw v7

    .end local v2           #filename:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/FileReader;
    :cond_4
    move v9, v8

    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_3

    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_6

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 42
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v27

    .local v27, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    .local v26, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v33

    .local v33, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v29

    .local v29, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v22

    .local v22, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v19, 0x1

    .local v19, down:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v15

    .local v15, canceled:Z
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTi keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " down="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " repeatCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keyguardOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHomePressed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " canceled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    if-eqz v3, :cond_1

    if-eqz v19, :cond_1

    if-nez v33, :cond_1

    const/4 v3, 0x3

    move/from16 v0, v26

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    move/from16 v0, v26

    if-eq v0, v3, :cond_0

    const/16 v3, 0x52

    move/from16 v0, v26

    if-eq v0, v3, :cond_0

    const/16 v3, 0x54

    move/from16 v0, v26

    if-ne v0, v3, :cond_1

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/os/IHardwareService;->setButtonLightEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v3, :cond_8

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    .local v31, now:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v7, 0x96

    add-long v38, v5, v7

    .local v38, timeoutTime:J
    cmp-long v3, v31, v38

    if-gez v3, :cond_3

    sub-long v5, v38, v31

    .end local v31           #now:J
    .end local v38           #timeoutTime:J
    :goto_2
    return-wide v5

    .end local v15           #canceled:Z
    .end local v19           #down:Z
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .restart local v15       #canceled:Z
    .restart local v19       #down:Z
    :catch_0
    move-exception v20

    .local v20, e:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "remote call for turn on button light failed."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v20           #e:Landroid/os/RemoteException;
    :cond_3
    const/16 v3, 0x19

    move/from16 v0, v26

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v3, :cond_5

    if-nez v19, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    :cond_4
    const-wide/16 v5, -0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    .restart local v31       #now:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    const-wide/16 v7, 0x96

    add-long v38, v5, v7

    .restart local v38       #timeoutTime:J
    cmp-long v3, v31, v38

    if-gez v3, :cond_6

    sub-long v5, v38, v31

    goto :goto_2

    .end local v31           #now:J
    .end local v38           #timeoutTime:J
    :cond_6
    const/16 v3, 0x18

    move/from16 v0, v26

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    if-eqz v3, :cond_8

    if-nez v19, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    :cond_7
    const-wide/16 v5, -0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x4

    move/from16 v0, v26

    if-ne v0, v3, :cond_9

    if-nez v19, :cond_9

    new-instance v24, Landroid/content/Intent;

    const-string v3, "event_back_key_pressed"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v24, intentPressBack:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v24           #intentPressBack:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyMenuForLongpress(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-wide/16 v5, -0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x3

    move/from16 v0, v26

    if-ne v0, v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInEmode()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez v19, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_b
    if-eqz v15, :cond_c

    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; event canceled."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_c
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    .local v37, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v37, :cond_d

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    .end local v37           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v21

    .local v21, ex:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    :cond_10
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_11
    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .local v12, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_3
    if-eqz v12, :cond_16

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v40, v0

    .local v40, type:I
    const/16 v3, 0x7d4

    move/from16 v0, v40

    if-eq v0, v3, :cond_12

    const/16 v3, 0x7ed

    move/from16 v0, v40

    if-eq v0, v3, :cond_12

    const/16 v3, 0x7d9

    move/from16 v0, v40

    if-ne v0, v3, :cond_14

    :cond_12
    const-wide/16 v5, 0x0

    goto/16 :goto_2

    .end local v12           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v40           #type:I
    :cond_13
    const/4 v12, 0x0

    goto :goto_3

    .restart local v12       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v40       #type:I
    :cond_14
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v3

    move/from16 v41, v0

    .local v41, typeCount:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v3, v3, v23

    move/from16 v0, v40

    if-ne v0, v3, :cond_15

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_15
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .end local v23           #i:I
    .end local v40           #type:I
    .end local v41           #typeCount:I
    :cond_16
    if-nez v33, :cond_1a

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    :cond_17
    :goto_5
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_17

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_5

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_17

    if-nez v27, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_5

    .end local v12           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_1b
    const/16 v3, 0x52

    move/from16 v0, v26

    if-ne v0, v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInEmode()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v17, 0x1

    .local v17, chordBug:I
    if-eqz v19, :cond_2e

    if-nez v33, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v3, :cond_2e

    and-int/lit8 v3, v29, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    .end local v4           #intent:Landroid/content/Intent;
    .end local v17           #chordBug:I
    :cond_1c
    const/16 v3, 0x54

    move/from16 v0, v26

    if-ne v0, v3, :cond_1f

    if-eqz v19, :cond_1e

    if-nez v33, :cond_1d

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    :cond_1d
    const-wide/16 v5, 0x0

    goto/16 :goto_2

    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_1f
    const/16 v3, 0xbb

    move/from16 v0, v26

    if-ne v0, v3, :cond_22

    if-nez v27, :cond_20

    if-eqz v19, :cond_21

    if-nez v33, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    :cond_20
    :goto_6
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_21
    if-nez v19, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_6

    :cond_22
    const/16 v3, 0xdb

    move/from16 v0, v26

    if-ne v0, v3, :cond_27

    if-eqz v19, :cond_25

    if-nez v33, :cond_24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    :cond_23
    :goto_7
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_24
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_23

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-nez v27, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_7

    :cond_26
    if-nez v27, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_7

    :cond_27
    const/16 v3, 0x78

    move/from16 v0, v26

    if-ne v0, v3, :cond_29

    if-eqz v19, :cond_28

    if-nez v33, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_29
    const/16 v3, 0xdd

    move/from16 v0, v26

    if-eq v0, v3, :cond_2a

    const/16 v3, 0xdc

    move/from16 v0, v26

    if-ne v0, v3, :cond_2e

    :cond_2a
    if-eqz v19, :cond_2c

    const/16 v3, 0xdd

    move/from16 v0, v26

    if-ne v0, v3, :cond_2d

    const/16 v18, 0x1

    .local v18, direction:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    const/4 v7, -0x3

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .local v13, auto:I
    if-eqz v13, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    const/4 v7, -0x3

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v30

    .local v30, min:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v28

    .local v28, max:I
    sub-int v3, v28, v30

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0xa

    mul-int v36, v3, v18

    .local v36, step:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    const/4 v7, -0x3

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .local v14, brightness:I
    add-int v14, v14, v36

    move/from16 v0, v28

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move/from16 v0, v30

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness"

    const/4 v6, -0x3

    invoke-static {v3, v5, v14, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v4           #intent:Landroid/content/Intent;
    .end local v13           #auto:I
    .end local v14           #brightness:I
    .end local v18           #direction:I
    .end local v28           #max:I
    .end local v30           #min:I
    .end local v36           #step:I
    :cond_2c
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_2d
    const/16 v18, -0x1

    goto/16 :goto_8

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v3, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v25

    .local v25, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v25 .. v26}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v19, :cond_2f

    if-nez v33, :cond_2f

    if-nez v27, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v35

    .local v35, shortcutIntent:Landroid/content/Intent;
    if-eqz v35, :cond_30

    const/high16 v3, 0x1000

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v35           #shortcutIntent:Landroid/content/Intent;
    :cond_2f
    :goto_9
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    .restart local v35       #shortcutIntent:Landroid/content/Intent;
    :catch_2
    move-exception v21

    .local v21, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .end local v21           #ex:Landroid/content/ActivityNotFoundException;
    :cond_30
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v25           #kcm:Landroid/view/KeyCharacterMap;
    .end local v35           #shortcutIntent:Landroid/content/Intent;
    :cond_31
    if-eqz v19, :cond_32

    if-nez v33, :cond_32

    if-nez v27, :cond_32

    const/high16 v3, 0x1

    and-int v3, v3, v29

    if-eqz v3, :cond_32

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v25

    .restart local v25       #kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v25 .. v26}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v5, -0x70001

    and-int v5, v5, v29

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v35

    .restart local v35       #shortcutIntent:Landroid/content/Intent;
    if-eqz v35, :cond_32

    const/high16 v3, 0x1000

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_a
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :catch_3
    move-exception v21

    .restart local v21       #ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .end local v21           #ex:Landroid/content/ActivityNotFoundException;
    .end local v25           #kcm:Landroid/view/KeyCharacterMap;
    .end local v35           #shortcutIntent:Landroid/content/Intent;
    :cond_32
    if-eqz v19, :cond_33

    if-nez v33, :cond_33

    if-nez v27, :cond_33

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, category:Ljava/lang/String;
    if-eqz v16, :cond_33

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_b
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :catch_4
    move-exception v21

    .restart local v21       #ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .end local v4           #intent:Landroid/content/Intent;
    .end local v16           #category:Ljava/lang/String;
    .end local v21           #ex:Landroid/content/ActivityNotFoundException;
    :cond_33
    if-eqz v19, :cond_35

    if-nez v33, :cond_35

    const/16 v3, 0x3d

    move/from16 v0, v26

    if-ne v0, v3, :cond_35

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-nez v3, :cond_36

    if-nez v27, :cond_36

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    and-int/lit16 v0, v3, -0xc2

    move/from16 v34, v0

    .local v34, shiftlessModifiers:I
    const/4 v3, 0x2

    move/from16 v0, v34

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-nez v3, :cond_34

    const/high16 v3, 0x1

    move/from16 v0, v34

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_36

    :cond_34
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    .end local v34           #shiftlessModifiers:I
    :cond_35
    if-nez v19, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    and-int v3, v3, v29

    if-nez v3, :cond_36

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v27, :cond_38

    const/4 v3, 0x2

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    :cond_36
    if-eqz v19, :cond_3a

    if-nez v33, :cond_3a

    const/16 v3, 0xcc

    move/from16 v0, v26

    if-eq v0, v3, :cond_37

    const/16 v3, 0x3e

    move/from16 v0, v26

    if-ne v0, v3, :cond_3a

    move/from16 v0, v29

    and-int/lit16 v3, v0, 0x7000

    if-eqz v3, :cond_3a

    :cond_37
    move/from16 v0, v29

    and-int/lit16 v3, v0, 0xc1

    if-eqz v3, :cond_39

    const/16 v18, -0x1

    .restart local v18       #direction:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    move/from16 v0, v18

    invoke-interface {v3, v5, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    .end local v18           #direction:I
    :cond_38
    const/4 v3, 0x3

    goto :goto_c

    :cond_39
    const/16 v18, 0x1

    goto :goto_d

    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v3, :cond_3c

    if-nez v19, :cond_3c

    const/16 v3, 0xcc

    move/from16 v0, v26

    if-eq v0, v3, :cond_3b

    const/16 v3, 0x3e

    move/from16 v0, v26

    if-ne v0, v3, :cond_3c

    :cond_3b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    :cond_3d
    const-wide/16 v5, 0x0

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 24
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    const/16 v18, 0x0

    :cond_0
    :goto_0
    return v18

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_3

    const/4 v7, 0x1

    .local v7, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .local v6, canceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    .local v15, keyCode:I
    const-string v20, "sys.quickboot.enable"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v15, v0, :cond_2

    if-nez p3, :cond_2

    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->acquireQuickBootWakeLock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressPoweronTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_2
    const/16 v18, 0x0

    goto :goto_0

    .end local v6           #canceled:Z
    .end local v7           #down:Z
    .end local v15           #keyCode:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .restart local v6       #canceled:Z
    .restart local v7       #down:Z
    .restart local v15       #keyCode:I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->releaseQuickBootWakeLock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    const/high16 v20, 0x100

    and-int v20, v20, p2

    if-eqz v20, :cond_7

    const/4 v12, 0x1

    .local v12, isInjected:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    const/16 v16, 0x0

    .local v16, keyguardActive:Z
    :goto_4
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v15, v0, :cond_6

    or-int/lit8 p2, p2, 0x1

    :cond_6
    and-int/lit8 v20, p2, 0x3

    if-eqz v20, :cond_a

    const/4 v14, 0x1

    .local v14, isWakeKey:Z
    :goto_5
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "interceptKeyTq keycode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " screenIsOn="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " keyguardActive="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " policyFlags="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " isWakeKey="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "quick_boot_power_oning"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .local v13, isQuickBooting:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_b

    const-string v20, "WindowManager"

    const-string v21, "is quick booting..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_0

    .end local v12           #isInjected:Z
    .end local v13           #isQuickBooting:I
    .end local v14           #isWakeKey:Z
    .end local v16           #keyguardActive:Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_3

    .restart local v12       #isInjected:Z
    :cond_8
    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v16

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v16

    goto/16 :goto_4

    .restart local v16       #keyguardActive:Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_5

    .restart local v13       #isQuickBooting:I
    .restart local v14       #isWakeKey:Z
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInQuickBootPowerOff()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_c

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v15, v0, :cond_c

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    const-string v20, "WindowManager"

    const-string v21, "QuickBoot UP Power Key Down"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v15, v0, :cond_d

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    const-string v20, "WindowManager"

    const-string v21, "QuickBoot UP Power Key Up"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_e
    if-eqz v7, :cond_f

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-nez v20, :cond_f

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_f
    const/16 v20, 0xdf

    move/from16 v0, v20

    if-ne v15, v0, :cond_12

    const-string v20, "persist.sys.zte.hallsensor"

    const-string v21, "0"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHallState:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.HALL_SENSOR_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, intent:Landroid/content/Intent;
    const/high16 v20, 0x2000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v20, "hall_sensor_close"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v20, 0x1

    sput v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHallState:I

    .end local v11           #intent:Landroid/content/Intent;
    :cond_10
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .local v19, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_11

    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v18, 0x1

    .local v18, result:I
    const-string v20, "WindowManager"

    const-string v21, "hall sensor detect is ring, so do nothing!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v18           #result:I
    :catch_0
    move-exception v9

    .local v9, ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_11
    if-nez p3, :cond_14

    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing detect hall sensor down!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x4

    .restart local v18       #result:I
    goto/16 :goto_0

    .end local v18           #result:I
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    const/16 v20, 0xe0

    move/from16 v0, v20

    if-ne v15, v0, :cond_14

    const-string v20, "persist.sys.zte.hallsensor"

    const-string v21, "1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHallState:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.HALL_SENSOR_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v11       #intent:Landroid/content/Intent;
    const/high16 v20, 0x2000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v20, "hall_sensor_close"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v20, 0x2

    sput v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHallState:I

    .end local v11           #intent:Landroid/content/Intent;
    :cond_13
    if-eqz p3, :cond_14

    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing detect hall sensor up!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    .restart local v18       #result:I
    goto/16 :goto_0

    .end local v18           #result:I
    :cond_14
    if-eqz p3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    :cond_15
    if-eqz v12, :cond_19

    if-nez v14, :cond_19

    :cond_16
    const/16 v18, 0x1

    .restart local v18       #result:I
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v20

    if-nez v20, :cond_0

    sparse-switch v15, :sswitch_data_0

    :cond_18
    :goto_7
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "touch gesture keycode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_0

    const/16 v20, 0xe1

    move/from16 v0, v20

    if-lt v15, v0, :cond_0

    const/16 v20, 0x10e

    move/from16 v0, v20

    if-ge v15, v0, :cond_0

    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.BLACK_SCREEN_GESTURE"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v11       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenoffGestureName(I)Ljava/lang/String;

    move-result-object v5

    .local v5, bGestrueName:Ljava/lang/String;
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "touch gesture bGestrueName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "type"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v5           #bGestrueName:Ljava/lang/String;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v18           #result:I
    :cond_19
    const/16 v18, 0x0

    .restart local v18       #result:I
    if-eqz v7, :cond_17

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v20

    if-eqz v20, :cond_17

    or-int/lit8 v18, v18, 0x2

    goto/16 :goto_6

    :sswitch_0
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v15, v0, :cond_1d

    if-eqz v7, :cond_1c

    if-eqz p3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_1a

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    :cond_1a
    :goto_8
    if-eqz v7, :cond_18

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_1b

    :try_start_1
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_1f

    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    and-int/lit8 v18, v18, -0x2

    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.KEY_VOLUME"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v11       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .end local v11           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v9

    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v20

    if-eqz v20, :cond_18

    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_18

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_7

    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_8

    :cond_1d
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v15, v0, :cond_1a

    if-eqz v7, :cond_1e

    if-eqz p3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_1a

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotLog()V

    goto/16 :goto_8

    :cond_1e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_8

    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1f
    :try_start_2
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_1b

    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_1b

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_1
    and-int/lit8 v18, v18, -0x2

    if-eqz v7, :cond_23

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v10, 0x0

    .local v10, hungUp:Z
    if-eqz v19, :cond_20

    :try_start_3
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    :cond_20
    :goto_9
    if-eqz p3, :cond_21

    if-eqz v10, :cond_22

    :cond_21
    const/16 v20, 0x1

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_7

    :catch_2
    move-exception v9

    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_22
    const/16 v20, 0x0

    goto :goto_a

    .end local v10           #hungUp:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_23
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v20

    if-nez v20, :cond_18

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_18

    and-int/lit8 v20, v18, -0x3

    or-int/lit8 v18, v20, 0x4

    goto/16 :goto_7

    :sswitch_2
    and-int/lit8 v18, v18, -0x2

    if-nez v7, :cond_18

    and-int/lit8 v20, v18, -0x3

    or-int/lit8 v18, v20, 0x4

    goto/16 :goto_7

    :sswitch_3
    and-int/lit8 v18, v18, -0x2

    if-eqz v7, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, p3

    move-wide/from16 v2, v21

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)V

    if-eqz p3, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_25

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotLog()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_25

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/os/IHardwareService;->setButtonLightEnabled(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_25
    :goto_b
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v10, 0x0

    .restart local v10       #hungUp:Z
    if-eqz v19, :cond_26

    :try_start_5
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_28

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_26
    :goto_c
    if-eqz p3, :cond_27

    if-nez v10, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    :cond_27
    const/16 v20, 0x1

    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_7

    .end local v10           #hungUp:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_3
    move-exception v8

    .local v8, e:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "remote call for turn off button light failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v10       #hungUp:Z
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_28
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_26

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_26

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v10

    goto :goto_c

    :catch_4
    move-exception v9

    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_29
    const/16 v20, 0x0

    goto :goto_d

    .end local v10           #hungUp:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    if-nez v6, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2d

    :cond_2b
    const/16 v20, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v20

    if-eqz v20, :cond_2c

    and-int/lit8 v20, v18, -0x3

    or-int/lit8 v18, v20, 0x4

    :cond_2c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_7

    :cond_2d
    const/16 v20, 0x0

    goto :goto_e

    :sswitch_4
    if-eqz v7, :cond_2e

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_2e

    :try_start_7
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v20

    if-eqz v20, :cond_18

    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2e
    :goto_f
    :sswitch_5
    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    new-instance v22, Landroid/view/KeyEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v20 .. v22}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .local v17, msg:Landroid/os/Message;
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .end local v17           #msg:Landroid/os/Message;
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_5
    move-exception v9

    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_6
    if-eqz v7, :cond_18

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_18

    :try_start_8
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_18

    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    and-int/lit8 v18, v18, -0x2

    goto/16 :goto_7

    :catch_6
    move-exception v9

    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_3
        0x4f -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_0
        0xde -> :sswitch_5
        0xdf -> :sswitch_2
        0xe0 -> :sswitch_2
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 3
    .parameter "policyFlags"

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .local v0, isWakeMotion:Z
    :goto_0
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x2

    :cond_0
    return v1

    .end local v0           #isWakeMotion:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCameraActive()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, activity:Landroid/app/ActivityManager;
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v2, task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.camera.CameraLauncher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.camera.Camera"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v0, v3

    .local v0, CameraTask:Z
    :goto_0
    if-ne v0, v3, :cond_2

    :goto_1
    return v3

    .end local v0           #CameraTask:Z
    :cond_1
    move v0, v4

    goto :goto_0

    .restart local v0       #CameraTask:Z
    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isInEmode()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, ""

    .local v0, homekeyteststatus:Ljava/lang/String;
    const-string v1, "sys.ishomekeytest"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LVBIN homekeyteststatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected isHomeKeyEnable()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v6, taskTop:Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDisablePackages:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .local v5, pkg:Ljava/lang/String;
    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #taskTop:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_1
    return v7

    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #pkg:Ljava/lang/String;
    .restart local v6       #taskTop:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #taskTop:Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v7, "WindowManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    move v7, v8

    goto :goto_1
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isLocalOrRemoteMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .parameter "windowType"

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_0

    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .end local v0           #curTime:J
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

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

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4798
    :goto_0
    return-void

    .line 4789
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 4796
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 22
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v17

    .local v17, isDefaultDisplay:Z
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_4

    const/16 v18, 0x1

    .local v18, needsToOffsetInputMethodTarget:Z
    :goto_1
    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1722
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v4, fl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v19, v0

    .local v19, sim:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v20

    .local v20, sysUiFl:I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .local v8, pf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .local v9, df:Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .local v10, of:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .local v11, cf:Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .local v12, vf:Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .local v13, dcf:Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v14, 0x1

    .local v14, hasNavBar:Z
    :goto_2
    move/from16 v0, v19

    and-int/lit16 v5, v0, 0xf0

    .local v5, adjust:I
    if-nez v17, :cond_7

    if-eqz p3, :cond_6

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_3
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_3

    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 1729
    :cond_3
    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v13}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_0

    .end local v4           #fl:I
    .end local v5           #adjust:I
    .end local v8           #pf:Landroid/graphics/Rect;
    .end local v9           #df:Landroid/graphics/Rect;
    .end local v10           #of:Landroid/graphics/Rect;
    .end local v11           #cf:Landroid/graphics/Rect;
    .end local v12           #vf:Landroid/graphics/Rect;
    .end local v13           #dcf:Landroid/graphics/Rect;
    .end local v14           #hasNavBar:Z
    .end local v18           #needsToOffsetInputMethodTarget:Z
    .end local v19           #sim:I
    .end local v20           #sysUiFl:I
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .restart local v4       #fl:I
    .restart local v8       #pf:Landroid/graphics/Rect;
    .restart local v9       #df:Landroid/graphics/Rect;
    .restart local v10       #of:Landroid/graphics/Rect;
    .restart local v11       #cf:Landroid/graphics/Rect;
    .restart local v12       #vf:Landroid/graphics/Rect;
    .restart local v13       #dcf:Landroid/graphics/Rect;
    .restart local v18       #needsToOffsetInputMethodTarget:Z
    .restart local v19       #sim:I
    .restart local v20       #sysUiFl:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .restart local v5       #adjust:I
    .restart local v14       #hasNavBar:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x50

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b

    const/4 v15, 0x1

    .local v15, inheritTranslucentDecor:Z
    :goto_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_c

    const/16 v16, 0x1

    .local v16, isAppWindow:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v21, 0x1

    .local v21, topAtRest:Z
    :goto_6
    if-eqz v16, :cond_a

    if-nez v15, :cond_a

    if-nez v21, :cond_a

    and-int/lit8 v2, v20, 0x4

    if-nez v2, :cond_9

    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_9

    const/high16 v2, 0x400

    and-int/2addr v2, v4

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    :cond_9
    const/high16 v2, 0x800

    and-int/2addr v2, v4

    if-nez v2, :cond_a

    and-int/lit8 v2, v20, 0x2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    :cond_a
    const v2, 0x10100

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_1a

    if-eqz p3, :cond_e

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .end local v15           #inheritTranslucentDecor:Z
    .end local v16           #isAppWindow:Z
    .end local v21           #topAtRest:Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .restart local v15       #inheritTranslucentDecor:Z
    :cond_c
    const/16 v16, 0x0

    goto :goto_5

    .restart local v16       #isAppWindow:Z
    :cond_d
    const/16 v21, 0x0

    goto :goto_6

    .restart local v21       #topAtRest:Z
    :cond_e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_13

    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_7
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_8
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_9
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    :goto_a
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_18

    const/16 v2, 0x10

    if-eq v5, v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    const/16 v2, 0x30

    if-eq v5, v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_9

    :cond_13
    const/high16 v2, 0x200

    and-int/2addr v2, v4

    if-eqz v2, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_16

    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_16

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_16

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    :cond_19
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_1a
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_1b

    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_2c

    :cond_1b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_20

    :cond_1c
    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_c
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_d
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    if-eqz v14, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_e
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    const/16 v2, 0x30

    if-eq v5, v2, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_d

    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_e

    :cond_20
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_21

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_f

    :cond_22
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_24

    :cond_23
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_24
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-eq v2, v3, :cond_25

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e9

    if-ne v2, v3, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_26
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_27
    const/high16 v2, 0x200

    and-int/2addr v2, v4

    if-eqz v2, :cond_28

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_28

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_lewa_0

    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_lewa_0

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_29

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_lewa_0

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_lewa_0

    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_lewa_0
    const/high16 v2, 0x1000

    and-int v2, v2, v20

    if-eqz v2, :cond_2a

    const-string v2, "WindowManager"

    const-string v3, "SYSTEM_UI_FLAG_TRANSPARENT_STATUS_BAR flag"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_2b
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_2c
    if-eqz p3, :cond_2d

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_2e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_2f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x10

    if-eq v5, v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    :goto_10
    const/16 v2, 0x30

    if-eq v5, v2, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    :cond_32
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_0

    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    move v0, v1

    .local v0, newLidState:I
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .end local v0           #newLidState:I
    :cond_2
    move v0, v2

    goto :goto_1

    .restart local v0       #newLidState:I
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_3

    move v0, v5

    .local v0, hapticsDisabled:Z
    :goto_1
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    const/4 v3, 0x0

    .local v3, pattern:[J
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1810
    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .local v2, owningUid:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .local v1, owningPackage:Ljava/lang/String;
    :goto_3
    array-length v6, v3

    if-ne v6, v5, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;J)V

    :goto_4
    move v4, v5

    goto :goto_0

    .end local v0           #hapticsDisabled:Z
    .end local v1           #owningPackage:Ljava/lang/String;
    .end local v2           #owningUid:I
    .end local v3           #pattern:[J
    :cond_3
    move v0, v4

    goto :goto_1

    .restart local v0       #hapticsDisabled:Z
    .restart local v3       #pattern:[J
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    goto :goto_2

    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    goto :goto_2

    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .restart local v2       #owningUid:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #owningPackage:Ljava/lang/String;
    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v1, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x7

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_5
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_4
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_6
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 9
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/4 v8, 0x4

    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .local v1, sensorRotation:I
    if-gez v1, :cond_1

    move v1, p2

    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v4, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .local v0, preferredRotation:I
    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-ltz v0, :cond_1f

    monitor-exit v3

    goto :goto_0

    .end local v0           #preferredRotation:I
    .end local v1           #sensorRotation:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #sensorRotation:I
    :cond_2
    :try_start_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v4, v6, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v4, :cond_5

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_4

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_2
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v4, v2, :cond_6

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v4, v8, :cond_9

    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v4, :cond_7

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v4, :cond_9

    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_8

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_3
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_3

    :cond_9
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v4, :cond_b

    :cond_a
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v4, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_b
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayUIBCRotation:I

    if-le v4, v7, :cond_c

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayUIBCRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_c
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v4, :cond_d

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v4, :cond_d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_d
    const/16 v4, 0xe

    if-ne p1, v4, :cond_e

    move v0, p2

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_e
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v4, :cond_f

    if-eq p1, v6, :cond_10

    if-eq p1, v7, :cond_10

    const/16 v4, 0xb

    if-eq p1, v4, :cond_10

    const/16 v4, 0xc

    if-eq p1, v4, :cond_10

    const/16 v4, 0xd

    if-eq p1, v4, :cond_10

    :cond_f
    if-eq p1, v8, :cond_10

    const/16 v4, 0xa

    if-eq p1, v4, :cond_10

    const/4 v4, 0x6

    if-eq p1, v4, :cond_10

    const/4 v4, 0x7

    if-ne p1, v4, :cond_15

    :cond_10
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v4, :cond_12

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_11

    move v0, v2

    :cond_11
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    :cond_12
    if-ne v1, v6, :cond_13

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v4, v2, :cond_13

    const/16 v2, 0xa

    if-eq p1, v2, :cond_13

    const/16 v2, 0xd

    if-ne p1, v2, :cond_14

    :cond_13
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .end local v0           #preferredRotation:I
    :cond_14
    move v0, p2

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .end local v0           #preferredRotation:I
    :cond_15
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v4, v2, :cond_16

    const/4 v2, 0x5

    if-eq p1, v2, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .end local v0           #preferredRotation:I
    :cond_16
    const/4 v0, -0x1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_17

    monitor-exit v3

    goto/16 :goto_0

    :cond_17
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v3

    goto/16 :goto_0

    .restart local v0       #preferredRotation:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_18

    monitor-exit v3

    goto/16 :goto_0

    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v3

    goto/16 :goto_0

    .restart local v0       #preferredRotation:I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_19

    monitor-exit v3

    goto/16 :goto_0

    :cond_19
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v3

    goto/16 :goto_0

    .restart local v0       #preferredRotation:I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    monitor-exit v3

    goto/16 :goto_0

    :cond_1a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v3

    goto/16 :goto_0

    .restart local v0       #preferredRotation:I
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    monitor-exit v3

    goto/16 :goto_0

    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    monitor-exit v3

    move v0, p2

    goto/16 :goto_0

    :cond_1c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v3

    goto/16 :goto_0

    .restart local v0       #preferredRotation:I
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    monitor-exit v3

    goto/16 :goto_0

    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    monitor-exit v3

    move v0, p2

    goto/16 :goto_0

    :cond_1e
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v3

    goto/16 :goto_0

    .restart local v0       #preferredRotation:I
    :cond_1f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .end local v0           #preferredRotation:I
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .parameter "orientation"
    .parameter "rotation"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 1470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    const/4 v1, 0x1

    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 5
    .parameter "win"
    .parameter "transit"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_3

    if-eq p2, v1, :cond_0

    if-ne p2, v4, :cond_1

    :cond_0
    const v0, 0x10a001b

    :goto_0
    return v0

    :cond_1
    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_b

    :cond_2
    const v0, 0x10a001a

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_7

    if-eq p2, v1, :cond_4

    if-ne p2, v4, :cond_5

    :cond_4
    const v0, 0x10a0015

    goto :goto_0

    :cond_5
    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_b

    :cond_6
    const v0, 0x10a0014

    goto :goto_0

    :cond_7
    if-eq p2, v1, :cond_8

    if-ne p2, v4, :cond_9

    :cond_8
    const v0, 0x10a0019

    goto :goto_0

    .line 3661
    :cond_9
    if-eq p2, v2, :cond_a

    if-ne p2, v3, :cond_b

    :cond_a
    const v0, 0x10a0018

    goto :goto_0

    :cond_b
    const/4 v0, 0x5

    if-ne p2, v0, :cond_c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x10a0011

    goto :goto_0

    :cond_c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v0, :cond_d

    if-ne p2, v2, :cond_d

    const/4 v0, -0x1

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .parameter "anim"

    .prologue
    const v3, 0x10a0037

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    aput v1, p1, v2

    aput v1, p1, v1

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x10a0039

    aput v0, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :pswitch_1
    const v0, 0x10a0038

    aput v0, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :cond_0
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "of"
    .parameter "cf"
    .parameter "vf"

    .prologue
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .end local p9
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .end local p7
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .restart local p7
    .restart local p9
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_4

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    if-eqz p5, :cond_8

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_2
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9
    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .restart local p9
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    :cond_5
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_8
    move-object v0, p9

    goto :goto_2
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 2
    .parameter "newUserId"

    .prologue
    const/4 v1, 0x0

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .parameter "display"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .parameter "plugged"

    .prologue
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 17
    .parameter "display"
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    const-string v8, "persist.panel.orientation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    div-int/lit8 v8, v8, 0x5a

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, res:Landroid/content/res/Resources;
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    move/from16 v6, p3

    .local v6, shortSize:I
    move/from16 v2, p2

    .local v2, longSize:I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v8, 0x1110020

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    :goto_1
    const v8, 0x105000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v12, 0x105000d

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v12, 0x105000e

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v16, 0x105000f

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    aput v16, v14, v15

    aput v16, v12, v13

    aput v16, v10, v11

    aput v16, v8, v9

    mul-int/lit16 v8, v6, 0xa0

    div-int v7, v8, p4

    .local v7, shortSizeDp:I
    mul-int/lit16 v8, v2, 0xa0

    div-int v3, v8, p4

    .local v3, longSizeDp:I
    const/16 v8, 0x258

    if-ge v7, v8, :cond_6

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    const v8, 0x1110046

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, navBarOverride:Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    :cond_2
    :goto_3
    const-string v8, "portrait"

    const-string v9, "persist.demo.hdmirotation"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    :goto_4
    const-string v8, "persist.demo.hdmirotationlock"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    const/16 v8, 0x3c0

    if-lt v3, v8, :cond_9

    const/16 v8, 0x2d0

    if-lt v7, v8, :cond_9

    const v8, 0x111005c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "true"

    const-string v9, "config.override_forced_orient"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    goto/16 :goto_0

    .end local v3           #longSizeDp:I
    .end local v4           #navBarOverride:Ljava/lang/String;
    .end local v7           #shortSizeDp:I
    :cond_3
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_1

    .end local v2           #longSize:I
    .end local v6           #shortSize:I
    :cond_4
    move/from16 v6, p2

    .restart local v6       #shortSize:I
    move/from16 v2, p3

    .restart local v2       #longSize:I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v8, 0x1110020

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    .restart local v3       #longSizeDp:I
    .restart local v7       #shortSizeDp:I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .restart local v4       #navBarOverride:Ljava/lang/String;
    :cond_7
    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "ime"
    .parameter "target"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method setLongPressOnHomeBehavior(I)V
    .locals 0
    .parameter "mLongPressOnHomeBehavior"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    return-void
.end method

.method setPowerKeyTime(J)V
    .locals 0
    .parameter "mPowerKeyTime"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput-wide p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    return-void
.end method

.method setPowerKeyTriggered(Z)V
    .locals 0
    .parameter "mPowerKeyTriggered"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .parameter "safeMode"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void

    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method setScreenshotChordEnabled(Z)V
    .locals 0
    .parameter "mScreenshotChordEnabled"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    return-void
.end method

.method public setTouchExplorationEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v1, "accelerometer_rotation"

    .line 2887
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method setVolumeDownKeyConsumedByScreenshotChord(Z)V
    .locals 0
    .parameter "mVolumeDownKeyConsumedByScreenshotChord"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    return-void
.end method

.method setVolumeDownKeyTime(J)V
    .locals 0
    .parameter "mVolumeDownKeyTime"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput-wide p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    return-void
.end method

.method setVolumeDownKeyTriggered(Z)V
    .locals 0
    .parameter "mVolumeDownKeyTriggered"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    return-void
.end method

.method setVolumeUpKeyTriggered(Z)V
    .locals 0
    .parameter "mVolumeUpKeyTriggered"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/LewaGlobalActions;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/LewaGlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/LewaGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/LewaGlobalActions;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/LewaGlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/LewaGlobalActions;->showDialog(ZZ)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 2
    .parameter "behavior"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startDockOrHome()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHomeKeyEnable()Z

    move-result v1

    if-nez v1, :cond_lewa1

    goto :goto_0

    :cond_lewa1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .parameter "alwaysSendConfiguration"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 13

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .local v4, updateRotation:Z
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    const-string v10, "end_button_behavior"

    const/4 v11, 0x2

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    const-string v10, "incall_power_button_behavior"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    const-string v10, "user_rotation"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .local v5, userRotation:I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    if-eq v10, v5, :cond_0

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    const/4 v4, 0x1

    :cond_0
    const-string v10, "accelerometer_rotation"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_8

    move v6, v0

    .local v6, userRotationMode:I
    :goto_0
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v10, v6, :cond_1

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateCameraPower()V

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_3

    const-string v10, "pointer_location"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .local v2, pointerLocation:I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v10, v2, :cond_3

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v2           #pointerLocation:I
    :cond_3
    const-string v8, "screen_off_timeout"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v3, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    const-string v8, "default_input_method"

    const/4 v10, -0x2

    invoke-static {v3, v8, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, imId:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    move v0, v7

    .local v0, hasSoftInput:Z
    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v8, v0, :cond_5

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    const/4 v4, 0x1

    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->loadSetting()V

    .line 3078
    :cond_6
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 3086
    :cond_7
    return-void

    .end local v0           #hasSoftInput:Z
    .end local v1           #imId:Ljava/lang/String;
    .end local v6           #userRotationMode:I
    :cond_8
    move v6, v7

    goto :goto_0

    .end local v5           #userRotation:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public userActivity()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .parameter "exitAnimId"
    .parameter "enterAnimId"
    .parameter "forceDefault"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    if-eqz p3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    .local v0, anim:[I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->selectRotationAnimationLw([I)V

    aget v3, v0, v2

    if-ne p1, v3, :cond_2

    aget v3, v0, v1

    if-eq p2, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10a0038
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    if-lt p1, v1, :cond_0

    const/16 v2, 0x63

    if-gt p1, v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_e
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x15

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x17

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x18

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x19

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x1a

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x1b

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x1d

    goto :goto_0

    .line 1423
    .line 5058
    nop

    .line 1985
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_c
        :pswitch_5
        :pswitch_12
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_15
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_10
        :pswitch_19
        :pswitch_18
        :pswitch_e
        :pswitch_1b
        :pswitch_13
        :pswitch_11
        :pswitch_1a
        :pswitch_1c
        :pswitch_7
        :pswitch_14
        :pswitch_1
        :pswitch_17
        :pswitch_16
        :pswitch_4
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method
