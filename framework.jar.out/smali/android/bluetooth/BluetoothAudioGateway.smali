.class public final Landroid/bluetooth/BluetoothAudioGateway;
.super Ljava/lang/Object;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_HF_AG_CHANNEL:I = 0xa

.field public static final DEFAULT_HS_AG_CHANNEL:I = 0xb

.field public static final DIRECTION_INCOMING:I = 0x1

.field public static final DIRECTION_OUTGOING:I = 0x2

.field public static final EVENT_HF_SHUTDOWN:I = 0x2

.field public static final EVENT_HF_STARTED:I = 0x1

.field public static final MSG_INCOMING_HANDSFREE_CONNECTION:I = 0x65

.field public static final MSG_INCOMING_HEADSET_CONNECTION:I = 0x64

.field public static final RFCOMM_CONNECTED:I = 0x1

.field public static final RFCOMM_DISCONNECTED:I = 0x3

.field public static final RFCOMM_ERROR:I = 0x2

.field public static final SCO_ACCEPTED:I = 0x4

.field public static final SCO_CLOSED:I = 0x6

.field public static final SCO_CONNECTED:I = 0x5

.field private static final SELECT_WAIT_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BT Audio Gateway"

.field private static sAtInputCount:I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAtBuf:[Ljava/lang/String;

.field protected mAtParser:Landroid/bluetooth/AtParser;

.field mAtWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBufCount:I

.field private mCallback:Landroid/os/Handler;

.field private mConnectThead:Ljava/lang/Thread;

.field private mConnectTimestamp:J

.field private mConnectingHandsfreeAddress:Ljava/lang/String;

.field private mConnectingHandsfreeRfcommChannel:I

.field private mConnectingHandsfreeSocketFd:I

.field private mConnectingHeadsetAddress:Ljava/lang/String;

.field private mConnectingHeadsetRfcommChannel:I

.field private mConnectingHeadsetSocketFd:I

.field private mDirection:I

.field private mHandsfreeAgRfcommChannel:I

.field private mHeadsetAgRfcommChannel:I

.field private mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private volatile mInterrupted:Z

.field private mIsConnected:Z

.field private mIsStartEvent:Z

.field private mNativeData:I

.field private mOutgoingSCO:Z

.field private mSCOConnected:Z

.field private mTimeoutRemainingMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Landroid/bluetooth/BluetoothAudioGateway;->classInitNative()V

    .line 121
    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 155
    const/4 v0, 0x0

    const/16 v1, 0xa

    const/16 v2, 0xb

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V

    .line 156
    const-string v0, "BluetoothAudioGateway(1)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .parameter "pm"
    .parameter "adapter"

    .prologue
    .line 160
    const/16 v0, 0xa

    const/16 v1, 0xb

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V

    .line 161
    const-string v0, "BluetoothAudioGateway(1)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V
    .locals 3
    .parameter "pm"
    .parameter "adapter"
    .parameter "handsfreeAgRfcommChannel"
    .parameter "headsetAgRfcommChannel"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 104
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    .line 166
    const-string v0, "BluetoothAudioGateway(2)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 167
    iput-object p2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 168
    iput p3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 169
    iput p4, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 171
    new-instance v0, Landroid/bluetooth/AtParser;

    invoke-direct {v0}, Landroid/bluetooth/AtParser;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 175
    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 176
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 177
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 178
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 179
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 180
    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    .line 182
    if-eqz p1, :cond_0

    .line 183
    const-string v0, "AudioGateway"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 186
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->initializeNativeDataNative()V

    .line 187
    return-void
.end method

.method private native acceptConnectionNative()I
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAudioGateway;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I

    return p1
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I

    return p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->waitForHandsfreeIndicationNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/bluetooth/BluetoothAudioGateway;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] acquireWakeLock"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native closeNative()V
.end method

.method private native connectNative()Z
.end method

.method private native disconnectNative()V
.end method

.method public static getAtInputCount()I
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getAtInputCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 388
    sget v0, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    return v0
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 606
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method private static logErr(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 615
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 609
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method private static logWarn(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 612
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method private declared-synchronized onConnectRequest(Ljava/lang/String;I)V
    .locals 7
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 451
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onConnectRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 453
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 454
    if-ne p2, v2, :cond_0

    const/16 v0, 0x64

    move v6, v0

    :goto_0
    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-direct {p0, v6, v0}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    const/16 v0, 0x65

    move v6, v0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnected(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "type"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectTimestamp:J

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 472
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onDisconnected(Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 477
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 478
    .local v0, dir:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onDisconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 480
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 481
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 482
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 484
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 486
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 487
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 489
    :cond_1
    if-ne v0, v3, :cond_0

    .line 492
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    .end local v0           #dir:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onEvent(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 547
    packed-switch p1, :pswitch_data_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERR] unknown event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 567
    :cond_0
    :pswitch_0
    return-void

    .line 551
    :pswitch_1
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    if-lez v0, :cond_0

    .line 553
    :goto_0
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    if-lez v0, :cond_0

    .line 555
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAudioGateway;->handleInput(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPacketReceived(Ljava/lang/String;)V
    .locals 3
    .parameter "atCmd"

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onPacketReceived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : mIsStartEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBufCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 527
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    if-nez v0, :cond_1

    .line 529
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    aput-object p1, v0, v1

    .line 542
    :goto_0
    return-void

    .line 535
    :cond_0
    const-string v0, "[ERR] Run out of AtBuf capacity"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->handleInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized onSCOConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 502
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] onSCOConnected"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 504
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    if-ne v0, v1, :cond_0

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 507
    const/4 v0, 0x5

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :goto_0
    monitor-exit p0

    return-void

    .line 511
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onSCODisconnected()V
    .locals 2

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] onSCODisconnected"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 520
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native rejectConnectionNative()V
.end method

.method private declared-synchronized releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] releaseWakeLock"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMsg(ILjava/lang/Object;)V
    .locals 3
    .parameter "msgID"
    .parameter "obj"

    .prologue
    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] sendMsg : msg_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_0

    .line 442
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 445
    return-void
.end method

.method private native sendURCNative(Ljava/lang/String;)Z
.end method

.method private native setEventNative(I)V
.end method

.method private native setUpListeningSocketsNative()Z
.end method

.method private native tearDownListeningSocketsNative()V
.end method

.method private native waitForAsyncConnectNative(Ljava/lang/String;II)I
.end method

.method private native waitForHandsfreeIndicationNative()Z
.end method


# virtual methods
.method public declared-synchronized accept()Z
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] accept"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acceptConnection()I
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] acceptConnection"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->acceptConnectionNative()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] close"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->closeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 405
    monitor-enter p0

    :try_start_0
    const-string v1, "[API] connect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->connectNative()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 408
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] disconnect"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->disconnectNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAtParser()Landroid/bluetooth/AtParser;
    .locals 1

    .prologue
    .line 359
    const-string v0, "[API] getAtParser"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    return-object v0
.end method

.method public getConnectTimestamp()J
    .locals 2

    .prologue
    .line 382
    const-string v0, "[API] getConnectTimestamp"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 383
    iget-wide v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectTimestamp:J

    return-wide v0
.end method

.method public getDirection()I
    .locals 2

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getDirection : dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 365
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 354
    const-string v0, "[API] getRemoteDevice"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected handleInput(Ljava/lang/String;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] handleInput("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 310
    :cond_0
    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 311
    const/4 v1, 0x0

    sput v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    .line 317
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    invoke-virtual {v1, p1}, Landroid/bluetooth/AtParser;->process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 318
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendURC(Ljava/lang/String;)Z

    .line 319
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 322
    :cond_1
    return-void

    .line 313
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    return v0
.end method

.method public declared-synchronized isSCOConnected()Z
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rejectConnection()V
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] rejectConnection"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->rejectConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendURC(Ljava/lang/String;)Z
    .locals 2
    .parameter "urc"

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] sendURC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 376
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->sendURCNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 378
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 223
    monitor-enter p0

    :try_start_0
    const-string v1, "[API] start"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 225
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 226
    new-instance v1, Landroid/bluetooth/BluetoothAudioGateway$1;

    const-string v2, "BT Audio Gateway"

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothAudioGateway$1;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 241
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->setUpListeningSocketsNative()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string v1, "Could not set up listening socket, exiting"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->logErr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit p0

    return v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 247
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventThread()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 348
    const-string v0, "[API] startEventThread"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 349
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 350
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->setEventNative(I)V

    .line 351
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    const-string v1, "[API] stop"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 257
    const-string/jumbo v1, "mConnectThead == null"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 258
    monitor-exit p0

    .line 277
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string/jumbo v1, "stopping Connect Thread"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 262
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->setEventNative(I)V

    .line 263
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 264
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    const-string/jumbo v1, "waiting for thread to terminate"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 267
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :goto_1
    monitor-enter p0

    .line 272
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 275
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->tearDownListeningSocketsNative()V

    .line 276
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 264
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted waiting for Connect Thread to join"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->logWarn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized waitForAsyncConnect(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 4
    .parameter "device"
    .parameter "timeout_ms"
    .parameter "type"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] waitForAsyncConnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v0, p2, p3}, Landroid/bluetooth/BluetoothAudioGateway;->waitForAsyncConnectNative(Ljava/lang/String;II)I

    move-result v1

    .line 337
    .local v1, ret:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForAsyncConnectNative returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 338
    if-lez v1, :cond_0

    .line 341
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 342
    const/4 v2, 0x2

    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_0
    monitor-exit p0

    return v1

    .line 334
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #ret:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
