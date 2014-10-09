.class public Landroid/server/BluetoothSocketService;
.super Landroid/bluetooth/IBluetoothSocket$Stub;
.source "BluetoothSocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothSocketService$Reaper;,
        Landroid/server/BluetoothSocketService$ServiceRecordClient;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_SOCKET_SERVICE:Ljava/lang/String; = "bluetooth_socket"

.field private static final MESSAGE_USER_CONFIRM:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BTSocketService"

.field private static final whiteListPackages:[Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private mConfirmHandler:Landroid/os/Handler;

.field private mConfirmResult:I

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/BluetoothSocketService$ServiceRecordClient;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitForConfirmation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.cts.verifier"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.cts.bluetooth"

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothSocketService;->whiteListPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;-><init>()V

    .line 133
    iput v1, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    .line 137
    iput-boolean v1, p0, Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z

    .line 237
    new-instance v1, Landroid/server/BluetoothSocketService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothSocketService$1;-><init>(Landroid/server/BluetoothSocketService;)V

    iput-object v1, p0, Landroid/server/BluetoothSocketService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    const-string v1, "[JSR82][Service] Initialization Constructor +++"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 274
    iput-object p1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 277
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "[JSR82][Service] This platform does not support Bluetooth."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 283
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 285
    const-string v1, "[JSR82][Service] Bluetooth Adapter does not exist!!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->initNative()V

    .line 289
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const-string v1, "[JSR82][Service] Bluetooth is not enabled!!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 293
    :cond_2
    const-string v1, "[JSR82][Service] Initialization Constructor ---"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.BLUETOOTH_SECURITY_CONFIRM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothSocketService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    return-void
.end method

.method private native abortNative(I)I
.end method

.method private native acceptNative(II)I
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothSocketService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothSocketService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->abortNative(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothSocketService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->destroyNative(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothSocketService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z

    return v0
.end method

.method static synthetic access$502(Landroid/server/BluetoothSocketService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    return p1
.end method

.method static synthetic access$600(Landroid/server/BluetoothSocketService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mConfirmHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private native availableNative(I)I
.end method

.method private native bindListenNative(I)I
.end method

.method private native cleanupNative()V
.end method

.method private native connectNative(ILjava/lang/String;I)I
.end method

.method private native destroyNative(I)I
.end method

.method private native getAddrNative(I)Ljava/lang/String;
.end method

.method private getCallingApplicationLabel()Ljava/lang/String;
    .locals 12

    .prologue
    .line 190
    const/4 v6, 0x0

    .line 192
    .local v6, label:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 194
    .local v8, pid:I
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 196
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 200
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 202
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 204
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 206
    .local v1, appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_2

    .line 208
    iget v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v9, :cond_2

    .line 210
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 212
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 216
    :try_start_0
    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 218
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 225
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCallingApplicationLabel, pid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", processName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", label: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v1           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4           #i:I
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    return-object v6

    .line 219
    .restart local v1       #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4       #i:I
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 221
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCallingApplicationLabel(), Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " caught"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getCallingProcessName()Ljava/lang/String;
    .locals 12

    .prologue
    .line 141
    const/4 v8, 0x0

    .line 143
    .local v8, processName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 145
    .local v7, pid:I
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 147
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 153
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 155
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 157
    .local v1, appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_2

    .line 159
    iget v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v9, :cond_2

    .line 161
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 163
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v6, :cond_0

    .line 167
    :try_start_0
    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 169
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCallingProcessName, pid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", processName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4           #i:I
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    return-object v8

    .line 170
    .restart local v1       #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4       #i:I
    .restart local v6       #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 172
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCallingProcessName(), Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " caught"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private native getRealServerChannelNative(I)I
.end method

.method private native initNative()V
.end method

.method private native initSocketNative(IZZI)I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 716
    const-string v0, "BTSocketService"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void
.end method

.method private native readNative([BIII)I
.end method

.method private native throwErrnoNative(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeNative([BIII)I
.end method


# virtual methods
.method public abort(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 628
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v1, "[JSR82][Service] abort"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 635
    :cond_0
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 636
    const/4 v0, -0x1

    .line 639
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->abortNative(I)I

    move-result v0

    .line 639
    .local v0, result:I
    goto :goto_0
.end method

.method public accept(II)I
    .locals 12
    .parameter "timeout"
    .parameter "fdHandle"

    .prologue
    .line 477
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH_ADMIN"

    const-string v11, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v9, "[JSR82][Service] accept"

    invoke-static {v9}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 480
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 482
    const-string v9, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v9}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 483
    const/4 v7, -0x1

    .line 579
    :cond_0
    :goto_0
    return v7

    .line 486
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothSocketService;->acceptNative(II)I

    move-result v7

    .line 491
    .local v7, result:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 493
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "accept(), result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", addr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v7}, Landroid/server/BluetoothSocketService;->getAddr(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "accept(), fdHandle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", addr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p2}, Landroid/server/BluetoothSocketService;->getAddr(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v1, 0x1

    .line 498
    .local v1, bNeedNotify:Z
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->getCallingProcessName()Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, processName:Ljava/lang/String;
    sget-object v0, Landroid/server/BluetoothSocketService;->whiteListPackages:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v8, v0, v2

    .line 502
    .local v8, whiteListPackage:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 504
    const/4 v1, 0x0

    .line 509
    .end local v8           #whiteListPackage:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p0, p2}, Landroid/server/BluetoothSocketService;->getAddr(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->getTrustState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 512
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->getCallingApplicationLabel()Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, label:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.adapter.action.CONFIRM_ESTABLISH_BLUETOOTH_CONNECTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v3, intent:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 517
    const-string v9, "android.bluetooth.adapter.extra.APPLICATION_LABEL"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :cond_3
    const-string v9, "android.bluetooth.adapter.extra.SOCKET_HANDLE"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string v9, "android.bluetooth.adapter.extra.SOCKET_ADDRESS"

    invoke-virtual {p0, p2}, Landroid/server/BluetoothSocketService;->getAddr(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 524
    const/4 v9, 0x0

    iput v9, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    .line 526
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    if-nez v9, :cond_4

    .line 528
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 531
    :cond_4
    new-instance v9, Landroid/server/BluetoothSocketService$3;

    invoke-direct {v9, p0}, Landroid/server/BluetoothSocketService$3;-><init>(Landroid/server/BluetoothSocketService;)V

    iput-object v9, p0, Landroid/server/BluetoothSocketService;->mConfirmHandler:Landroid/os/Handler;

    .line 552
    :try_start_0
    const-string v9, "BTSocketService"

    const-string v10, "accept(), enter loop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z

    .line 556
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z

    .line 564
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "accept(), exit loop, result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget v9, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    if-nez v9, :cond_0

    .line 568
    const-string v9, "BTSocketService"

    const-string v10, "accept(), User Reject"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0, v7}, Landroid/server/BluetoothSocketService;->abort(I)I

    .line 571
    invoke-virtual {p0, v7}, Landroid/server/BluetoothSocketService;->destroy(I)I

    .line 573
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 500
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #label:Ljava/lang/String;
    .restart local v8       #whiteListPackage:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 557
    .end local v8           #whiteListPackage:Ljava/lang/String;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #label:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public available(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 585
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v1, "[JSR82][Service] available"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 590
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 591
    const/4 v0, -0x1

    .line 594
    :goto_0
    return v0

    .line 593
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->availableNative(I)I

    move-result v0

    .line 594
    .local v0, result:I
    goto :goto_0
.end method

.method public bindListen(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 462
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "[JSR82][Service] bindListen"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 467
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 468
    const/4 v0, -0x1

    .line 471
    :goto_0
    return v0

    .line 470
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->bindListenNative(I)I

    move-result v0

    .line 471
    .local v0, result:I
    goto :goto_0
.end method

.method public connect(ILjava/lang/String;I)I
    .locals 12
    .parameter "fdHandle"
    .parameter "sAddr"
    .parameter "channelNumber"

    .prologue
    .line 364
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH_ADMIN"

    const-string v11, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v9, "[JSR82][Service] connect"

    invoke-static {v9}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 367
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 369
    const-string v9, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v9}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 370
    const/4 v7, -0x1

    .line 456
    :goto_0
    return v7

    .line 376
    :cond_0
    const/4 v1, 0x1

    .line 378
    .local v1, bNeedNotify:Z
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->getCallingProcessName()Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, processName:Ljava/lang/String;
    sget-object v0, Landroid/server/BluetoothSocketService;->whiteListPackages:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v8, v0, v2

    .line 382
    .local v8, whiteListPackage:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 384
    const/4 v1, 0x0

    .line 389
    .end local v8           #whiteListPackage:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, p2}, Landroid/server/BluetoothService;->getTrustState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 392
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->getCallingApplicationLabel()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, label:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.adapter.action.CONFIRM_ESTABLISH_BLUETOOTH_CONNECTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v3, intent:Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 397
    const-string v9, "android.bluetooth.adapter.extra.APPLICATION_LABEL"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    :cond_2
    const-string v9, "android.bluetooth.adapter.extra.SOCKET_HANDLE"

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string v9, "android.bluetooth.adapter.extra.SOCKET_ADDRESS"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v9, "android.bluetooth.adapter.extra.SOCKET_CHANNEL"

    invoke-virtual {v3, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    iget-object v9, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    const/4 v9, 0x0

    iput v9, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    .line 407
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    if-nez v9, :cond_3

    .line 409
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 412
    :cond_3
    new-instance v9, Landroid/server/BluetoothSocketService$2;

    invoke-direct {v9, p0}, Landroid/server/BluetoothSocketService$2;-><init>(Landroid/server/BluetoothSocketService;)V

    iput-object v9, p0, Landroid/server/BluetoothSocketService;->mConfirmHandler:Landroid/os/Handler;

    .line 433
    :try_start_0
    const-string v9, "BTSocketService"

    const-string v10, "connect(), enter loop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z

    .line 437
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z

    .line 445
    const-string v9, "BTSocketService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(), exit loop, result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget v9, p0, Landroid/server/BluetoothSocketService;->mConfirmResult:I

    if-nez v9, :cond_5

    .line 449
    const-string v9, "BTSocketService"

    const-string v10, "connect(), User Reject"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 380
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #label:Ljava/lang/String;
    .restart local v8       #whiteListPackage:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 455
    .end local v8           #whiteListPackage:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothSocketService;->connectNative(ILjava/lang/String;I)I

    move-result v7

    .line 456
    .local v7, result:I
    goto/16 :goto_0

    .line 438
    .end local v7           #result:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #label:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public destroy(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    .line 645
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "[JSR82][Service] destroy"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 653
    :cond_0
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 654
    const/4 v0, -0x1

    .line 658
    :goto_0
    return v0

    .line 656
    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->destroyNative(I)I

    move-result v0

    .line 657
    .local v0, result:I
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-super {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;->finalize()V

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;->finalize()V

    throw v0
.end method

.method public getAddr(I)Ljava/lang/String;
    .locals 3
    .parameter "fdHandle"

    .prologue
    .line 688
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "[JSR82][Service] getAddr"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 693
    const-string v0, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->getAddrNative(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRealServerChannel(I)I
    .locals 3
    .parameter "channelOriginal"

    .prologue
    .line 702
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JSR82][Service] getRealServerChannel. channelOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 707
    const-string v0, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 708
    const/4 v0, -0x1

    .line 710
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->getRealServerChannelNative(I)I

    move-result v0

    goto :goto_0
.end method

.method public initSocket(IZZILandroid/os/IBinder;)I
    .locals 7
    .parameter "type"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "port"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 335
    iget-object v3, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v3, "[JSR82][Service] initSocket"

    invoke-static {v3}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 340
    const-string v3, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v3}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 341
    const/4 v2, -0x1

    .line 358
    :cond_0
    :goto_0
    return v2

    .line 343
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->initSocketNative(IZZI)I

    move-result v2

    .line 344
    .local v2, result:I
    if-ltz v2, :cond_0

    .line 346
    new-instance v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;

    invoke-direct {v0, v6}, Landroid/server/BluetoothSocketService$ServiceRecordClient;-><init>(Landroid/server/BluetoothSocketService$1;)V

    .line 347
    .local v0, client:Landroid/server/BluetoothSocketService$ServiceRecordClient;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iput v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->pid:I

    .line 348
    iput-object p5, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    .line 349
    new-instance v3, Landroid/server/BluetoothSocketService$Reaper;

    iget v4, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->pid:I

    invoke-direct {v3, p0, v2, v4}, Landroid/server/BluetoothSocketService$Reaper;-><init>(Landroid/server/BluetoothSocketService;II)V

    iput-object v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    .line 350
    iget-object v3, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :try_start_0
    iget-object v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {p5, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 355
    iput-object v6, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    goto :goto_0
.end method

.method public read([BIII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .parameter "fdHandle"

    .prologue
    .line 600
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 604
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 605
    const/4 v0, -0x1

    .line 608
    :goto_0
    return v0

    .line 607
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->readNative([BIII)I

    move-result v0

    .line 608
    .local v0, result:I
    goto :goto_0
.end method

.method public throwErrno(II)V
    .locals 4
    .parameter "errno"
    .parameter "fdHandle"

    .prologue
    .line 664
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v1, "[JSR82][Service] throwErrno"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 671
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothSocketService;->throwErrnoNative(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "BTSocketService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public write([BIII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .parameter "fdHandle"

    .prologue
    .line 614
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 618
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    .line 619
    const/4 v0, -0x1

    .line 622
    :goto_0
    return v0

    .line 621
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->writeNative([BIII)I

    move-result v0

    .line 622
    .local v0, result:I
    goto :goto_0
.end method
