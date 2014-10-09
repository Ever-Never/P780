.class public final Lcom/android/server/LightsService$Light;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Light"
.end annotation


# instance fields
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 68
    iput p2, p0, Lcom/android/server/LightsService$Light;->mId:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LightsService$Light;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->stopFlashing()V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 7
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "brightnessMode"

    .prologue
    .line 154
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 155
    :cond_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLight #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService$Light;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": color=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 158
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 159
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 160
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    .line 161
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$100(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$200(IIIIIII)V

    .line 163
    :cond_1
    return-void
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 150
    monitor-exit p0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 122
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LightsService$Light;->pulse(II)V

    .line 123
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .parameter "color"
    .parameter "onMS"

    .prologue
    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 129
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    :cond_0
    monitor-exit p0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/LightsService$Light;->setBrightnessBaidu(II)V

    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    and-int/lit16 v1, p1, 0xff

    .line 78
    .local v1, color:I
    const/high16 v0, -0x100

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTorchBrightness(I)V
    .locals 6
    .parameter "brightness"

    .prologue
    const/4 v2, 0x0

    .line 135
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTorchBrightness(LIGHT_ID_TORCH)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 137
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 139
    return-void
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOffBLueLight()V
    .locals 6

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 116
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOffGreenLight()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 103
    return-void
.end method

.method public turnOnBlueLight()V
    .locals 6

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOnGreenLight(I)V
    .locals 6
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 98
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 99
    return-void
.end method

.method protected setBrightnessBaidu(II)V
    .locals 5
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_light_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .local v0, value:Z
    :goto_0
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightnessBaidu, button light off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", button brightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .end local v0           #value:Z
    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    .restart local v0       #value:Z
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto :goto_1

    .end local v0           #value:Z
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto :goto_1
.end method
