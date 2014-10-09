.class public Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;
.super Ljava/lang/Object;
.source "SmartRollFloatWindowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;,
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;,
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;,
        Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final FLOAT_WINDOW_WIDTH_LEFT:I = 0x14

.field private static final FLOAT_WINDOW_WIDTH_RIGHT:I = 0x12

.field private static final GESTURE_DOWN_LEFT_X:I = 0x14

.field private static final GESTURE_DOWN_RIGHT_X:I = 0x12

.field private static final GESTURE_MAX_TIME_MS:I = 0x15e

.field private static final GESTURE_MAX_WIDTH:I = 0xfa

.field private static final GESTURE_MIN_WIDTH:I = 0x14

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final SHOW_FLOAT_WINDOW:Z = false

.field private static final SUPPORT_SHOW_WINDOW:Z = true

.field private static final TAG:Ljava/lang/String; = "SmartRollFloatWindowService"


# instance fields
.field mConfigurationReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mIsDownInWindow:Z

.field private mIsEnabled:Z

.field private mIsPaused:Z

.field private mIsSystemReady:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftFloatLayout:Landroid/view/View;

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

.field mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

.field private mRightFloatLayout:Landroid/view/View;

.field private mTouchDownTime:J

.field private mWindowHeight:I

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    .line 70
    iput-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    .line 72
    iput-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsSystemReady:Z

    .line 121
    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;

    invoke-direct {v2, p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    const-string v2, "SmartRollFloatWindowService"

    const-string v3, "FloatWindowService onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 283
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    .line 285
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 287
    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$1;)V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    .line 290
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 292
    .local v1, outSize:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 293
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    .line 294
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    .line 296
    const-string v2, "SmartRollFloatWindowService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWindowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWindowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 305
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 307
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x14

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 308
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 309
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->disablePointerLocation()V

    return-void
.end method

.method private changeRtl(II)V
    .locals 3
    .parameter "fromAxis"
    .parameter "toAxis"

    .prologue
    .line 410
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 414
    .local v1, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->changeTopAppSmartRoll(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private disablePointerLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    .line 387
    const-string v0, "SmartRollFloatWindowService"

    const-string v1, "disablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    invoke-virtual {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;->dispose()V

    .line 392
    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 397
    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 3

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsEnabled:Z

    .line 349
    const-string v0, "SmartRollFloatWindowService"

    const-string v1, "enablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x13

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 353
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SmartRollFloatWindowService_LEFT"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x14

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 357
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x15

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 362
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SmartRollFloatWindowService_RIGHT"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x12

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 366
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mFloatLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "PointerLocationView"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 372
    new-instance v0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPointerLocationInputEventReceiver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PointerLocationInputEventReceiver;

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;->sendEmptyMessage(I)Z

    .line 379
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;->sendEmptyMessage(I)Z

    .line 341
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 264
    .local v0, outSize:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 265
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    .line 266
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    .line 268
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 269
    return-void
.end method

.method public onSystemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x304000c

    .line 316
    const-string v1, "SmartRollFloatWindowService"

    const-string/jumbo v2, "onSystemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsSystemReady:Z

    .line 321
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    .line 322
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    .line 324
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mLeftFloatLayout:Landroid/view/View;

    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;

    invoke-direct {v2, p0, p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mRightFloatLayout:Landroid/view/View;

    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;

    invoke-direct {v2, p0, p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$FloatLayoutTouchListerner;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    new-instance v0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mPolicyHandler:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$PolicyHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;-><init>(Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;Landroid/os/Handler;)V

    .line 336
    .local v0, settingsObserver:Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;
    invoke-virtual {v0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService$SettingsObserver;->observe()V

    .line 337
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "paramMotionEvent"

    .prologue
    const/4 v8, 0x3

    const/high16 v5, 0x41a0

    const/4 v7, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 180
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 181
    .local v1, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 183
    .local v2, rawY:F
    packed-switch v0, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 189
    :pswitch_1
    iput v1, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    .line 190
    iput v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownY:F

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mTouchDownTime:J

    .line 194
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    cmpg-float v3, v3, v5

    if-lez v3, :cond_1

    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    add-int/lit8 v4, v4, -0x12

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 196
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    .line 202
    :goto_1
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    if-le v3, v4, :cond_2

    .line 203
    iput-boolean v7, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    .line 206
    :cond_2
    const-string v3, "SmartRollFloatWindowService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsDownInWindow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_3
    iput-boolean v7, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    goto :goto_1

    .line 214
    :pswitch_2
    iget-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsDownInWindow:Z

    if-eqz v3, :cond_0

    .line 216
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    .line 218
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "move too short"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_4
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x437a

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 221
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "move too long"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_5
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 224
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "not x direction"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mTouchDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x15e

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 227
    const-string v3, "SmartRollFloatWindowService"

    const-string/jumbo v4, "time too long"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :cond_7
    const-string v3, "SmartRollFloatWindowService"

    const-string v4, "SmartRoll gesture recogonized!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mDownX:F

    iget v4, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    .line 233
    const/4 v3, 0x2

    invoke-direct {p0, v3, v8}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->changeRtl(II)V

    goto/16 :goto_0

    .line 236
    :cond_8
    const/4 v3, -0x2

    invoke-direct {p0, v3, v8}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->changeRtl(II)V

    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pauseSmartRoll()V
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 447
    const-string v0, "SmartRollFloatWindowService"

    const-string/jumbo v1, "pauseSmartRoll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    .line 450
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 453
    :cond_0
    return-void
.end method

.method public resumeSmartRoll()V
    .locals 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "SmartRollFloatWindowService"

    const-string/jumbo v1, "pauseSmartRoll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    .line 463
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->updateSettings()V

    .line 465
    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 423
    iget-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsSystemReady:Z

    if-nez v3, :cond_0

    .line 439
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 429
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v3, "smart_roll"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 434
    .local v0, newSetting:Z
    :goto_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowHeight:I

    iget v3, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mWindowWidth:I

    if-le v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->mIsPaused:Z

    if-nez v2, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->enable()V

    goto :goto_0

    .end local v0           #newSetting:Z
    :cond_1
    move v0, v2

    .line 429
    goto :goto_1

    .line 437
    .restart local v0       #newSetting:Z
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollFloatWindowService;->disable()V

    goto :goto_0
.end method
