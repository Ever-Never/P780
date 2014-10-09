.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 149
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 150
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 152
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 153
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1372
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1375
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1376
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 142
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    return-void
.end method

.method public run()V
    .locals 174

    .prologue
    .line 165
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 168
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 169
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 173
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 176
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 177
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 181
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v142

    .line 183
    .local v142, shutdownAction:Ljava/lang/String;
    if-eqz v142, :cond_0

    invoke-virtual/range {v142 .. v142}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 184
    const/4 v7, 0x0

    move-object/from16 v0, v142

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_12

    const/16 v136, 0x1

    .line 187
    .local v136, reboot:Z
    :goto_0
    invoke-virtual/range {v142 .. v142}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_13

    .line 188
    const/4 v7, 0x1

    invoke-virtual/range {v142 .. v142}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v142

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v135

    .line 193
    .local v135, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v136

    move-object/from16 v1, v135

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 197
    .end local v135           #reason:Ljava/lang/String;
    .end local v136           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 198
    .local v105, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v104, 0x0

    .line 200
    .local v104, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 202
    .local v33, headless:Z
    const/16 v112, 0x0

    .line 203
    .local v112, installer:Lcom/android/server/pm/Installer;
    const/16 v67, 0x0

    .line 204
    .local v67, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v89, 0x0

    .line 205
    .local v89, contentService:Landroid/content/ContentService;
    const/16 v114, 0x0

    .line 206
    .local v114, lights:Lcom/android/server/LightsService;
    const/16 v134, 0x0

    .line 207
    .local v134, power:Lcom/android/server/power/PowerManagerService;
    const/16 v97, 0x0

    .line 208
    .local v97, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v75, 0x0

    .line 209
    .local v75, battery:Lcom/android/server/BatteryService;
    const/16 v163, 0x0

    .line 210
    .local v163, vibrator:Lcom/android/server/VibratorService;
    const/16 v71, 0x0

    .line 211
    .local v71, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v125, 0x0

    .line 212
    .local v125, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 213
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 214
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v127, 0x0

    .line 215
    .local v127, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v87, 0x0

    .line 216
    .local v87, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v170, 0x0

    .line 217
    .local v170, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v168, 0x0

    .line 218
    .local v168, wifi:Lcom/android/server/WifiService;
    const/16 v141, 0x0

    .line 219
    .local v141, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v133, 0x0

    .line 220
    .local v133, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 221
    .local v5, context:Landroid/content/Context;
    const/16 v172, 0x0

    .line 223
    .local v172, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v77, 0x0

    .line 224
    .local v77, bluetooth:Landroid/server/BluetoothService;
    const/16 v79, 0x0

    .line 225
    .local v79, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v82, 0x0

    .line 226
    .local v82, bluetoothSocket:Landroid/server/BluetoothSocketService;
    const/16 v64, 0x0

    .line 227
    .local v64, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v98, 0x0

    .line 228
    .local v98, dock:Lcom/android/server/DockObserver;
    const/16 v92, 0x0

    .line 229
    .local v92, cover:Lcom/android/server/CoverObserver;
    const/16 v161, 0x0

    .line 230
    .local v161, usb:Lcom/android/server/usb/UsbService;
    const/16 v139, 0x0

    .line 231
    .local v139, serial:Lcom/android/server/SerialService;
    const/16 v156, 0x0

    .line 232
    .local v156, twilight:Lcom/android/server/TwilightService;
    const/16 v159, 0x0

    .line 233
    .local v159, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v137, 0x0

    .line 234
    .local v137, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v152, 0x0

    .line 235
    .local v152, throttle:Lcom/android/server/ThrottleService;
    const/16 v129, 0x0

    .line 236
    .local v129, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v84, 0x0

    .line 237
    .local v84, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v111, 0x0

    .line 238
    .local v111, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v146, 0x0

    .line 240
    .local v146, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v148, 0x0

    .line 242
    .local v148, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v66, 0x0

    .line 245
    .local v66, Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    const/16 v121, 0x0

    .line 249
    .local v121, mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    const/16 v106, 0x0

    .line 255
    .local v106, fdm:Lcom/android/server/FrameworkDmService;
    new-instance v158, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v158

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 256
    .local v158, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v158 .. v158}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v158 .. v158}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    new-instance v173, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v173

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 276
    .local v173, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v173 .. v173}, Landroid/os/HandlerThread;->start()V

    .line 277
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v173 .. v173}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 278
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    const/16 v24, 0x0

    .line 300
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v113, Lcom/android/server/pm/Installer;

    invoke-direct/range {v113 .. v113}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_60

    .line 302
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .local v113, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/pm/Installer;->ping()Z

    .line 304
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 308
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 310
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_61

    .line 312
    .end local v134           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 314
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static/range {v104 .. v104}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 317
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_62

    .line 319
    .end local v97           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 321
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v147, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_63

    .line 323
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v147, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 324
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v149, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v149

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_64

    .line 326
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .local v149, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 328
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 332
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 335
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 342
    .local v94, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v94

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 343
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v24, 0x1

    .line 350
    :cond_2
    :goto_3
    if-eqz v104, :cond_16

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v113

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v133

    .line 353
    const/16 v108, 0x0

    .line 355
    .local v108, firstBoot:Z
    :try_start_6
    invoke-interface/range {v133 .. v133}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v108

    .line 359
    :goto_5
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 361
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 366
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 370
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v68, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 372
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .local v68, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_9
    const-string v7, "account"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_65

    move-object/from16 v67, v68

    .line 377
    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_17

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v89

    .line 381
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 384
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 387
    .end local v114           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_66

    .line 389
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_c
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 391
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v164, Lcom/android/server/VibratorService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_67

    .line 393
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .local v164, vibrator:Lcom/android/server/VibratorService;
    :try_start_d
    const-string v7, "vibrator"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 397
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 400
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_68

    .line 402
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_e
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 404
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 408
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_69

    .line 411
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_18

    const/16 v22, 0x1

    :goto_8
    if-nez v108, :cond_19

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v172

    .line 416
    const-string v7, "window"

    move-object/from16 v0, v172

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 417
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 419
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v172

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 421
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 422
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 424
    move-object/from16 v0, v172

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 425
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 430
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 431
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    :goto_a
    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .line 480
    .end local v94           #cryptState:Ljava/lang/String;
    .end local v108           #firstBoot:Z
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    const/16 v95, 0x0

    .line 481
    .local v95, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v143, 0x0

    .line 482
    .local v143, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v109, 0x0

    .line 483
    .local v109, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v72, 0x0

    .line 484
    .local v72, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v131, 0x0

    .line 485
    .local v131, notification:Lcom/android/server/NotificationManagerService;
    const/16 v166, 0x0

    .line 486
    .local v166, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v115, 0x0

    .line 487
    .local v115, location:Lcom/android/server/LocationManagerService;
    const/16 v90, 0x0

    .line 488
    .local v90, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v154, 0x0

    .line 489
    .local v154, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v117, 0x0

    .line 490
    .local v117, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v100, 0x0

    .line 491
    .local v100, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v150, 0x0

    .line 494
    .local v150, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_3

    .line 496
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v110, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v172

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    .line 498
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .local v110, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_11
    const-string v7, "input_method"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5f

    move-object/from16 v109, v110

    .line 504
    .end local v110           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    .line 513
    :cond_3
    :goto_d
    :try_start_13
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5

    .line 519
    :goto_e
    :try_start_14
    invoke-interface/range {v133 .. v133}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6

    .line 527
    :goto_f
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x1

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5e

    .line 541
    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_22

    .line 542
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 548
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v126, Lcom/android/server/MountService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7

    .line 550
    .end local v125           #mountService:Lcom/android/server/MountService;
    .local v126, mountService:Lcom/android/server/MountService;
    :try_start_17
    const-string v7, "mount"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_5d

    move-object/from16 v125, v126

    .line 557
    .end local v126           #mountService:Lcom/android/server/MountService;
    .restart local v125       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_11
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v118, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8

    .line 559
    .end local v117           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v118, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_19
    const-string v7, "lock_settings"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_5c

    move-object/from16 v117, v118

    .line 565
    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v117       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v96, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_9

    .line 567
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v96, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1b
    const-string v7, "device_policy"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_5b

    move-object/from16 v95, v96

    .line 573
    .end local v96           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v144, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v144

    move-object/from16 v1, v172

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_a

    .line 575
    .end local v143           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v144, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1d
    const-string v7, "statusbar"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_5a

    move-object/from16 v143, v144

    .line 581
    .end local v144           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v143       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_b

    .line 589
    :goto_15
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 591
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c

    .line 597
    :goto_16
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v155, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    .line 599
    .end local v154           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v155, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_21
    const-string v7, "textservices"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_59

    move-object/from16 v154, v155

    .line 605
    .end local v155           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v154       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v128, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v128

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    .line 607
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v128, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_23
    const-string v7, "netstats"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_58

    move-object/from16 v29, v128

    .line 613
    .end local v128           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_f

    .line 617
    .end local v127           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_25
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_57

    .line 623
    :goto_19
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v171, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v171

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_10

    .line 625
    .end local v170           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v171, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_27
    const-string v7, "wifip2p"

    move-object/from16 v0, v171

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_56

    move-object/from16 v170, v171

    .line 631
    .end local v171           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v170       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v169, Lcom/android/server/WifiService;

    move-object/from16 v0, v169

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    .line 633
    .end local v168           #wifi:Lcom/android/server/WifiService;
    .local v169, wifi:Lcom/android/server/WifiService;
    :try_start_29
    const-string v7, "wifi"

    move-object/from16 v0, v169

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_55

    move-object/from16 v168, v169

    .line 639
    .end local v169           #wifi:Lcom/android/server/WifiService;
    .restart local v168       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v88, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v88

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_12

    .line 642
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .local v88, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2b
    const-string v7, "connectivity"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 643
    move-object/from16 v0, v29

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 644
    move-object/from16 v0, v25

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 645
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 646
    invoke-virtual/range {v170 .. v170}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_54

    move-object/from16 v87, v88

    .line 652
    .end local v88           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v141

    .line 654
    const-string v7, "servicediscovery"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_13

    .line 661
    :goto_1d
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v153, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v153

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 663
    .end local v152           #throttle:Lcom/android/server/ThrottleService;
    .local v153, throttle:Lcom/android/server/ThrottleService;
    :try_start_2e
    const-string v7, "throttle"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_53

    move-object/from16 v152, v153

    .line 670
    .end local v153           #throttle:Lcom/android/server/ThrottleService;
    .restart local v152       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 682
    :goto_1f
    if-eqz v125, :cond_5

    .line 683
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 687
    :cond_5
    if-eqz v67, :cond_6

    .line 688
    :try_start_30
    invoke-virtual/range {v67 .. v67}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_16

    .line 694
    :cond_6
    :goto_20
    if-eqz v89, :cond_7

    .line 695
    :try_start_31
    invoke-virtual/range {v89 .. v89}, Landroid/content/ContentService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 701
    :cond_7
    :goto_21
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v132, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v132

    move-object/from16 v1, v143

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 703
    .end local v131           #notification:Lcom/android/server/NotificationManagerService;
    .local v132, notification:Lcom/android/server/NotificationManagerService;
    :try_start_33
    const-string v7, "notification"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 704
    move-object/from16 v0, v25

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_52

    move-object/from16 v131, v132

    .line 710
    .end local v132           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v131       #notification:Lcom/android/server/NotificationManagerService;
    :goto_22
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 718
    :goto_23
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v116, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 720
    .end local v115           #location:Lcom/android/server/LocationManagerService;
    .local v116, location:Lcom/android/server/LocationManagerService;
    :try_start_36
    const-string v7, "location"

    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_51

    move-object/from16 v115, v116

    .line 726
    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .restart local v115       #location:Lcom/android/server/LocationManagerService;
    :goto_24
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v91, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v91

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .line 728
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v91, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_38
    const-string v7, "country_detector"

    move-object/from16 v0, v91

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_50

    move-object/from16 v90, v91

    .line 734
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_25
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1c

    .line 743
    :goto_26
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v7, "search_engine"

    new-instance v9, Landroid/server/search/SearchEngineManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d

    .line 753
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "LenovoBatteryManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v123, Lcom/android/server/LenovoBatteryManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/LenovoBatteryManagerService;-><init>(Landroid/content/Context;)V

    .line 755
    .local v123, mLenovoBatteryManagerService:Lcom/android/server/LenovoBatteryManagerService;
    const-string v7, "LenovoBatteryManagerService"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 756
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/LenovoBatteryManagerService;->initReceiver()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 765
    .end local v123           #mLenovoBatteryManagerService:Lcom/android/server/LenovoBatteryManagerService;
    :goto_28
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "System Theme"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v145, Lcom/lenovo/systemtheme/SystemThemeService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/lenovo/systemtheme/SystemThemeService;-><init>(Landroid/content/Context;)V

    .line 770
    .local v145, systemThemeService:Lcom/lenovo/systemtheme/SystemThemeService;
    invoke-virtual/range {v145 .. v145}, Lcom/lenovo/systemtheme/SystemThemeService;->systemReady()V

    .line 772
    const-string v7, "system_theme"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 783
    .end local v145           #systemThemeService:Lcom/lenovo/systemtheme/SystemThemeService;
    :goto_29
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "LenovoAkgService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v120, Lcom/android/server/AkgService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/AkgService;-><init>(Landroid/content/Context;)V

    .line 785
    .local v120, mAkgService:Lcom/android/server/AkgService;
    const-string v7, "LenovoAkgService"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .line 793
    .end local v120           #mAkgService:Lcom/android/server/AkgService;
    :goto_2a
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_21

    .line 800
    :goto_2b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 803
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    if-nez v33, :cond_8

    .line 805
    new-instance v167, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 806
    .end local v166           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v167, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_40
    const-string v7, "wallpaper"

    move-object/from16 v0, v167

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_4f

    move-object/from16 v166, v167

    .line 813
    .end local v167           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v166       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_8
    :goto_2c
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 815
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 827
    :cond_9
    :goto_2d
    const/16 v74, 0x0

    .line 829
    .local v74, audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v74, v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .line 835
    :goto_2e
    :try_start_43
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioProfileService = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v74

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-eqz v74, :cond_a

    .line 837
    const-string v7, "audioprofile"

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .line 848
    :cond_a
    :goto_2f
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v99, Lcom/android/server/DockObserver;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .end local v98           #dock:Lcom/android/server/DockObserver;
    .local v99, dock:Lcom/android/server/DockObserver;
    move-object/from16 v98, v99

    .line 856
    .end local v99           #dock:Lcom/android/server/DockObserver;
    .restart local v98       #dock:Lcom/android/server/DockObserver;
    :goto_30
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Cover Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v93, Lcom/android/server/CoverObserver;

    move-object/from16 v0, v93

    invoke-direct {v0, v5}, Lcom/android/server/CoverObserver;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_27

    .end local v92           #cover:Lcom/android/server/CoverObserver;
    .local v93, cover:Lcom/android/server/CoverObserver;
    move-object/from16 v92, v93

    .line 864
    .end local v93           #cover:Lcom/android/server/CoverObserver;
    .restart local v92       #cover:Lcom/android/server/CoverObserver;
    :goto_31
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_28

    .line 873
    :goto_32
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v162, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_29

    .line 876
    .end local v161           #usb:Lcom/android/server/usb/UsbService;
    .local v162, usb:Lcom/android/server/usb/UsbService;
    :try_start_48
    const-string v7, "usb"

    move-object/from16 v0, v162

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_4e

    move-object/from16 v161, v162

    .line 882
    .end local v162           #usb:Lcom/android/server/usb/UsbService;
    .restart local v161       #usb:Lcom/android/server/usb/UsbService;
    :goto_33
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v140, Lcom/android/server/SerialService;

    move-object/from16 v0, v140

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .line 885
    .end local v139           #serial:Lcom/android/server/SerialService;
    .local v140, serial:Lcom/android/server/SerialService;
    :try_start_4a
    const-string v7, "serial"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_4d

    move-object/from16 v139, v140

    .line 891
    .end local v140           #serial:Lcom/android/server/SerialService;
    .restart local v139       #serial:Lcom/android/server/SerialService;
    :goto_34
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v157, Lcom/android/server/TwilightService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .end local v156           #twilight:Lcom/android/server/TwilightService;
    .local v157, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v156, v157

    .line 898
    .end local v157           #twilight:Lcom/android/server/TwilightService;
    .restart local v156       #twilight:Lcom/android/server/TwilightService;
    :goto_35
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v160, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v160

    move-object/from16 v1, v156

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .end local v159           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v160, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v159, v160

    .line 906
    .end local v160           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v159       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_36
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 914
    :goto_37
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    new-instance v73, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .line 916
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .local v73, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4f
    const-string v7, "appwidget"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_4c

    move-object/from16 v72, v73

    .line 922
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_38
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v138, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .end local v137           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v138, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v137, v138

    .line 932
    .end local v138           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v137       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_39
    const/16 v70, 0x0

    .line 934
    .local v70, agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_51
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v70, v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_31

    .line 939
    :goto_3a
    :try_start_52
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agpsMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v70

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    if-eqz v70, :cond_b

    .line 941
    const-string v7, "mtk-agps"

    invoke-interface/range {v70 .. v70}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 950
    :cond_b
    :goto_3b
    const/16 v103, 0x0

    .line 952
    .local v103, epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :try_start_53
    const-class v7, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    move-object/from16 v103, v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 956
    :goto_3c
    :try_start_54
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "epoMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v103

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    if-eqz v103, :cond_c

    .line 958
    const-string v7, "mtk-epo-client"

    invoke-interface/range {v103 .. v103}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .line 967
    :cond_c
    :goto_3d
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 978
    :goto_3e
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 986
    :goto_3f
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "HDMI Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-class v7, Lcom/mediatek/common/hdmi/IHDMIObserver;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMIObserver;

    move-object/from16 v66, v0
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 995
    :goto_40
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v130, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .end local v129           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v130, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v129, v130

    .line 1002
    .end local v130           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v129       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_41
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v85, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .line 1004
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v85, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_5a
    const-string v7, "commontime_management"

    move-object/from16 v0, v85

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_4b

    move-object/from16 v84, v85

    .line 1010
    .end local v85           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_42
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_39

    .line 1016
    :goto_43
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, #android:bool@config_dreamsSupported#t

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1019
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v101, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v101

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    .line 1022
    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v101, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_5d
    const-string v7, "dreams"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_4a

    move-object/from16 v100, v101

    .line 1032
    .end local v101           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v100       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_d
    :goto_44
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "LaunchIconThemeService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v122, Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3b

    .line 1034
    .end local v121           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .local v122, mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :try_start_5f
    const-string v7, "LaunchIconThemeService"

    move-object/from16 v0, v122

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_49

    move-object/from16 v121, v122

    .line 1045
    .end local v122           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v121       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :goto_45
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "Thermal Switch Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v151, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3c

    .line 1047
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .local v151, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    :try_start_61
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v151

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setThermalManager(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_48

    move-object/from16 v150, v151

    .line 1056
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v74           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v103           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .end local v151           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    :goto_46
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v48

    .line 1057
    .local v48, safeMode:Z
    if-eqz v48, :cond_1e

    .line 1058
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1060
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1062
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1071
    :goto_47
    :try_start_62
    invoke-virtual/range {v163 .. v163}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3d

    .line 1077
    :goto_48
    :try_start_63
    invoke-virtual/range {v117 .. v117}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3e

    .line 1082
    :goto_49
    if-eqz v95, :cond_e

    .line 1084
    :try_start_64
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3f

    .line 1090
    :cond_e
    :goto_4a
    if-eqz v131, :cond_f

    .line 1092
    :try_start_65
    invoke-virtual/range {v131 .. v131}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_40

    .line 1099
    :cond_f
    :goto_4b
    :try_start_66
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_41

    .line 1104
    :goto_4c
    if-eqz v48, :cond_10

    .line 1105
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1111
    :cond_10
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v86

    .line 1112
    .local v86, config:Landroid/content/res/Configuration;
    new-instance v124, Landroid/util/DisplayMetrics;

    invoke-direct/range {v124 .. v124}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1113
    .local v124, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v165

    check-cast v165, Landroid/view/WindowManager;

    .line 1114
    .local v165, w:Landroid/view/WindowManager;
    invoke-interface/range {v165 .. v165}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v124

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1115
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v86

    move-object/from16 v1, v124

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1118
    :try_start_67
    move-object/from16 v0, v156

    move-object/from16 v1, v100

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_42

    .line 1124
    :goto_4d
    :try_start_68
    invoke-interface/range {v133 .. v133}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_43

    .line 1130
    :goto_4e
    :try_start_69
    move/from16 v0, v48

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_44

    .line 1136
    :goto_4f
    move-object/from16 v34, v5

    .line 1137
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v125

    .line 1138
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1139
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1140
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1141
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1142
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v87

    .line 1143
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v98

    .line 1144
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v92

    .line 1145
    .local v42, coverF:Lcom/android/server/CoverObserver;
    move-object/from16 v43, v161

    .line 1146
    .local v43, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v54, v152

    .line 1147
    .local v54, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v44, v156

    .line 1148
    .local v44, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v45, v159

    .line 1149
    .local v45, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v47, v72

    .line 1150
    .local v47, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v49, v166

    .line 1151
    .local v49, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v50, v109

    .line 1152
    .local v50, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v46, v137

    .line 1153
    .local v46, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v52, v115

    .line 1154
    .local v52, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v53, v90

    .line 1155
    .local v53, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v55, v129

    .line 1156
    .local v55, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v56, v84

    .line 1157
    .local v56, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v57, v154

    .line 1158
    .local v57, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v51, v143

    .line 1159
    .local v51, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v58, v100

    .line 1160
    .local v58, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v59, v19

    .line 1161
    .local v59, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v146

    .line 1163
    .local v60, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v148

    .line 1165
    .local v61, telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v150

    .line 1168
    .local v62, thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    move-object/from16 v63, v121

    .line 1176
    .local v63, launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v63}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/CoverObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1338
    :try_start_6a
    const-string v7, "DMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v76

    .line 1339
    .local v76, binder:Landroid/os/IBinder;
    if-eqz v76, :cond_21

    .line 1340
    invoke-static/range {v76 .. v76}, Lcom/mediatek/common/dm/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v69

    .line 1341
    .local v69, agent:Lcom/mediatek/common/dm/DMAgent;
    invoke-interface/range {v69 .. v69}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v119

    .line 1342
    .local v119, locked:Z
    if-eqz v143, :cond_20

    if-eqz v131, :cond_20

    if-eqz v15, :cond_20

    .line 1343
    new-instance v107, Lcom/android/server/FrameworkDmService;

    move-object/from16 v0, v107

    move-object/from16 v1, v143

    move-object/from16 v2, v131

    invoke-direct {v0, v5, v15, v1, v2}, Lcom/android/server/FrameworkDmService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/NotificationManagerService;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_45

    .line 1344
    .end local v106           #fdm:Lcom/android/server/FrameworkDmService;
    .local v107, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_6b
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v119

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    if-nez v119, :cond_1f

    const/4 v7, 0x1

    :goto_50
    move-object/from16 v0, v107

    invoke-virtual {v0, v7}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_47

    move-object/from16 v106, v107

    .line 1357
    .end local v69           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v107           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v119           #locked:Z
    .restart local v106       #fdm:Lcom/android/server/FrameworkDmService;
    :goto_51
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1358
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_11
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/android/server/ServerHangDetectThread;->getInstance()Lcom/android/server/ServerHangDetectThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/ServerHangDetectThread;->start()V

    .line 1366
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1367
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    return-void

    .line 184
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #coverF:Lcom/android/server/CoverObserver;
    .end local v43           #usbF:Lcom/android/server/usb/UsbService;
    .end local v44           #twilightF:Lcom/android/server/TwilightService;
    .end local v45           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v46           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #throttleF:Lcom/android/server/ThrottleService;
    .end local v55           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v56           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v57           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v58           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v62           #thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v63           #launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v64           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v66           #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v86           #config:Landroid/content/res/Configuration;
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v89           #contentService:Landroid/content/ContentService;
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v92           #cover:Lcom/android/server/CoverObserver;
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v98           #dock:Lcom/android/server/DockObserver;
    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v104           #factoryTest:I
    .end local v105           #factoryTestStr:Ljava/lang/String;
    .end local v106           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v115           #location:Lcom/android/server/LocationManagerService;
    .end local v117           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v121           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v124           #metrics:Landroid/util/DisplayMetrics;
    .end local v125           #mountService:Lcom/android/server/MountService;
    .end local v129           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v131           #notification:Lcom/android/server/NotificationManagerService;
    .end local v133           #pm:Landroid/content/pm/IPackageManager;
    .end local v137           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v139           #serial:Lcom/android/server/SerialService;
    .end local v141           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v143           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v152           #throttle:Lcom/android/server/ThrottleService;
    .end local v154           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v156           #twilight:Lcom/android/server/TwilightService;
    .end local v158           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v159           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v161           #usb:Lcom/android/server/usb/UsbService;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .end local v165           #w:Landroid/view/WindowManager;
    .end local v166           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v168           #wifi:Lcom/android/server/WifiService;
    .end local v170           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v172           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v173           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_12
    const/16 v136, 0x0

    goto/16 :goto_0

    .line 190
    .restart local v136       #reboot:Z
    :cond_13
    const/16 v135, 0x0

    .restart local v135       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 198
    .end local v135           #reason:Ljava/lang/String;
    .end local v136           #reboot:Z
    .restart local v105       #factoryTestStr:Ljava/lang/String;
    :cond_14
    invoke-static/range {v105 .. v105}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v104

    goto/16 :goto_2

    .line 345
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v64       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v66       #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    .restart local v79       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v89       #contentService:Landroid/content/ContentService;
    .restart local v92       #cover:Lcom/android/server/CoverObserver;
    .restart local v94       #cryptState:Ljava/lang/String;
    .restart local v98       #dock:Lcom/android/server/DockObserver;
    .restart local v104       #factoryTest:I
    .restart local v106       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v121       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v125       #mountService:Lcom/android/server/MountService;
    .restart local v127       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v129       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v133       #pm:Landroid/content/pm/IPackageManager;
    .restart local v137       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v139       #serial:Lcom/android/server/SerialService;
    .restart local v141       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #throttle:Lcom/android/server/ThrottleService;
    .restart local v156       #twilight:Lcom/android/server/TwilightService;
    .restart local v158       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v159       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v161       #usb:Lcom/android/server/usb/UsbService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    .restart local v168       #wifi:Lcom/android/server/WifiService;
    .restart local v170       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v172       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v173       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_15
    :try_start_6c
    const-string v7, "1"

    move-object/from16 v0, v94

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 346
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 350
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 373
    .restart local v108       #firstBoot:Z
    :catch_0
    move-exception v102

    .line 374
    .local v102, e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_6c} :catch_1

    goto/16 :goto_6

    .line 475
    .end local v94           #cryptState:Ljava/lang/String;
    .end local v102           #e:Ljava/lang/Throwable;
    .end local v108           #firstBoot:Z
    :catch_1
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .line 476
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .local v102, e:Ljava/lang/RuntimeException;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    :goto_53
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 378
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v102           #e:Ljava/lang/RuntimeException;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #cryptState:Ljava/lang/String;
    .restart local v108       #firstBoot:Z
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 412
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v114           #lights:Lcom/android/server/LightsService;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_19
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 432
    :cond_1a
    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_1b

    .line 433
    :try_start_6d
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 475
    :catch_2
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto :goto_53

    .line 441
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :cond_1b
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v78, Landroid/server/BluetoothService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_6d} :catch_2

    .line 443
    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .local v78, bluetooth:Landroid/server/BluetoothService;
    :try_start_6e
    const-string v7, "bluetooth"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 444
    invoke-virtual/range {v78 .. v78}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 446
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 447
    new-instance v80, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v80

    move-object/from16 v1, v78

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_6e} :catch_6a

    .line 448
    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v80, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_6f
    const-string v7, "bluetooth_a2dp"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 450
    invoke-virtual/range {v78 .. v78}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_6f} :catch_6b

    move-object/from16 v79, v80

    .line 454
    .end local v80           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v79       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1c
    :try_start_70
    new-instance v83, Landroid/server/BluetoothSocketService;

    move-object/from16 v0, v83

    move-object/from16 v1, v78

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothSocketService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_70} :catch_6a

    .line 455
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .local v83, bluetoothSocket:Landroid/server/BluetoothSocketService;
    :try_start_71
    const-string v7, "bluetooth_socket"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 460
    new-instance v65, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_71} :catch_6c

    .line 461
    .end local v64           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v65, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_72
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 466
    invoke-virtual/range {v78 .. v78}, Landroid/server/BluetoothService;->getRebootBluetoothState()Z

    move-result v81

    .line 467
    .local v81, bluetoothOn:Z
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bluetoothOn = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v81

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-eqz v81, :cond_1d

    .line 469
    invoke-virtual/range {v78 .. v78}, Landroid/server/BluetoothService;->enable()Z
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_72} :catch_6d

    :cond_1d
    move-object/from16 v64, v65

    .end local v65           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v64       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v82, v83

    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 499
    .end local v81           #bluetoothOn:Z
    .end local v94           #cryptState:Ljava/lang/String;
    .end local v108           #firstBoot:Z
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v100       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #location:Lcom/android/server/LocationManagerService;
    .restart local v117       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v131       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v143       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v154       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    .restart local v166       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v102

    .line 500
    .local v102, e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 507
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v102

    .line 508
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 514
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v102

    .line 515
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 520
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v102

    .line 521
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 551
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v102

    .line 552
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 560
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v102

    .line 561
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 568
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v102

    .line 569
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 576
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v102

    .line 577
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 584
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v102

    .line 585
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 592
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v102

    .line 593
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 600
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v102

    .line 601
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 608
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v102

    .line 609
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 618
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v102

    move-object/from16 v25, v127

    .line 619
    .end local v127           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 626
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v102

    .line 627
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 634
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v102

    .line 635
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 647
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v102

    .line 648
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 656
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v102

    .line 657
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 665
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v102

    .line 666
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 673
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v102

    .line 674
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 689
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v102

    .line 690
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 696
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v102

    .line 697
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 705
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v102

    .line 706
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 713
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v102

    .line 714
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 721
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v102

    .line 722
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 729
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v102

    .line 730
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 737
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v102

    .line 738
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 746
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v102

    .line 747
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 757
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v102

    .line 758
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting LenovoBatteryManagerService"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 773
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v102

    .line 774
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SystemThemeService"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 786
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v102

    .line 787
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting LenovoAkgService"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 796
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v102

    .line 797
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 808
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v102

    .line 809
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 817
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v102

    .line 818
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 832
    .end local v102           #e:Ljava/lang/Throwable;
    .restart local v74       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_24
    move-exception v102

    .line 833
    .local v102, e:Ljava/lang/Exception;
    :try_start_73
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v102 .. v102}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_25

    goto/16 :goto_2e

    .line 840
    .end local v102           #e:Ljava/lang/Exception;
    :catch_25
    move-exception v102

    .line 841
    .local v102, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 851
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v102

    .line 852
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 859
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v102

    .line 860
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting CoverObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 868
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v102

    .line 869
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 877
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v102

    .line 878
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 886
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v102

    .line 887
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 893
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v102

    .line 894
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 901
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v102

    .line 902
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 909
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v102

    .line 910
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 917
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v102

    .line 918
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 924
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v102

    .line 925
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 936
    .end local v102           #e:Ljava/lang/Throwable;
    .restart local v70       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_30
    move-exception v102

    .line 937
    .local v102, e:Ljava/lang/Exception;
    :try_start_74
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v102 .. v102}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_31

    goto/16 :goto_3a

    .line 944
    .end local v102           #e:Ljava/lang/Exception;
    :catch_31
    move-exception v102

    .line 945
    .local v102, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 953
    .end local v102           #e:Ljava/lang/Throwable;
    .restart local v103       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :catch_32
    move-exception v102

    .line 954
    .local v102, e:Ljava/lang/Exception;
    :try_start_75
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v102 .. v102}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_33

    goto/16 :goto_3c

    .line 961
    .end local v102           #e:Ljava/lang/Exception;
    :catch_33
    move-exception v102

    .line 962
    .local v102, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Mtk EPO client manager"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 969
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v102

    .line 970
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 981
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v102

    .line 982
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 989
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v102

    .line 990
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HDMIObserver"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 997
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v102

    .line 998
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1005
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v102

    .line 1006
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1012
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v102

    .line 1013
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1023
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v102

    .line 1024
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1035
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v102

    .line 1036
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting LaunchIconThemeService"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    .line 1048
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v102

    .line 1049
    .restart local v102       #e:Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting Thermal Switch Manager"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46

    .line 1065
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v74           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v102           #e:Ljava/lang/Throwable;
    .end local v103           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v48       #safeMode:Z
    :cond_1e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_47

    .line 1072
    :catch_3d
    move-exception v102

    .line 1073
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1078
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v102

    .line 1079
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1085
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v102

    .line 1086
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1093
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v102

    .line 1094
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1100
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v102

    .line 1101
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1119
    .end local v102           #e:Ljava/lang/Throwable;
    .restart local v86       #config:Landroid/content/res/Configuration;
    .restart local v124       #metrics:Landroid/util/DisplayMetrics;
    .restart local v165       #w:Landroid/view/WindowManager;
    :catch_42
    move-exception v102

    .line 1120
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1125
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_43
    move-exception v102

    .line 1126
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1131
    .end local v102           #e:Ljava/lang/Throwable;
    :catch_44
    move-exception v102

    .line 1132
    .restart local v102       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1345
    .end local v102           #e:Ljava/lang/Throwable;
    .end local v106           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #coverF:Lcom/android/server/CoverObserver;
    .restart local v43       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v44       #twilightF:Lcom/android/server/TwilightService;
    .restart local v45       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v46       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v47       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v49       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v50       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v51       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v52       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v53       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v54       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v55       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v56       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v58       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v59       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v60       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v63       #launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v69       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v76       #binder:Landroid/os/IBinder;
    .restart local v107       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v119       #locked:Z
    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_50

    .line 1347
    .end local v107           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v106       #fdm:Lcom/android/server/FrameworkDmService;
    :cond_20
    :try_start_76
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_45

    goto/16 :goto_51

    .line 1352
    .end local v69           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v119           #locked:Z
    :catch_45
    move-exception v102

    .line 1353
    .local v102, e:Ljava/lang/Exception;
    :goto_6b
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 1350
    .end local v102           #e:Ljava/lang/Exception;
    .restart local v76       #binder:Landroid/os/IBinder;
    :cond_21
    :try_start_77
    const-string v7, "SystemServer"

    const-string v9, "dm binder is null!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_45

    goto/16 :goto_51

    .line 356
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #coverF:Lcom/android/server/CoverObserver;
    .end local v43           #usbF:Lcom/android/server/usb/UsbService;
    .end local v44           #twilightF:Lcom/android/server/TwilightService;
    .end local v45           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v46           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #throttleF:Lcom/android/server/ThrottleService;
    .end local v55           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v56           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v57           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v58           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v62           #thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v63           #launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v86           #config:Landroid/content/res/Configuration;
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v115           #location:Lcom/android/server/LocationManagerService;
    .end local v117           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v124           #metrics:Landroid/util/DisplayMetrics;
    .end local v131           #notification:Lcom/android/server/NotificationManagerService;
    .end local v143           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v154           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v165           #w:Landroid/view/WindowManager;
    .end local v166           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #cryptState:Ljava/lang/String;
    .restart local v108       #firstBoot:Z
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v127       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v7

    goto/16 :goto_5

    .line 1352
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .end local v94           #cryptState:Ljava/lang/String;
    .end local v106           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v108           #firstBoot:Z
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v114           #lights:Lcom/android/server/LightsService;
    .end local v127           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #coverF:Lcom/android/server/CoverObserver;
    .restart local v43       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v44       #twilightF:Lcom/android/server/TwilightService;
    .restart local v45       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v46       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v47       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v48       #safeMode:Z
    .restart local v49       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v50       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v51       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v52       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v53       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v54       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v55       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v56       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v58       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v59       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v60       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v63       #launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v69       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v76       #binder:Landroid/os/IBinder;
    .restart local v86       #config:Landroid/content/res/Configuration;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v100       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v107       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #location:Lcom/android/server/LocationManagerService;
    .restart local v117       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v119       #locked:Z
    .restart local v124       #metrics:Landroid/util/DisplayMetrics;
    .restart local v131       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v143       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v154       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v165       #w:Landroid/view/WindowManager;
    .restart local v166       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_47
    move-exception v102

    move-object/from16 v106, v107

    .end local v107           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v106       #fdm:Lcom/android/server/FrameworkDmService;
    goto :goto_6b

    .line 1048
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #coverF:Lcom/android/server/CoverObserver;
    .end local v43           #usbF:Lcom/android/server/usb/UsbService;
    .end local v44           #twilightF:Lcom/android/server/TwilightService;
    .end local v45           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v46           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #throttleF:Lcom/android/server/ThrottleService;
    .end local v55           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v56           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v57           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v58           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v62           #thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v63           #launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v69           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v86           #config:Landroid/content/res/Configuration;
    .end local v119           #locked:Z
    .end local v124           #metrics:Landroid/util/DisplayMetrics;
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v165           #w:Landroid/view/WindowManager;
    .restart local v70       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v74       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .restart local v103       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v151       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    :catch_48
    move-exception v102

    move-object/from16 v150, v151

    .end local v151           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    goto/16 :goto_6a

    .line 1035
    .end local v121           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v122       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :catch_49
    move-exception v102

    move-object/from16 v121, v122

    .end local v122           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v121       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    goto/16 :goto_69

    .line 1023
    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v101       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_4a
    move-exception v102

    move-object/from16 v100, v101

    .end local v101           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v100       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_68

    .line 1005
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v85       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_4b
    move-exception v102

    move-object/from16 v84, v85

    .end local v85           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_67

    .line 917
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v103           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_4c
    move-exception v102

    move-object/from16 v72, v73

    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_66

    .line 886
    .end local v139           #serial:Lcom/android/server/SerialService;
    .restart local v140       #serial:Lcom/android/server/SerialService;
    :catch_4d
    move-exception v102

    move-object/from16 v139, v140

    .end local v140           #serial:Lcom/android/server/SerialService;
    .restart local v139       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_65

    .line 877
    .end local v161           #usb:Lcom/android/server/usb/UsbService;
    .restart local v162       #usb:Lcom/android/server/usb/UsbService;
    :catch_4e
    move-exception v102

    move-object/from16 v161, v162

    .end local v162           #usb:Lcom/android/server/usb/UsbService;
    .restart local v161       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_64

    .line 808
    .end local v74           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v166           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v167       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4f
    move-exception v102

    move-object/from16 v166, v167

    .end local v167           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v166       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_63

    .line 729
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_50
    move-exception v102

    move-object/from16 v90, v91

    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_62

    .line 721
    .end local v115           #location:Lcom/android/server/LocationManagerService;
    .restart local v116       #location:Lcom/android/server/LocationManagerService;
    :catch_51
    move-exception v102

    move-object/from16 v115, v116

    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .restart local v115       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_61

    .line 705
    .end local v131           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v132       #notification:Lcom/android/server/NotificationManagerService;
    :catch_52
    move-exception v102

    move-object/from16 v131, v132

    .end local v132           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v131       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_60

    .line 665
    .end local v152           #throttle:Lcom/android/server/ThrottleService;
    .restart local v153       #throttle:Lcom/android/server/ThrottleService;
    :catch_53
    move-exception v102

    move-object/from16 v152, v153

    .end local v153           #throttle:Lcom/android/server/ThrottleService;
    .restart local v152       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_5f

    .line 647
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v88       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_54
    move-exception v102

    move-object/from16 v87, v88

    .end local v88           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_5e

    .line 634
    .end local v168           #wifi:Lcom/android/server/WifiService;
    .restart local v169       #wifi:Lcom/android/server/WifiService;
    :catch_55
    move-exception v102

    move-object/from16 v168, v169

    .end local v169           #wifi:Lcom/android/server/WifiService;
    .restart local v168       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_5d

    .line 626
    .end local v170           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v171       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_56
    move-exception v102

    move-object/from16 v170, v171

    .end local v171           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v170       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5c

    .line 618
    :catch_57
    move-exception v102

    goto/16 :goto_5b

    .line 608
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v127       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v128       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_58
    move-exception v102

    move-object/from16 v29, v128

    .end local v128           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_5a

    .line 600
    .end local v154           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v155       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_59
    move-exception v102

    move-object/from16 v154, v155

    .end local v155           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v154       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_59

    .line 576
    .end local v143           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v144       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_5a
    move-exception v102

    move-object/from16 v143, v144

    .end local v144           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v143       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_58

    .line 568
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v96       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_5b
    move-exception v102

    move-object/from16 v95, v96

    .end local v96           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_57

    .line 560
    .end local v117           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v118       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_5c
    move-exception v102

    move-object/from16 v117, v118

    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v117       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_56

    .line 551
    .end local v125           #mountService:Lcom/android/server/MountService;
    .restart local v126       #mountService:Lcom/android/server/MountService;
    :catch_5d
    move-exception v102

    move-object/from16 v125, v126

    .end local v126           #mountService:Lcom/android/server/MountService;
    .restart local v125       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_55

    .line 538
    :catch_5e
    move-exception v7

    goto/16 :goto_10

    .line 499
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v110       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5f
    move-exception v102

    move-object/from16 v109, v110

    .end local v110           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_54

    .line 475
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v115           #location:Lcom/android/server/LocationManagerService;
    .end local v117           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v131           #notification:Lcom/android/server/NotificationManagerService;
    .end local v143           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v154           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v166           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v134       #power:Lcom/android/server/power/PowerManagerService;
    :catch_60
    move-exception v102

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v97

    .end local v97           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v134

    .end local v134           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v114

    .end local v114           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_53

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v134       #power:Lcom/android/server/power/PowerManagerService;
    :catch_61
    move-exception v102

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v97

    .end local v97           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v134

    .end local v134           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v114

    .end local v114           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    :catch_62
    move-exception v102

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v97

    .end local v97           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v114

    .end local v114           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    :catch_63
    move-exception v102

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_64
    move-exception v102

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #cryptState:Ljava/lang/String;
    .restart local v108       #firstBoot:Z
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_65
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v67, v68

    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_66
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_67
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :catch_68
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :catch_69
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :catch_6a
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v80       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :catch_6b
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v79, v80

    .end local v80           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v79       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :catch_6c
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v82, v83

    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v64           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v65       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #vibrator:Lcom/android/server/VibratorService;
    :catch_6d
    move-exception v102

    move-object/from16 v148, v149

    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v65

    .end local v65           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v64       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v82, v83

    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v163, v164

    .end local v164           #vibrator:Lcom/android/server/VibratorService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .line 373
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #lights:Lcom/android/server/LightsService;
    .restart local v147       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_6e
    move-exception v102

    move-object/from16 v67, v68

    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_52

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .end local v94           #cryptState:Ljava/lang/String;
    .end local v108           #firstBoot:Z
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v114           #lights:Lcom/android/server/LightsService;
    .end local v147           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v149           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v100       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #location:Lcom/android/server/LocationManagerService;
    .restart local v117       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v131       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v143       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v154       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v166       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_22
    move-object/from16 v25, v127

    .end local v127           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_46
.end method
