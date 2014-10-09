.class public Lcom/mediatek/audioprofile/AudioProfileState;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileState$1;,
        Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    }
.end annotation


# instance fields
.field public mAlarmVolume:I

.field public mBootAudioEnabled:Z

.field public mDtmfToneEnabled:Z

.field public mHandFreeEnabled:Z

.field public mHapticFeedbackEnabled:Z

.field public mLockScreenSoundEnabled:Z

.field public mNoficationUseRingVolume:Z

.field public mNotificationStream:Landroid/net/Uri;

.field public mNotificationVolume:I

.field public mPocketModeEnabled:Z

.field public mProfileKey:Ljava/lang/String;

.field public mRingerStream:Landroid/net/Uri;

.field public mRingerStream_2:Landroid/net/Uri;

.field public mRingerVolume:I

.field public mRingtoneWeakenEnabled:Z

.field public mSmsNotiStream:Landroid/net/Uri;

.field public mSmsNotiStream_2:Landroid/net/Uri;

.field public mSoundEffectEnbled:Z

.field public mVibrationEnabled:Z

.field public mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private constructor <init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 272
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mProfileKey:Ljava/lang/String;

    .line 274
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 275
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 276
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$400(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 278
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$500(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 279
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$600(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 280
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$700(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 282
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$800(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 283
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$900(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 284
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1000(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 285
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 286
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 287
    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNoficationUseRingVolume:Z

    .line 290
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSmsNotiStream:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream:Landroid/net/Uri;

    .line 291
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSmsNotiStream_2:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream_2:Landroid/net/Uri;

    .line 292
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream_2:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream_2:Landroid/net/Uri;

    .line 294
    iget-boolean v0, p1, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mBootAudioEnabled:Z

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    .line 295
    iget-boolean v0, p1, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mPocketModeEnabled:Z

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    .line 296
    iget-boolean v0, p1, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingtoneWeakenEnabled:Z

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    .line 297
    iget-boolean v0, p1, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHandFreeEnabled:Z

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;Lcom/mediatek/audioprofile/AudioProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "volume_ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    const-string v1, "volume_notification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v1, "volume_alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v1, "vibrate_on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string v1, "dtmf_tone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v1, "sound_effects = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, "lockscreen_sounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v1, "haptic_feedback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, "ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, "notification_sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string v1, "video_call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
