.class public Landroid/net/CaptivePortalTracker;
.super Lcom/android/internal/util/StateMachine;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;,
        Landroid/net/CaptivePortalTracker$ActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$NoActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$DefaultState;
    }
.end annotation


# static fields
.field private static final ACCEPT_CHARSET_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "utf-8, utf-16, *;q=0.7"

.field private static final ACCEPT_ENCODING_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "gzip,deflate"

.field private static final ACCEPT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

.field private static final ACCEPT_LANGUAGE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "zh-CN, en-US"

.field private static final CMD_CONNECTIVITY_CHANGE:I = 0x1

.field private static final CMD_DELAYED_CAPTIVE_CHECK:I = 0x2

.field private static final CMD_DETECT_PORTAL:I = 0x0

.field private static final CONNECTION_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "keep-alive"

.field private static final DBG:Z = true

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static final DELAYED_CHECK_INTERVAL_MS:I = 0x1f4

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final HTTP_HEADER_NAME_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HTTP_HEADER_NAME_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HTTP_HEADER_NAME_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HTTP_HEADER_NAME_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HTTP_HEADER_NAME_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_HEADER_NAME_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_HEADER_NAME_X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-with"

.field private static final HTTP_HEADER_NAME_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CaptivePortalTracker"

.field private static final USER_AGENT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

.field private static final X_REQUESTED_WITH_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "com.lenovo.browser"

.field private static final X_WAP_PROFILE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"


# instance fields
.field private mActiveNetworkState:Lcom/android/internal/util/State;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

.field private mDelayedCheckToken:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsCaptiveOverMobile:Z

.field private mIsCaptivePortalCheckEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoActiveNetworkState:Lcom/android/internal/util/State;

.field private mNotificationShown:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 5
    .parameter "context"
    .parameter "cs"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 131
    const-string v1, "CaptivePortalTracker"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 102
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    .line 103
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 119
    iput v3, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    .line 121
    new-instance v1, Landroid/net/CaptivePortalTracker$DefaultState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 122
    new-instance v1, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    .line 123
    new-instance v1, Landroid/net/CaptivePortalTracker$ActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    .line 124
    new-instance v1, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    .line 127
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptiveOverMobile:Z

    .line 166
    new-instance v1, Landroid/net/CaptivePortalTracker$1;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$1;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 937
    iput-object v4, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 133
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    .line 135
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_server"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "clients3.google.com"

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 152
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_detection_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 155
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;)V

    .line 156
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 157
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 158
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 159
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptiveOverMobile:Z

    .line 164
    return-void

    :cond_1
    move v1, v3

    .line 152
    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$1704(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$1800(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/net/CaptivePortalTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->autoAuthorize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->showCaptivePortalDialog()V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/CaptivePortalTracker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/CaptivePortalTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$802(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$900(Landroid/net/CaptivePortalTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->setNotificationVisible(Z)V

    return-void
.end method

.method private addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 2
    .parameter "getMethod"

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 521
    :cond_0
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "Accept"

    const-string/jumbo v1, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string/jumbo v0, "x-wap-profile"

    const-string v1, "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v0, "User-Agent"

    const-string v1, "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v0, "Accept-Language"

    const-string/jumbo v1, "zh-CN, en-US"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "Accept-Charset"

    const-string/jumbo v1, "utf-8, utf-16, *;q=0.7"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "X-Requested-with"

    const-string v1, "com.lenovo.browser"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private autoAuthorize()Z
    .locals 22

    .prologue
    .line 723
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 725
    .local v6, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v5, 0x0

    .line 727
    .local v5, getMethod:Lorg/apache/http/client/methods/HttpGet;
    const/4 v10, 0x0

    .line 729
    .local v10, response:Lorg/apache/http/HttpResponse;
    const/4 v14, 0x0

    .line 731
    .local v14, statusCode:I
    const/4 v11, 0x0

    .line 733
    .local v11, responseString:Ljava/lang/String;
    const/16 v16, 0x0

    .line 735
    .local v16, uri:Ljava/lang/String;
    const/4 v15, 0x1

    .line 737
    .local v15, step:I
    const/4 v9, 0x0

    .line 739
    .local v9, redirect_count:I
    const-string v19, "CaptivePortalTracker"

    const-string v20, "[ Auto Authorize ] :: autoAuthorize Begin"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    if-nez v6, :cond_0

    .line 743
    const-string v19, "CaptivePortalTracker"

    const-string v20, "[ Auto Authorize ] :: autoAuthorize, Null HTTP Client"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/16 v19, 0x0

    .line 933
    :goto_0
    return v19

    .line 748
    :cond_0
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    .line 749
    .local v8, params:Lorg/apache/http/params/HttpParams;
    if-eqz v8, :cond_1

    .line 751
    const-string v19, "http.protocol.handle-redirects"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 754
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 756
    .local v13, server:Ljava/net/InetAddress;
    if-nez v13, :cond_2

    .line 757
    const/16 v19, 0x0

    goto :goto_0

    .line 759
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/generate_204"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 764
    :cond_3
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    .end local v5           #getMethod:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 766
    .restart local v5       #getMethod:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/net/CaptivePortalTracker;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 770
    :try_start_0
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 779
    :goto_1
    if-nez v10, :cond_4

    .line 781
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Null HTTP Response"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/16 v19, 0x0

    goto :goto_0

    .line 771
    :catch_0
    move-exception v3

    .line 773
    .local v3, e1:Lorg/apache/http/client/ClientProtocolException;
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 774
    .end local v3           #e1:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v4

    .line 776
    .local v4, e2:Ljava/io/IOException;
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", execute() Fail, IOException occured"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 785
    .end local v4           #e2:Ljava/io/IOException;
    :cond_4
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 787
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", responseCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v19, 0x12d

    move/from16 v0, v19

    if-eq v14, v0, :cond_5

    const/16 v19, 0x12e

    move/from16 v0, v19

    if-eq v14, v0, :cond_5

    .line 791
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/generate_204"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 793
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Unexpected HTTP ResponseCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 799
    :cond_5
    const-string/jumbo v19, "location"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 801
    .local v7, locationHeader:Lorg/apache/http/Header;
    if-nez v7, :cond_6

    .line 803
    const-string v19, "CaptivePortalTracker"

    const-string v20, "[ Auto Authorize ] :: autoAuthorize, Step 1, Location Header Not Found"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 807
    :cond_6
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 809
    add-int/lit8 v9, v9, 0x1

    .line 824
    .end local v7           #locationHeader:Lorg/apache/http/Header;
    :cond_7
    const/16 v19, 0x12d

    move/from16 v0, v19

    if-eq v14, v0, :cond_8

    const/16 v19, 0x12e

    move/from16 v0, v19

    if-ne v14, v0, :cond_9

    :cond_8
    const/16 v19, 0x3

    move/from16 v0, v19

    if-le v9, v0, :cond_3

    .line 826
    :cond_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-le v9, v0, :cond_b

    const/16 v19, 0x12d

    move/from16 v0, v19

    if-eq v14, v0, :cond_a

    const/16 v19, 0x12e

    move/from16 v0, v19

    if-ne v14, v0, :cond_b

    .line 828
    :cond_a
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Too Many Redirect"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 832
    :cond_b
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step 1 Complete, Redirect to: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    add-int/lit8 v15, v15, 0x1

    .line 837
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    .end local v5           #getMethod:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 839
    .restart local v5       #getMethod:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/net/CaptivePortalTracker;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 843
    :try_start_1
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    .line 852
    :goto_2
    if-nez v10, :cond_c

    .line 854
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Null HTTP Response"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 844
    :catch_2
    move-exception v3

    .line 846
    .restart local v3       #e1:Lorg/apache/http/client/ClientProtocolException;
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 847
    .end local v3           #e1:Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v4

    .line 849
    .restart local v4       #e2:Ljava/io/IOException;
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", execute() Fail, IOException occured"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 858
    .end local v4           #e2:Ljava/io/IOException;
    :cond_c
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 860
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", responseCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/16 v19, 0x191

    move/from16 v0, v19

    if-eq v14, v0, :cond_d

    .line 864
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is NOT requested, ResponseCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 868
    :cond_d
    const-string v19, "CaptivePortalTracker"

    const-string v20, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is requested"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    add-int/lit8 v15, v15, 0x1

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/CaptivePortalTracker;->getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 875
    .local v12, result:[Ljava/lang/String;
    if-nez v12, :cond_e

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "wifi"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 879
    .local v18, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v18, :cond_e

    .line 881
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    .line 883
    .local v17, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v17, :cond_e

    .line 885
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/CaptivePortalTracker;->getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 890
    .end local v17           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v18           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_e
    if-nez v12, :cond_f

    .line 892
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Username & Password Not Found, Authorize Fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 896
    :cond_f
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Username: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Password: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v2, Lorg/apache/http/auth/NTCredentials;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    aget-object v20, v12, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v12, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;)V

    .line 900
    .local v2, creds:Lorg/apache/http/auth/NTCredentials;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v19

    sget-object v20, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 904
    :try_start_2
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v10

    .line 913
    :goto_3
    if-nez v10, :cond_10

    .line 915
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Null HTTP Response"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 905
    :catch_4
    move-exception v3

    .line 907
    .restart local v3       #e1:Lorg/apache/http/client/ClientProtocolException;
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 908
    .end local v3           #e1:Lorg/apache/http/client/ClientProtocolException;
    :catch_5
    move-exception v4

    .line 910
    .restart local v4       #e2:Ljava/io/IOException;
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", execute() Fail, IOException occured"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 919
    .end local v4           #e2:Ljava/io/IOException;
    :cond_10
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 921
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", responseCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/16 v19, 0x191

    move/from16 v0, v19

    if-ne v14, v0, :cond_11

    .line 925
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is FAIL, ResponseCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 929
    :cond_11
    const-string v19, "CaptivePortalTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is SUCCESS, ResponseCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v19, "CaptivePortalTracker"

    const-string v20, "[ Auto Authorize ] :: autoAuthorize End"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method private getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;
    .locals 20
    .parameter "ssid"

    .prologue
    .line 535
    const/16 v16, 0x0

    .local v16, userName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 537
    .local v9, passWord:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 538
    const/4 v14, 0x0

    .line 708
    :cond_0
    :goto_0
    return-object v14

    .line 540
    :cond_1
    const-string v17, "CaptivePortalTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v12, 0x0

    .line 546
    .local v12, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v17, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 550
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Supplicant file NOT Exist"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    const/4 v14, 0x0

    .line 633
    if-eqz v12, :cond_0

    .line 637
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v4

    .line 640
    .local v4, e2:Ljava/io/IOException;
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    .end local v5           #file:Ljava/io/File;
    :goto_1
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    .end local v4           #e2:Ljava/io/IOException;
    .restart local v5       #file:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 556
    .end local v12           #reader:Ljava/io/BufferedReader;
    .local v13, reader:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 560
    .local v8, networkInfoMask:Z
    const/4 v11, 0x0

    .local v11, preSharedKey:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, identity:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, password:Ljava/lang/String;
    const/4 v2, 0x0

    .line 562
    .local v2, SSID:Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 564
    const/4 v15, 0x0

    .line 566
    .local v15, start:I
    const-string/jumbo v17, "network={"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 568
    const/4 v8, 0x1

    .line 570
    const/4 v2, 0x0

    .line 571
    const/4 v6, 0x0

    .line 572
    const/4 v10, 0x0

    .line 573
    const/4 v11, 0x0

    .line 599
    :cond_4
    if-eqz v8, :cond_3

    .line 601
    const-string/jumbo v17, "ssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_a

    .line 603
    const-string/jumbo v17, "ssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v18, "ssid="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 605
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 575
    :cond_5
    const-string/jumbo v17, "}"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 577
    const/4 v8, 0x0

    .line 579
    const-string v17, "CaptivePortalTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Read AP Info From Supplicant, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", identity: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", password: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", psk: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result v17

    if-eqz v17, :cond_4

    .line 584
    if-eqz v6, :cond_9

    if-eqz v10, :cond_9

    .line 586
    move-object/from16 v16, v6

    .line 587
    move-object v9, v10

    .line 633
    .end local v15           #start:I
    :cond_6
    :goto_3
    if-eqz v13, :cond_7

    .line 637
    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 698
    :cond_7
    :goto_4
    if-eqz v16, :cond_8

    if-nez v9, :cond_e

    .line 700
    :cond_8
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Get UserName & Password Fail"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 589
    .restart local v15       #start:I
    :cond_9
    if-eqz v11, :cond_6

    .line 591
    :try_start_5
    const-string v16, ""

    .line 592
    move-object v9, v11

    goto :goto_3

    .line 607
    :cond_a
    const-string v17, "identity="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_b

    .line 609
    const-string v17, "identity="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "identity="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 611
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 613
    :cond_b
    const-string/jumbo v17, "password="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_c

    .line 615
    const-string/jumbo v17, "password="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v18, "password="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 617
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 619
    :cond_c
    const-string/jumbo v17, "psk="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_3

    .line 621
    const-string/jumbo v17, "psk="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v18, "psk="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 623
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v11

    goto/16 :goto_2

    .line 627
    .end local v2           #SSID:Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #identity:Ljava/lang/String;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #networkInfoMask:Z
    .end local v10           #password:Ljava/lang/String;
    .end local v11           #preSharedKey:Ljava/lang/String;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .end local v15           #start:I
    .restart local v12       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 629
    .local v3, e1:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 630
    const/4 v14, 0x0

    .line 633
    if-eqz v12, :cond_0

    .line 637
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 638
    :catch_2
    move-exception v4

    .line 640
    .restart local v4       #e2:Ljava/io/IOException;
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    goto/16 :goto_1

    .line 633
    .end local v3           #e1:Ljava/io/IOException;
    .end local v4           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v12, :cond_d

    .line 637
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 633
    :cond_d
    :goto_7
    throw v17

    .line 704
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v2       #SSID:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #identity:Ljava/lang/String;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #networkInfoMask:Z
    .restart local v10       #password:Ljava/lang/String;
    .restart local v11       #preSharedKey:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :cond_e
    const-string v17, "CaptivePortalTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", userName: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", passWord: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v16, v14, v17

    const/16 v17, 0x1

    aput-object v9, v14, v17

    .line 708
    .local v14, result:[Ljava/lang/String;
    goto/16 :goto_0

    .line 638
    .end local v2           #SSID:Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #identity:Ljava/lang/String;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #networkInfoMask:Z
    .end local v10           #password:Ljava/lang/String;
    .end local v11           #preSharedKey:Ljava/lang/String;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .end local v14           #result:[Ljava/lang/String;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    .line 640
    .restart local v4       #e2:Ljava/io/IOException;
    const-string v18, "CaptivePortalTracker"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 638
    .end local v4           #e2:Ljava/io/IOException;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v2       #SSID:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #identity:Ljava/lang/String;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #networkInfoMask:Z
    .restart local v10       #password:Ljava/lang/String;
    .restart local v11       #preSharedKey:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .line 640
    .restart local v4       #e2:Ljava/io/IOException;
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 633
    .end local v4           #e2:Ljava/io/IOException;
    .end local v7           #line:Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v12, v13

    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 627
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v12, v13

    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "hostName"

    .prologue
    const/4 v2, 0x0

    .line 713
    const/4 v1, 0x0

    .local v1, userName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 715
    .local v0, passWord:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 718
    :cond_0
    return-object v2
.end method

.method private isActiveNetwork(Landroid/net/NetworkInfo;)Z
    .locals 5
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 374
    :try_start_0
    iget-object v3, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 375
    .local v0, active:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 378
    iget-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptiveOverMobile:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 386
    .end local v0           #active:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 381
    .restart local v0       #active:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 383
    .end local v0           #active:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 384
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isCaptivePortal(Ljava/net/InetAddress;)Z
    .locals 7
    .parameter "server"

    .prologue
    const/4 v5, 0x0

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    iget-boolean v4, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    if-nez v4, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v5

    .line 396
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/generate_204"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 399
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 401
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 402
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 403
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 404
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 405
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 407
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v6, 0xcc

    if-eq v4, v6, :cond_3

    const/4 v4, 0x1

    .line 412
    :goto_1
    if-eqz v3, :cond_2

    .line 413
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v5, v4

    .line 407
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 408
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Probably not a portal: exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    if-eqz v3, :cond_0

    .line 413
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 412
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 413
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 412
    :cond_4
    throw v4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 487
    const-string v0, "CaptivePortalTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 491
    const-string v0, "CaptivePortalTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .parameter "hostname"

    .prologue
    const/4 v6, 0x0

    .line 421
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 426
    .local v4, inetAddress:[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 427
    .local v0, a:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 429
    .end local v0           #a:Ljava/net/InetAddress;
    .end local v1           #arr$:[Ljava/net/InetAddress;
    .end local v3           #i$:I
    .end local v4           #inetAddress:[Ljava/net/InetAddress;
    .end local v5           #len$:I
    :goto_1
    return-object v0

    .line 422
    :catch_0
    move-exception v2

    .local v2, e:Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 423
    goto :goto_1

    .line 426
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v0       #a:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/net/InetAddress;
    .restart local v3       #i$:I
    .restart local v4       #inetAddress:[Ljava/net/InetAddress;
    .restart local v5       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 429
    goto :goto_1
.end method

.method public static makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;
    .locals 1
    .parameter "context"
    .parameter "cs"

    .prologue
    .line 191
    new-instance v0, Landroid/net/CaptivePortalTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/CaptivePortalTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 192
    .local v0, captivePortal:Landroid/net/CaptivePortalTracker;
    invoke-virtual {v0}, Landroid/net/CaptivePortalTracker;->start()V

    .line 193
    return-object v0
.end method

.method private notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    const-string/jumbo v1, "notifyPortalCheckComplete on null"

    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 366
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setNotificationVisible(Z)V
    .locals 13
    .parameter "visible"

    .prologue
    const v12, #android:string@network_available_sign_in_detailed#t

    const v9, #android:string@network_available_sign_in#t

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 434
    if-nez p1, :cond_0

    iget-boolean v7, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    if-nez v7, :cond_0

    .line 484
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 439
    .local v5, r:Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 442
    .local v4, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 446
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 461
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, title:Ljava/lang/CharSequence;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v12, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, details:Ljava/lang/CharSequence;
    const v1, #android:drawable@stat_notify_rssi_in_range#t

    .line 468
    .local v1, icon:I
    :goto_1
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 469
    .local v3, notification:Landroid/app/Notification;
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 470
    iput v1, v3, Landroid/app/Notification;->icon:I

    .line 471
    const/16 v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 472
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 473
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x1040

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 475
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 476
    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 477
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v8, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v7, v6, v0, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 479
    const-string v7, "CaptivePortal.Notification"

    invoke-virtual {v4, v7, v11, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 483
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #icon:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v6           #title:Ljava/lang/CharSequence;
    :goto_2
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    goto :goto_0

    .line 448
    :pswitch_0
    const v7, #android:string@wifi_available_sign_in#t

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .restart local v6       #title:Ljava/lang/CharSequence;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v12, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .restart local v0       #details:Ljava/lang/CharSequence;
    const v1, #android:drawable@stat_notify_wifi_in_range#t

    .line 452
    .restart local v1       #icon:I
    goto :goto_1

    .line 454
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #icon:I
    .end local v6           #title:Ljava/lang/CharSequence;
    :pswitch_1
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 457
    .restart local v6       #title:Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 458
    .restart local v0       #details:Ljava/lang/CharSequence;
    const v1, #android:drawable@stat_notify_rssi_in_range#t

    .line 459
    .restart local v1       #icon:I
    goto :goto_1

    .line 481
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #icon:I
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_1
    const-string v7, "CaptivePortal.Notification"

    invoke-virtual {v4, v7, v11}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_2

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showCaptivePortalDialog()V
    .locals 3

    .prologue
    .line 941
    const-string v0, "CaptivePortalTracker"

    const-string/jumbo v1, "showCaptivePortalDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 949
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x30b0024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x30b0025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x30b0026

    new-instance v2, Landroid/net/CaptivePortalTracker$2;

    invoke-direct {v2, p0}, Landroid/net/CaptivePortalTracker$2;-><init>(Landroid/net/CaptivePortalTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 989
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 992
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 994
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 998
    :cond_1
    return-void
.end method


# virtual methods
.method public detectCaptivePortal(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/net/CaptivePortalTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/CaptivePortalTracker;->sendMessage(Landroid/os/Message;)V

    .line 198
    return-void
.end method
