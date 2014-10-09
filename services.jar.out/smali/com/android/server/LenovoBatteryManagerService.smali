.class public Lcom/android/server/LenovoBatteryManagerService;
.super Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;,
        Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;
    }
.end annotation


# static fields
.field private static final AVAILABLE_CPU_FREQS:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

.field private static final CPU_MAX_FREQ:Ljava/lang/String; = "lenovo_scaling_max_freq"

.field private static final MAX_CORE_SET_FILE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/hotplug/cpu_num_limit"

.field private static final MAX_FREQ_SET_FILE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

.field private static final MESSAGE_SET:I = 0x0

.field private static final MSG_UPDATE_CPU_SETTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LenovoBatteryManagerService"

.field private static final TPD_BOOST_CPU_CORES:Ljava/lang/String; = "/sys/module/tpd_debug/parameters/tpd_boost_cpu_cores"

.field private static final TP_TURBO_OFF_LIST:Ljava/util/ArrayList; = null

.field private static final package_action:Ljava/lang/String; = "action.boardcast.resume.activity.info"


# instance fields
.field private backLightLevel:Ljava/lang/String;

.field private currentCABCStates:I

.field private currentPackageName:Ljava/lang/String;

.field private gOldGovernor:Ljava/lang/String;

.field private mAvailableFreqs:[Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChgState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

.field private mIsTpBoostModeChanged:Z

.field private mIslightModeChanged:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mScreenBrightness:I

.field private mStateFlag:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private patternValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$1;

    invoke-direct {v0}, Lcom/android/server/LenovoBatteryManagerService$1;-><init>()V

    sput-object v0, Lcom/android/server/LenovoBatteryManagerService;->TP_TURBO_OFF_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 159
    invoke-direct {p0}, Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;-><init>()V

    .line 68
    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 69
    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    .line 70
    iput-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mChgState:I

    .line 78
    iput-boolean v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mStateFlag:Z

    .line 79
    iput-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    .line 94
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mScreenBrightness:I

    .line 95
    iput-boolean v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mIslightModeChanged:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mIsTpBoostModeChanged:Z

    .line 211
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LenovoBatteryManagerService$2;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    iput-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    .line 525
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/LenovoBatteryManagerService$3;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 160
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    .line 161
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 162
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;-><init>(Lcom/android/server/LenovoBatteryManagerService;Lcom/android/server/LenovoBatteryManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    .line 163
    const-string v0, "LenovoBatteryManagerService"

    const-string v1, "LenovoBatteryManagerService() init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 167
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 171
    :goto_0
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mChgState:I

    .line 173
    return-void

    .line 170
    :cond_0
    const-string v0, "LenovoBatteryManagerService"

    const-string v1, "mTelephonyManager get error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->executePackageChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/LenovoBatteryManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LenovoBatteryManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mChgState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/LenovoBatteryManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/LenovoBatteryManagerService;->mChgState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/LenovoBatteryManagerService;)Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LenovoBatteryManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->updateCPUSettingValue(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->setChargingCur(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private changeBackLightMode()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v6, -0x2

    .line 349
    iget-object v4, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 350
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness_mode"

    invoke-static {v2, v4, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 353
    .local v1, mode:I
    and-int/lit8 v4, v1, 0x1

    if-lez v4, :cond_0

    move v0, v3

    .line 355
    .local v0, autoBrightness:Z
    :cond_0
    if-nez v0, :cond_1

    .line 356
    const-string v4, "screen_brightness"

    const/16 v5, 0x66

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/LenovoBatteryManagerService;->mScreenBrightness:I

    .line 359
    iget v4, p0, Lcom/android/server/LenovoBatteryManagerService;->mScreenBrightness:I

    const/16 v5, 0x2d

    if-le v4, v5, :cond_1

    .line 360
    const-string v4, "screen_brightness_mode"

    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 363
    iput-boolean v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mIslightModeChanged:Z

    .line 366
    :cond_1
    return-void
.end method

.method private static echo2File(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "file"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {p0}, Lcom/android/server/LenovoBatteryManagerService;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    :goto_0
    return v2

    .line 124
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 125
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 127
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 128
    const-string v3, "LenovoBatteryManagerService"

    const-string v4, "file write successed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v2, 0x1

    goto :goto_0

    .line 130
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    const-string v3, "LenovoBatteryManagerService"

    const-string v4, "file write failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableTPBoost(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 306
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTPBoost,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz p1, :cond_0

    .line 308
    const-string v0, "/sys/module/tpd_debug/parameters/tpd_boost_cpu_cores"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/module/tpd_debug/parameters/tpd_boost_cpu_cores"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized executePackageChange(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 413
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->isPackageChange(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 453
    :goto_0
    monitor-exit p0

    return-void

    .line 415
    :cond_0
    :try_start_1
    const-string v1, "LenovoBatteryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package changed: current package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->setCABC(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->judgeLowPowerMode(Ljava/lang/String;)V

    .line 421
    const-string v1, "P780"

    const-string v2, "P780"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "S950"

    const-string v2, "P780"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "S960"

    const-string v2, "P780"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "S820"

    const-string v2, "P780"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    :cond_1
    const-string v1, "com.youku.phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/android/server/LenovoBatteryManagerService;->setChargingCur(Ljava/lang/String;)Z

    .line 427
    iget-boolean v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mStateFlag:Z

    if-nez v1, :cond_2

    .line 428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mStateFlag:Z

    .line 429
    invoke-direct {p0}, Lcom/android/server/LenovoBatteryManagerService;->getLcdLight()V

    .line 430
    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 432
    .local v0, lev:I
    const/16 v1, 0xb2

    if-le v0, v1, :cond_2

    .line 433
    const-string v1, "178"

    invoke-direct {p0, v1}, Lcom/android/server/LenovoBatteryManagerService;->setLcdLight(Ljava/lang/String;)Z

    .line 450
    .end local v0           #lev:I
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->setCpuPreformance(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 437
    :cond_3
    :try_start_2
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/android/server/LenovoBatteryManagerService;->setChargingCur(Ljava/lang/String;)Z

    .line 438
    iget-boolean v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mStateFlag:Z

    if-ne v1, v4, :cond_2

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mStateFlag:Z

    .line 440
    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/LenovoBatteryManagerService;->setLcdLight(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getLcdLight()V
    .locals 8

    .prologue
    .line 485
    const/16 v5, 0x10

    new-array v0, v5, [B

    .line 488
    .local v0, buf:[B
    :try_start_0
    const-string v4, "/sys/class/leds/lcd-backlight/brightness"

    .line 490
    .local v4, path:Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 491
    .local v3, getBacklight:Ljava/io/FileInputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 492
    .local v1, cnt:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 493
    const-string v5, "LenovoBatteryManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ww_debug getLcdLight buf = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cnt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x1

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    .line 497
    const-string v5, "LenovoBatteryManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ww_debug getLcdLight backLightLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cnt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v1           #cnt:I
    .end local v3           #getBacklight:Ljava/io/FileInputStream;
    .end local v4           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v2

    .line 499
    .local v2, e:Ljava/io/IOException;
    const-string v5, "LenovoBatteryManagerService"

    const-string v6, "write cali point err!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 501
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/LenovoBatteryManagerService;->backLightLevel:Ljava/lang/String;

    goto :goto_0
.end method

.method private isPackageChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 458
    const-string v1, "LenovoBatteryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageChange, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    .line 462
    :cond_1
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private judgeLowPowerMode(Ljava/lang/String;)V
    .locals 4
    .parameter "pkg"

    .prologue
    const/4 v3, 0x0

    .line 368
    sget-object v1, Lcom/android/server/LenovoBatteryManagerService;->TP_TURBO_OFF_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    invoke-direct {p0, v3}, Lcom/android/server/LenovoBatteryManagerService;->enableTPBoost(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mIsTpBoostModeChanged:Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/LenovoBatteryManagerService;->limitCPUCoreNum(I)V

    .line 374
    iget-boolean v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mIsTpBoostModeChanged:Z

    if-eqz v1, :cond_2

    .line 375
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/LenovoBatteryManagerService;->enableTPBoost(Z)Z

    .line 376
    iput-boolean v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mIsTpBoostModeChanged:Z

    .line 378
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mIslightModeChanged:Z

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 380
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "screen_brightness_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 383
    iput-boolean v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mIslightModeChanged:Z

    goto :goto_0
.end method

.method private limitCPUCoreNum(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 300
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCoreNum,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "/sys/devices/system/cpu/cpufreq/hotplug/cpu_num_limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method public static readCPUFreqSerial()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 155
    :goto_0
    return-object v4

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, builder:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 145
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 146
    .local v2, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 150
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 149
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 152
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static readEchoFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 110
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCABC(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 316
    const-string v0, "com.android.gallery3d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lenovo.scg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    :cond_0
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    if-eq v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setCabc(I)V

    .line 320
    iput v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    if-eq v0, v2, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->setCabc(I)V

    .line 325
    iput v2, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    goto :goto_0
.end method

.method private setChargingCur(Ljava/lang/String;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 331
    :try_start_0
    const-string v1, "/sys/devices/platform/mt-battery/ChargeCurrent"

    .line 332
    .local v1, path:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, setBacklight:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 334
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 336
    .local v2, sbuf:[B
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ww_debug write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 339
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    const/4 v5, 0x1

    .end local v1           #path:Ljava/lang/String;
    .end local v2           #sbuf:[B
    .end local v3           #setBacklight:Ljava/io/FileOutputStream;
    .end local v4           #str:Ljava/lang/String;
    :goto_0
    return v5

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/io/IOException;
    const-string v6, "LenovoBatteryManagerService"

    const-string v7, "write cali point err!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCpuPreformance(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 393
    const-string v0, "com.lenovo.scg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lcom/android/server/LenovoBatteryManagerService;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    .line 395
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const-string v1, "performance"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 396
    const-string v0, "/sys/module/mt_hotplug_mechanism/parameters/g_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    const-string v0, "/sys/devices/system/cpu/cpu1/online"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    const-string v0, "/sys/devices/system/cpu/cpu2/online"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    const-string v0, "/sys/devices/system/cpu/cpu3/online"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 404
    const-string v0, "/sys/module/mt_hotplug_mechanism/parameters/g_enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    goto :goto_0
.end method

.method private setLcdLight(Ljava/lang/String;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 507
    :try_start_0
    const-string v1, "/sys/class/leds/lcd-backlight/brightness"

    .line 508
    .local v1, path:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 509
    .local v3, setBacklight:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 510
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 512
    .local v2, sbuf:[B
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ww_debug write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 515
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    const/4 v5, 0x1

    .end local v1           #path:Ljava/lang/String;
    .end local v2           #sbuf:[B
    .end local v3           #setBacklight:Ljava/io/FileOutputStream;
    .end local v4           #str:Ljava/lang/String;
    :goto_0
    return v5

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Ljava/io/IOException;
    const-string v6, "LenovoBatteryManagerService"

    const-string v7, "write cali point err!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCPUSettingValue(I)V
    .locals 9
    .parameter "value"

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, isValueValid:Z
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCPUSettingValue,value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 283
    .local v5, tmp:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    const/4 v3, 0x1

    .line 288
    .end local v5           #tmp:Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_3

    .line 289
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    :cond_1
    return-void

    .line 282
    .restart local v5       #tmp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v5           #tmp:Ljava/lang/String;
    :cond_3
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The target value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but the available value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 293
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPatternValue()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    return v0
.end method

.method public initReceiver()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 184
    const-string v2, "LenovoBatteryManagerService"

    const-string v3, "initReceiver() init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action.boardcast.resume.activity.info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "action.sys.unlock.proximity.status.changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "action.batterysaving.killbackgroundservice"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_scaling_max_freq"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;

    invoke-direct {v5, p0}, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cpu_freq"

    invoke-static {}, Lcom/android/server/LenovoBatteryManagerService;->readCPUFreqSerial()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    invoke-static {}, Lcom/android/server/LenovoBatteryManagerService;->readCPUFreqSerial()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    .line 203
    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_scaling_max_freq"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, cpuValue:I
    if-ne v0, v6, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->updateCPUSettingValue(I)V

    goto :goto_0
.end method

.method public setPatternValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 180
    iput p1, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 181
    return-void
.end method
