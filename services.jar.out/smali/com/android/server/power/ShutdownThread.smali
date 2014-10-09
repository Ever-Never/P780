.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative; = null

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_MEMORY_DUMP_TIME:I = 0xea60

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field public static final SHUTDOWN_IPO_ENABLE:Ljava/lang/String; = "persist.sys.ipo_enabled"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static bConfirmForAnimation:Z = false

.field private static bPlayaudio:Z = false

.field private static beginAnimationTime:J = 0x0L

.field private static command:Ljava/lang/String; = null

.field private static endAnimationTime:J = 0x0L

.field private static mDelayDim:Ljava/lang/Runnable; = null

.field private static mEnableAnimating:Z = false

.field private static final mEnableAnimatingSync:Ljava/lang/Object; = null

.field private static mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt; = null

.field private static mReboot:Z = false

.field private static mRebootReason:Ljava/lang/String; = null

.field private static mRebootSafeMode:Z = false

.field private static mShutdownFlow:I = 0x0

.field private static mShutdownThreadSync:Ljava/lang/Object; = null

.field private static final mSpew:Z = true

.field private static mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static sHabitDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsIpoEnable:Z

.field private static sIsIpoEnableSync:Ljava/lang/Object;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

.field protected static sPreShutdownConnection:Landroid/content/ServiceConnection;

.field private static screen_turn_off_time:I


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private stMgr:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 113
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 136
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 146
    sput-object v1, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 149
    sput-object v1, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 156
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsIpoEnable:Z

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    .line 163
    sput-object v1, Lcom/android/server/power/ShutdownThread;->sHabitDialog:Landroid/app/AlertDialog;

    .line 173
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 174
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 175
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 176
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 179
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 185
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/power/ShutdownThread;->screen_turn_off_time:I

    .line 187
    sput-object v1, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 188
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    .line 192
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 603
    new-instance v0, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    .line 1427
    sput-object v1, Lcom/android/server/power/ShutdownThread;->sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

    .line 1442
    new-instance v0, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$9;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sPreShutdownConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 151
    new-instance v0, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    .line 195
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 202
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsIpoEnable:Z

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput p0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/server/power/IPreShutdown;)Lcom/android/server/power/IPreShutdown;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/ShutdownThread;->sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$400()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$600()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sHabitDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/ShutdownThread;->sHabitDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800()Lcom/android/server/power/ShutdownThread;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 647
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 648
    :try_start_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 649
    const-string v6, "ShutdownThread"

    const-string v8, "ShutdownThread is already running, returning."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    monitor-exit v7

    .line 787
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 653
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 656
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v6, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 657
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 658
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v7, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v7}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 661
    sput-boolean v10, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 662
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v6, :cond_1

    .line 663
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 664
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 670
    :cond_1
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 671
    const/4 v4, 0x0

    .line 674
    .local v4, mShutOffAnimation:Z
    :try_start_1
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v6, :cond_2

    .line 675
    const-class v6, Lcom/mediatek/common/bootanim/IBootAnimExt;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    :cond_2
    :goto_1
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v6}, Lcom/mediatek/common/bootanim/IBootAnimExt;->getScreenTurnOffTime()I

    move-result v5

    .line 682
    .local v5, screenTurnOffTime:I
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v6}, Lcom/mediatek/common/bootanim/IBootAnimExt;->isCustBootAnim()Z

    move-result v4

    .line 684
    const/4 v1, 0x0

    .line 686
    .local v1, bIsOperator:Z
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIBootAnim get screenTurnOffTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v6, "ro.operator.optr"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, cust:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 691
    const-string v6, "CUST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 692
    const/4 v4, 0x1

    .line 694
    const/4 v1, 0x0

    .line 711
    :goto_2
    sget-object v7, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v7

    .line 713
    :try_start_2
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    if-nez v6, :cond_7

    .line 740
    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 743
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 745
    :try_start_3
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v9, "ShutdownThread-cpu"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 747
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 748
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 753
    :goto_4
    const-string v6, "ShutdownThread"

    const-string v7, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 757
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 759
    :try_start_4
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v8, 0x1a

    const-string v9, "ShutdownThread-screen"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 761
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 762
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 770
    :cond_3
    :goto_5
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    sget-object v7, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v6, v7, :cond_4

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 771
    :cond_4
    sget v6, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v6, v10, :cond_a

    .line 772
    const-string v6, "ShutdownThread"

    const-string v7, "ShutdownThread exists already"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 774
    sget-object v7, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v7

    .line 775
    :try_start_5
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 776
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 653
    .end local v1           #bIsOperator:Z
    .end local v2           #cust:Ljava/lang/String;
    .end local v4           #mShutOffAnimation:Z
    .end local v5           #screenTurnOffTime:I
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v6

    .line 677
    .restart local v4       #mShutOffAnimation:Z
    :catch_0
    move-exception v3

    .line 678
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 699
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #bIsOperator:Z
    .restart local v2       #cust:Ljava/lang/String;
    .restart local v5       #screenTurnOffTime:I
    :cond_5
    const/4 v4, 0x1

    .line 700
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 706
    :cond_6
    const/4 v4, 0x1

    .line 707
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 716
    :cond_7
    if-eqz v4, :cond_9

    .line 717
    :try_start_7
    const-string v6, "ShutdownThread"

    const-string v8, "mIBootAnim.isCustBootAnim() is true"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 720
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_8

    .line 721
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 724
    :cond_8
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->bootanimCust()V

    goto/16 :goto_3

    .line 740
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v6

    .line 726
    :cond_9
    :try_start_8
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 727
    sget-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, #android:string@power_off#t

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    sget-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, #android:string@shutdown_progress#t

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 729
    sget-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 730
    sget-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 731
    sget-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d9

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 733
    sget-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    .line 734
    sget-object v6, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_3

    .line 749
    :catch_1
    move-exception v3

    .line 750
    .local v3, e:Ljava/lang/SecurityException;
    const-string v6, "ShutdownThread"

    const-string v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 763
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    .line 764
    .restart local v3       #e:Ljava/lang/SecurityException;
    const-string v6, "ShutdownThread"

    const-string v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_5

    .line 778
    .end local v3           #e:Ljava/lang/SecurityException;
    :cond_a
    const-string v6, "ShutdownThread"

    const-string v7, "Thread state is not normal! froce to shutdown!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 782
    const-string v6, "ctl.start"

    const-string v7, "shutdown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 785
    :cond_b
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_0
.end method

.method private static bootanimCust()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 792
    const-string v5, "service.shutanim.running"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v5, "ShutdownThread"

    const-string v6, "set service.shutanim.running to 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v1, 0x0

    .line 797
    .local v1, isRotaionEnabled:Z
    :try_start_0
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accelerometer_rotation"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 799
    :goto_0
    if-eqz v1, :cond_0

    .line 800
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 802
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_restore"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 811
    :try_start_1
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 813
    .local v2, wm:Landroid/view/IWindowManager;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 816
    .end local v2           #wm:Landroid/view/IWindowManager;
    :goto_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startBootAnimation()V

    .line 817
    return-void

    :cond_1
    move v1, v4

    .line 797
    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "ShutdownThread"

    const-string v4, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 814
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private static checkShutdownFlow()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 870
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkShutdownFlow: IPO_Support=true mReboot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eq v3, v2, :cond_0

    sget-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    if-ne v3, v2, :cond_1

    .line 872
    :cond_0
    sput v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 914
    :goto_0
    return-void

    .line 878
    :cond_1
    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ipo_setting"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 890
    .local v1, isIPOEnabled:Z
    :cond_2
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    monitor-enter v3

    .line 891
    :try_start_1
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsIpoEnable:Z

    if-ne v4, v2, :cond_4

    .line 896
    const-string v2, "1"

    const-string v4, "sys.ipo.battlow"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 897
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 907
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkShutdownFlow: isIPOEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mShutdownFlow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    .end local v1           #isIPOEnabled:Z
    :catch_0
    move-exception v0

    .line 881
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "ShutdownThread"

    const-string v3, "checkShutdownFlow: sInstance.mContext object is null when get IPO enable/disable Option"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    sput v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_0

    .line 899
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #isIPOEnabled:Z
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_1

    .line 907
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 901
    :cond_4
    const/4 v2, 0x0

    :try_start_3
    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static createPreShutdownApi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1430
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPreShutdownApi(), context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1432
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.IPreShutdown"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    if-eqz p0, :cond_0

    .line 1434
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindservice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sPreShutdownConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1440
    :goto_0
    return-void

    .line 1437
    :cond_0
    const-string v1, "ShutdownThread"

    const-string v2, "context is null, cannot bindservice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static delayForPlayAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 852
    sget-wide v1, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 863
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 855
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-wide v1, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 856
    sget-wide v1, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 858
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v1, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static delayForPlayAnimationMP4()V
    .locals 4

    .prologue
    .line 1460
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/poweroff.mp4"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1475
    .local v0, i:I
    :cond_0
    :goto_0
    return-void

    .line 1463
    .end local v0           #i:I
    :cond_1
    const-string v2, "ShutdownThread"

    const-string v3, "delayForPlayAnimation for mp4 begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 1465
    const-string v2, "sys.bootanim.done"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1466
    const-string v2, "ShutdownThread"

    const-string v3, "delayForPlayAnimation for mp4 done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1470
    :cond_2
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1471
    :catch_0
    move-exception v1

    .line 1472
    .local v1, unused:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string v3, "delayForPlayAnimation for mp4 animation exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static dismissDialog()V
    .locals 3

    .prologue
    .line 844
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog(): pd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    sget-object v0, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 846
    sget-object v0, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 847
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 849
    :cond_0
    return-void
.end method

.method public static isPowerOffDialogShowing()Z
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 624
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 625
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 626
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 627
    const-string v0, "ShutdownThread"

    const-string v1, "reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 629
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 6
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 1343
    if-eqz p0, :cond_5

    .line 1344
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    if-eqz p1, :cond_0

    const-string v2, "recovery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1346
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1349
    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimationMP4()V

    .line 1352
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :goto_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1379
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1380
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1381
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1383
    :cond_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    .line 1384
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown, close lcd light1..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 1388
    :cond_2
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1395
    :goto_1
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v2, :cond_3

    .line 1401
    const-class v2, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/hdmi/IHDMINative;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1405
    :cond_3
    :goto_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v2, v5}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPowerEnable(Z)Z

    .line 1407
    :try_start_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    if-nez v2, :cond_4

    .line 1408
    const-class v2, Lcom/mediatek/common/tvout/ITVOUTNative;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/tvout/ITVOUTNative;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1413
    :cond_4
    :goto_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v2, v5}, Lcom/mediatek/common/tvout/ITVOUTNative;->tvoutPowerEnable(Z)Z

    .line 1417
    const-string v2, "ctl.start"

    const-string v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1425
    :goto_4
    return-void

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1358
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 1360
    .local v1, vibrator:Landroid/os/Vibrator;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimationMP4()V

    .line 1363
    const-wide/16 v2, 0x1f4

    :try_start_5
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1371
    :goto_5
    const-wide/16 v2, 0x1f4

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1372
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 1364
    :catch_2
    move-exception v0

    .line 1366
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1402
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 1403
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1409
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 1410
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1422
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1423
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutdown rebootOrShutdown Thread.currentThread().sleep exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1389
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    goto/16 :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x1

    .line 639
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 640
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 641
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 642
    const-string v0, "ShutdownThread"

    const-string v1, "rebootSafeMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 644
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v8, 0x0

    .line 216
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 217
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 219
    const-string v5, "ShutdownThread"

    const-string v6, "!!! Request to shutdown !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 223
    .local v4, stack:[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 225
    .local v1, element:Ljava/lang/StackTraceElement;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \t|----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->createPreShutdownApi(Landroid/content/Context;)V

    .line 231
    const-string v5, "ro.monkey"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    const-string v5, "ShutdownThread"

    const-string v6, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_1
    return-void

    .line 236
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 22
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 287
    sget-object v19, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v19

    .line 288
    :try_start_0
    sget-boolean v18, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v18, :cond_1

    .line 289
    const-string v18, "ShutdownThread"

    const-string v20, "Request to shutdown already running, returning."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    monitor-exit v19

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    const-string v18, "ShutdownThread"

    const-string v19, "Notifying thread to start radio shutdown"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, #android:integer@config_longPressOnPowerBehavior#t

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 298
    .local v14, longPressBehavior:I
    sget-boolean v18, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v18, :cond_d

    const v17, #android:string@reboot_safemode_confirm#t

    .line 304
    .local v17, resourceId:I
    :goto_1
    const-string v18, "ShutdownThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-eqz p1, :cond_13

    .line 307
    new-instance v6, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 308
    .local v6, closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v18, :cond_2

    .line 309
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    const/16 v18, 0x0

    sput-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 317
    :cond_2
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sHabitDialog:Landroid/app/AlertDialog;

    if-eqz v18, :cond_3

    .line 318
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sHabitDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 322
    :cond_3
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-nez v18, :cond_c

    .line 323
    const-string v18, "ShutdownThread"

    const-string v19, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v19, Landroid/app/AlertDialog$Builder;

    const/16 v18, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    const v2, 0x5030031

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-boolean v18, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v18, :cond_10

    const v18, #android:string@reboot_safemode_title#t

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, #android:string@yes#t

    new-instance v20, Lcom/android/server/power/ShutdownThread$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, #android:string@no#t

    new-instance v20, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 445
    const/4 v10, 0x0

    .line 446
    .local v10, ipoCheckView:Landroid/view/View;
    move-object/from16 v4, p0

    .line 447
    .local v4, checkboxContext:Landroid/content/Context;
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v18, :cond_4

    .line 448
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 451
    :cond_4
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x304001e

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 453
    if-eqz v10, :cond_6

    .line 454
    const v18, 0x30c0018

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 456
    .local v9, ipoCheck:Landroid/widget/CheckBox;
    const v18, 0x30c0019

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 458
    .local v11, ipoCheckWarning:Landroid/widget/TextView;
    const-string v18, "persist.sys.ipo_enabled"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 460
    .local v12, isIpoEnable:Z
    const-string v18, "P780"

    const-string v19, "P780"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 462
    .local v13, isNeedWarningProject:Z
    if-eqz v11, :cond_5

    .line 463
    if-eqz v12, :cond_12

    if-eqz v13, :cond_12

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    :cond_5
    sget-object v19, Lcom/android/server/power/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    monitor-enter v19

    .line 467
    :try_start_1
    sput-boolean v12, Lcom/android/server/power/ShutdownThread;->sIsIpoEnable:Z

    .line 468
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 469
    if-eqz v9, :cond_6

    .line 470
    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    new-instance v18, Lcom/android/server/power/ShutdownThread$3;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v13}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/widget/TextView;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 489
    .end local v9           #ipoCheck:Landroid/widget/CheckBox;
    .end local v11           #ipoCheckWarning:Landroid/widget/TextView;
    .end local v12           #isIpoEnable:Z
    .end local v13           #isNeedWarningProject:Z
    :cond_6
    const-string v18, "ShutdownThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "shutdown: sIsIpoEnable="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->sIsIpoEnable:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz v10, :cond_b

    sget-boolean v18, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v18, :cond_b

    sget-boolean v18, Ldalvik/system/Zygote;->systemInSafeMode:Z

    if-nez v18, :cond_b

    .line 492
    const-string v16, ""

    .line 493
    .local v16, powerOnMessage:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "next_alarm_formatted"

    const/16 v20, -0x2

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, clockAlarm:Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_7

    .line 496
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x30b001e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 499
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "next_alarm_formatted_poweron"

    const/16 v20, -0x2

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, bootAlarm:Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_9

    .line 502
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_8

    .line 503
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 505
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x30b001f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 508
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 509
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 512
    :cond_a
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 520
    .end local v3           #bootAlarm:Ljava/lang/String;
    .end local v5           #clockAlarm:Ljava/lang/String;
    .end local v16           #powerOnMessage:Ljava/lang/String;
    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread$BaiduInjector;->createRebootDialogBaidu(Landroid/content/Context;)V
     
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 521
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d9

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    .line 527
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    .line 530
    .end local v4           #checkboxContext:Landroid/content/Context;
    .end local v10           #ipoCheckView:Landroid/view/View;
    :cond_c
   
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 531
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 533
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v18

    if-nez v18, :cond_0

    .line 534
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    .line 536
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 537
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    const v19, #android:id@custom#t

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 538
    .local v7, custom:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 539
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 540
    .local v15, parents:Landroid/view/ViewParent;
    if-eqz v15, :cond_0

    instance-of v0, v15, Landroid/widget/LinearLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v8, v15

    .line 541
    check-cast v8, Landroid/widget/LinearLayout;

    .line 542
    .local v8, ideauiParents:Landroid/widget/LinearLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 292
    .end local v6           #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v7           #custom:Landroid/view/View;
    .end local v8           #ideauiParents:Landroid/widget/LinearLayout;
    .end local v14           #longPressBehavior:I
    .end local v15           #parents:Landroid/view/ViewParent;
    .end local v17           #resourceId:I
    :catchall_0
    move-exception v18

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 298
    .restart local v14       #longPressBehavior:I
    :cond_d
    sget-boolean v18, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v18, :cond_e

    const v17, 0x30b0018

    goto/16 :goto_1

    :cond_e
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v14, v0, :cond_f

    const v17, #android:string@shutdown_confirm_question#t

    goto/16 :goto_1

    :cond_f
    const v17, #android:string@shutdown_confirm#t

    goto/16 :goto_1

    .line 325
    .restart local v6       #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v17       #resourceId:I
    :cond_10
    sget-boolean v18, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v18, :cond_11

    const v18, 0x30b0017

    goto/16 :goto_2

    :cond_11
    const v18, #android:string@power_off#t

    goto/16 :goto_2

    .line 463
    .restart local v4       #checkboxContext:Landroid/content/Context;
    .restart local v9       #ipoCheck:Landroid/widget/CheckBox;
    .restart local v10       #ipoCheckView:Landroid/view/View;
    .restart local v11       #ipoCheckWarning:Landroid/widget/TextView;
    .restart local v12       #isIpoEnable:Z
    .restart local v13       #isNeedWarningProject:Z
    :cond_12
    const/16 v18, 0x8

    goto/16 :goto_3

    .line 468
    :catchall_1
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    .line 549
    .end local v4           #checkboxContext:Landroid/content/Context;
    .end local v6           #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v9           #ipoCheck:Landroid/widget/CheckBox;
    .end local v10           #ipoCheckView:Landroid/view/View;
    .end local v11           #ipoCheckWarning:Landroid/widget/TextView;
    .end local v12           #isIpoEnable:Z
    .end local v13           #isNeedWarningProject:Z
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 13
    .parameter "timeout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1189
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1190
    .local v6, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v1, v8, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v9, "2"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v9, "3"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v2, v8

    .line 1195
    .local v2, bypassRadioOff:Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    int-to-long v11, p1

    add-long v4, v9, v11

    .line 1196
    .local v4, endTime:J
    new-array v3, v8, [Z

    .line 1197
    .local v3, done:[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;Z[ZJ)V

    .line 1316
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1318
    int-to-long v9, p1

    :try_start_0
    invoke-virtual {v0, v9, v10}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :goto_1
    aget-boolean v1, v3, v7

    if-nez v1, :cond_2

    .line 1322
    const-string v1, "ShutdownThread"

    const-string v9, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v1, v8, :cond_1

    .line 1324
    const-string v1, "ShutdownThread"

    const-string v8, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    sput v7, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1327
    :cond_1
    const-string v1, "debug.mdlogger.Running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1328
    const-string v1, "ShutdownThread"

    const-string v7, "radioOff = false and mdlogger is running now, so wait for memory dump"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-wide/32 v7, 0xea60

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1333
    :cond_2
    return-void

    .end local v0           #t:Ljava/lang/Thread;
    .end local v2           #bypassRadioOff:Z
    .end local v3           #done:[Z
    .end local v4           #endTime:J
    :cond_3
    move v2, v7

    .line 1190
    goto :goto_0

    .line 1319
    .restart local v0       #t:Ljava/lang/Thread;
    .restart local v2       #bypassRadioOff:Z
    .restart local v3       #done:[Z
    .restart local v4       #endTime:J
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static startBootAnimation()V
    .locals 3

    .prologue
    .line 822
    :try_start_0
    const-string v1, "service.bootanim.exit"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v1, "ShutdownThread"

    const-string v2, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    if-eqz v1, :cond_0

    .line 829
    const-string v1, "ctl.start"

    const-string v2, "bootanim:shut mp3"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "ShutdownThread"

    const-string v2, "bootanim:shut mp3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_1
    return-void

    .line 824
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 825
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Failed to set \'service.bootanim.exit\' = 0)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    :cond_0
    const-string v1, "ctl.start"

    const-string v2, "bootanim:shut nomp3"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v1, "ShutdownThread"

    const-string v2, "bootanim:shut nomp3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 837
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 839
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 840
    monitor-exit v1

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 922
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 923
    :goto_0
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v0, v3, :cond_1

    .line 926
    const-string v0, "persist.sys.ams.recover"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const-string v0, "ShutdownThread"

    const-string v1, "since ipo from alarm, switch airplane"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 930
    const-string v0, "persist.sys.ams.recover"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->saveStates(Landroid/content/Context;)V

    .line 934
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 935
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    goto :goto_0

    .line 937
    :cond_1
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-eq v0, v3, :cond_2

    .line 938
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 939
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    .line 941
    :cond_2
    return-void
.end method

.method public running()V
    .locals 26

    .prologue
    .line 944
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

    if-eqz v2, :cond_8

    .line 946
    :try_start_0
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

    invoke-interface {v2}, Lcom/android/server/power/IPreShutdown;->onPowerOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_0
    const-string v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    .line 956
    new-instance v6, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 969
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_9

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 970
    .local v24, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 978
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_0
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "_mode"

    sget v5, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 991
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v17, v2, v4

    .line 992
    .local v17, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 993
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v17, v4

    .line 995
    .local v12, delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_b

    .line 996
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 998
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1008
    .end local v12           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1012
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1015
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v19, v2, v4

    .line 1016
    .local v19, endTimeIPO:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1017
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_2

    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v19, v4

    .line 1019
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_c

    .line 1020
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1022
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1032
    .end local v12           #delay:J
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1035
    .end local v19           #endTimeIPO:J
    :cond_3
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 1037
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 1041
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_4

    .line 1043
    const/16 v2, 0x2710

    :try_start_3
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1051
    .end local v11           #am:Landroid/app/IActivityManager;
    :cond_4
    :goto_5
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down radios..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 1055
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1057
    :cond_5
    const-string v2, "ShutdownThread"

    const-string v3, "bypass MountService!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :goto_6
    const-string v2, "ShutdownThread"

    const-string v3, "MountService shut done..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :try_start_4
    const-string v2, "service.shutanim.running"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v2, "ShutdownThread"

    const-string v3, "set service.shutanim.running to 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1119
    :goto_7
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1122
    new-instance v25, Landroid/os/SystemVibrator;

    invoke-direct/range {v25 .. v25}, Landroid/os/SystemVibrator;-><init>()V

    .line 1124
    .local v25, vibrator:Landroid/os/Vibrator;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimationMP4()V

    .line 1127
    const-wide/16 v2, 0x1f4

    :try_start_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1135
    :goto_8
    const-wide/16 v2, 0x1f4

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_9

    .line 1142
    :goto_9
    const-string v2, "ShutdownThread"

    const-string v3, "Performing ipo low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1146
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1147
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1148
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1151
    :cond_6
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1156
    sget-object v2, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_11

    .line 1157
    sget-object v2, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1158
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 1169
    :cond_7
    :goto_a
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1170
    const/4 v2, 0x0

    :try_start_7
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 1171
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1173
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 1174
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1176
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1178
    :try_start_8
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a

    .line 1181
    :goto_b
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1186
    .end local v25           #vibrator:Landroid/os/Vibrator;
    :goto_c
    return-void

    .line 947
    .end local v6           #br:Landroid/content/BroadcastReceiver;
    .end local v17           #endTime:J
    .end local v24           #reason:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 948
    .local v14, e:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPowerOff exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 951
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_8
    const-string v2, "ShutdownThread"

    const-string v3, "sPreShutdownApi is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 969
    .restart local v6       #br:Landroid/content/BroadcastReceiver;
    :cond_9
    const-string v2, "0"

    goto/16 :goto_1

    :cond_a
    const-string v2, ""

    goto/16 :goto_2

    .line 1004
    .restart local v12       #delay:J
    .restart local v17       #endTime:J
    .restart local v24       #reason:Ljava/lang/String;
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 1005
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 1008
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v2

    .line 1028
    .restart local v12       #delay:J
    .restart local v19       #endTimeIPO:J
    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 1029
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 1032
    .end local v12           #delay:J
    :catchall_1
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v2

    .line 1060
    .end local v19           #endTimeIPO:J
    :cond_d
    new-instance v23, Lcom/android/server/power/ShutdownThread$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1073
    .local v23, observer:Landroid/os/storage/IMountShutdownObserver;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long v15, v2, v4

    .line 1075
    .local v15, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1077
    :try_start_e
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v22

    .line 1079
    .local v22, mount:Landroid/os/storage/IMountService;
    if-eqz v22, :cond_f

    .line 1080
    invoke-interface/range {v22 .. v23}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 1087
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :goto_d
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_e

    .line 1088
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v15, v4

    .line 1089
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_10

    .line 1090
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 1092
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1102
    .end local v12           #delay:J
    :cond_e
    monitor-exit v3

    goto/16 :goto_6

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v2

    .line 1082
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    :cond_f
    :try_start_10
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_d

    .line 1084
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :catch_3
    move-exception v14

    .line 1085
    .local v14, e:Ljava/lang/Exception;
    :try_start_11
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_d

    .line 1098
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v12       #delay:J
    :cond_10
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_d

    .line 1099
    :catch_4
    move-exception v2

    goto :goto_d

    .line 1114
    .end local v12           #delay:J
    .end local v15           #endShutTime:J
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_5
    move-exception v21

    .line 1115
    .local v21, ex:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to set \'service.shutanim.running\' = 1)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1128
    .end local v21           #ex:Ljava/lang/Exception;
    .restart local v25       #vibrator:Landroid/os/Vibrator;
    :catch_6
    move-exception v14

    .line 1130
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1159
    .end local v14           #e:Ljava/lang/Exception;
    :cond_11
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 1161
    :try_start_13
    const-string v2, "service.bootanim.exit"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v2, "ShutdownThread"

    const-string v3, "set \'service.bootanim.exit\' = 1)."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_a

    .line 1163
    :catch_7
    move-exception v21

    .line 1164
    .restart local v21       #ex:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to set \'service.bootanim.exit\' = 1)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1171
    .end local v21           #ex:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v2

    .line 1181
    :catchall_4
    move-exception v2

    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v2

    .line 1183
    .end local v25           #vibrator:Landroid/os/Vibrator;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1184
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_c

    .line 1044
    .restart local v11       #am:Landroid/app/IActivityManager;
    :catch_8
    move-exception v2

    goto/16 :goto_5

    .line 1136
    .end local v11           #am:Landroid/app/IActivityManager;
    .restart local v25       #vibrator:Landroid/os/Vibrator;
    :catch_9
    move-exception v2

    goto/16 :goto_9

    .line 1179
    :catch_a
    move-exception v2

    goto/16 :goto_b
.end method

.method static synthetic access$sput-mReboot-d6390c(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$sput-mRebootReason-ba5398(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$sget-mRebootSafeMode-6a6402()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return v0
.end method
