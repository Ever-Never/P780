.class public Landroid/net/NetworkIdentity;
.super Ljava/lang/Object;
.source "NetworkIdentity.java"


# static fields
.field public static final COMBINE_SUBTYPE_ENABLED:Z = true

.field public static final SUBTYPE_COMBINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetworkIdentity"


# instance fields
.field final mNetworkId:Ljava/lang/String;

.field final mRoaming:Z

.field final mSubType:I

.field final mSubscriberId:Ljava/lang/String;

.field final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "type"
    .parameter "subType"
    .parameter "subscriberId"
    .parameter "networkId"
    .parameter "roaming"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/net/NetworkIdentity;->mType:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    .line 68
    iput-object p3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    .line 70
    iput-boolean p5, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    .line 71
    return-void
.end method

.method public static buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    .line 152
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 153
    .local v1, type:I
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 158
    .local v2, subType:I
    const/4 v3, 0x0

    .line 159
    .local v3, subscriberId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 160
    .local v4, networkId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 162
    .local v5, roaming:Z
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 165
    .local v7, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    .line 166
    iget-object v0, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    iget-object v3, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 186
    .end local v7           #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    new-instance v0, Landroid/net/NetworkIdentity;

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 169
    .restart local v7       #telephony:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 172
    .end local v7           #telephony:Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 173
    iget-object v0, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 174
    iget-object v4, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_3
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 178
    .local v8, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 181
    .local v6, info:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;J)Landroid/net/NetworkIdentity;
    .locals 12
    .parameter "context"
    .parameter "state"
    .parameter "simId"

    .prologue
    .line 195
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 196
    .local v1, type:I
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 201
    .local v2, subType:I
    const-string v3, ""

    .line 202
    .local v3, subscriberId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 203
    .local v4, networkId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 205
    .local v5, roaming:Z
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 208
    .local v9, telephony:Landroid/telephony/TelephonyManager;
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 209
    .local v6, iTel:Lcom/android/internal/telephony/ITelephony;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    .line 210
    iget-object v0, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object v3, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 242
    .end local v6           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v9           #telephony:Landroid/telephony/TelephonyManager;
    :goto_0
    new-instance v0, Landroid/net/NetworkIdentity;

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 214
    .restart local v6       #iTel:Lcom/android/internal/telephony/ITelephony;
    .restart local v9       #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {p0, p2, p3}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v8

    .line 216
    .local v8, slotId:I
    if-nez v6, :cond_1

    .line 217
    const-string v0, "NetworkIdentity"

    const-string v11, "ITelephony is not ready"

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_1
    :try_start_0
    invoke-interface {v6, v8}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 226
    .end local v6           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v8           #slotId:I
    .end local v9           #telephony:Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    .line 227
    iget-object v0, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 228
    iget-object v4, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_3
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 232
    .local v10, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 235
    .local v7, info:Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    :goto_1
    goto :goto_0

    .line 235
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 239
    .end local v7           #info:Landroid/net/wifi/WifiInfo;
    .end local v10           #wifi:Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v3, 0x0

    .line 240
    const/4 v5, 0x0

    goto :goto_0

    .line 221
    .restart local v6       #iTel:Lcom/android/internal/telephony/ITelephony;
    .restart local v8       #slotId:I
    .restart local v9       #telephony:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;Ljava/lang/String;)Landroid/net/NetworkIdentity;
    .locals 9
    .parameter "context"
    .parameter "state"
    .parameter "subsId"

    .prologue
    .line 246
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 247
    .local v1, type:I
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 252
    .local v2, subType:I
    const-string v3, ""

    .line 253
    .local v3, subscriberId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 254
    .local v4, networkId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 256
    .local v5, roaming:Z
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 259
    .local v7, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    .line 260
    iget-object v0, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 261
    iget-object v3, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 281
    .end local v7           #telephony:Landroid/telephony/TelephonyManager;
    :goto_0
    new-instance v0, Landroid/net/NetworkIdentity;

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 263
    .restart local v7       #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    move-object v3, p2

    goto :goto_0

    .line 265
    .end local v7           #telephony:Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 266
    iget-object v0, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 267
    iget-object v4, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_2
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 271
    .local v8, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 274
    .local v6, info:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    :goto_1
    goto :goto_0

    .line 274
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 278
    .end local v6           #info:Landroid/net/wifi/WifiInfo;
    .end local v8           #wifi:Landroid/net/wifi/WifiManager;
    :cond_4
    const/4 v3, 0x0

    .line 279
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "subscriberId"

    .prologue
    .line 137
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    .end local p0
    :goto_0
    return-object p0

    .line 139
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 143
    :cond_1
    const-string/jumbo p0, "null"

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 80
    instance-of v2, p1, Landroid/net/NetworkIdentity;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 81
    check-cast v0, Landroid/net/NetworkIdentity;

    .line 82
    .local v0, ident:Landroid/net/NetworkIdentity;
    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mSubType:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 86
    .end local v0           #ident:Landroid/net/NetworkIdentity;
    :cond_0
    return v1
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoaming()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "COMBINED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 102
    const-string v1, ", subscriberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 105
    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-eqz v1, :cond_2

    .line 108
    const-string v1, ", ROAMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
