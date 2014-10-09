.class Lcom/mediatek/op/sms/WapPushFwkExt;
.super Ljava/lang/Object;
.source "WapPushFwkExt.java"

# interfaces
.implements Lcom/mediatek/common/sms/IWapPushFwkExt;


# static fields
.field private static final DELAY_NOTI_TIME:I = 0x3a98

.field private static final EVENT_DELAY_NOTIFY_AUTO_PUSH:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mPhoneId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "WapPushFwkExt"

    sput-object v0, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "phoneId"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    .line 285
    new-instance v1, Lcom/mediatek/op/sms/WapPushFwkExt$1;

    invoke-direct {v1, p0}, Lcom/mediatek/op/sms/WapPushFwkExt$1;-><init>(Lcom/mediatek/op/sms/WapPushFwkExt;)V

    iput-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mHandler:Landroid/os/Handler;

    .line 299
    new-instance v1, Lcom/mediatek/op/sms/WapPushFwkExt$2;

    invoke-direct {v1, p0}, Lcom/mediatek/op/sms/WapPushFwkExt$2;-><init>(Lcom/mediatek/op/sms/WapPushFwkExt;)V

    iput-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    if-nez p1, :cond_0

    .line 76
    sget-object v1, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v2, "FAIL! context is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "com.mediatek.cu_wap_push_permission_cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    sget-object v1, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v2, "call WapPushFwkExt constructor"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/op/sms/WapPushFwkExt;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isAutoPushSettingTouched(I)Z
    .locals 9
    .parameter "slotId"

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 261
    sget-object v5, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call checkAutoPushSetting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, hasSimInterted:Z
    const/4 v0, 0x0

    .line 264
    .local v0, hasSettingTouched:Z
    const/4 v2, 0x0

    .line 266
    .local v2, info:Landroid/provider/Telephony$SIMInfo;
    iget-object v5, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 267
    sget-object v3, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v4, "FAIL! mContext is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no valid Context object in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 271
    :cond_0
    iget-object v5, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 272
    if-nez v2, :cond_3

    .line 273
    sget-object v5, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v6, "info is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .line 275
    :cond_3
    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-eq v5, v8, :cond_5

    move v1, v3

    .line 276
    :goto_1
    if-ne v1, v3, :cond_4

    .line 277
    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    if-eq v5, v8, :cond_6

    move v0, v3

    .line 279
    :cond_4
    :goto_2
    sget-object v5, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Auto-Push status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v1, v4

    .line 275
    goto :goto_1

    :cond_6
    move v0, v4

    .line 277
    goto :goto_2
.end method


# virtual methods
.method public allowDispatchWapPush()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const/4 v1, -0x1

    .line 100
    .local v1, status:I
    iget v3, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    if-eq v3, v2, :cond_1

    .line 101
    sget-object v3, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAIL! invalid slot id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 106
    if-nez v0, :cond_2

    .line 107
    sget-object v3, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v4, "FAIL! SIMInfo is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    sget-object v3, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Auto-Push status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/op/sms/WapPushFwkExt;->printWapPushSettingInfo()Ljava/lang/String;

    .line 113
    iget v3, v0, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected cancelAutoPushNotification()V
    .locals 3

    .prologue
    .line 222
    sget-object v1, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v2, "call cancelAutoPushNotification"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, notiMgr:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #notiMgr:Landroid/app/NotificationManager;
    check-cast v0, Landroid/app/NotificationManager;

    .line 230
    .restart local v0       #notiMgr:Landroid/app/NotificationManager;
    :cond_0
    if-nez v0, :cond_1

    .line 231
    sget-object v1, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v2, "FAIL! can not obtain Notification Service"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_1
    const/16 v1, 0x1387

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public isMmsWapPush([B)Z
    .locals 11
    .parameter "pdu"

    .prologue
    const/4 v7, 0x0

    .line 120
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v9, "call isMmsWapPush"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p1, :cond_0

    array-length v8, p1

    if-nez v8, :cond_2

    .line 122
    :cond_0
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v9, "FAIL! no data in pdu"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    :goto_0
    return v7

    .line 126
    :cond_2
    const/4 v2, 0x1

    .line 127
    .local v2, index:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-byte v8, p1, v2

    and-int/lit16 v6, v8, 0xff

    .line 128
    .local v6, pduType:I
    const/4 v8, 0x6

    if-eq v6, v8, :cond_3

    const/4 v8, 0x7

    if-eq v6, v8, :cond_3

    .line 130
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAIL! invalid pdu type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v5, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 135
    .local v5, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    if-nez v5, :cond_4

    .line 136
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v9, "FAIL! can not create WspTypeDecoder"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 141
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v9, "FAIL! header length error"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v1, v8

    .line 145
    .local v1, headerLength:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v8

    add-int/lit8 v2, v8, 0x2

    .line 147
    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 148
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v9, "FAIL! header content type error"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, mimeType:Ljava/lang/String;
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mimeType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz v4, :cond_7

    .line 156
    const-string v7, "application/vnd.wap.mms-message"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_0

    .line 159
    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v0, v8

    .line 160
    .local v0, binaryContentType:I
    sget-object v8, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "binaryContentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_1

    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method protected notifyForAutoPushSetting()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 185
    sget-object v11, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v12, "call notifyForAutoPushSetting"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v6, 0x0

    .line 188
    .local v6, notiMgr:Landroid/app/NotificationManager;
    iget-object v11, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_0

    .line 189
    iget-object v11, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #notiMgr:Landroid/app/NotificationManager;
    check-cast v6, Landroid/app/NotificationManager;

    .line 193
    .restart local v6       #notiMgr:Landroid/app/NotificationManager;
    :cond_0
    if-nez v6, :cond_1

    .line 194
    sget-object v11, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v12, "FAIL! can not obtain Notification Service"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 198
    :cond_1
    sget-object v11, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v12, "obtain reources for Auto-Push notification"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 200
    .local v7, r:Landroid/content/res/Resources;
    const v3, #android:drawable@stat_sys_warning#t

    .line 201
    .local v3, iconId:I
    const v11, 0x20500d0

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, tickerText:Ljava/lang/String;
    const v11, 0x20500d1

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, contentTitle:Ljava/lang/String;
    const v11, 0x20500d2

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, contentText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 206
    .local v9, when:J
    sget-object v11, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v12, "initial PendingIntent for Auto-Push notification"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.settings.GEMINI_MANAGEMENT"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v5, notiIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    invoke-static {v11, v13, v5, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 210
    .local v0, contentIntent:Landroid/app/PendingIntent;
    sget-object v11, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v12, "initial Auto-Push notification"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v3, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 212
    .local v4, noti:Landroid/app/Notification;
    const/4 v11, 0x1

    iput v11, v4, Landroid/app/Notification;->defaults:I

    .line 213
    iget-object v11, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 214
    const/16 v11, 0x1387

    invoke-virtual {v6, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 215
    sget-object v11, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v12, "notify Auto-Push notification"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected printWapPushSettingInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 241
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "unset/enabled/disabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected shouldNotifyUser()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
