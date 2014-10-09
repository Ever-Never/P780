.class public Lcom/mediatek/audioprofile/AudioProfileState$Builder;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlarmVolume:I

.field public mBootAudioEnabled:Z

.field private mDtmfToneEnabled:Z

.field public mHandFreeEnabled:Z

.field private mHapticFeedbackEnabled:Z

.field private mLockScreenSoundEnabled:Z

.field private mNoficationUseRingVolume:Z

.field private mNotificationStream:Landroid/net/Uri;

.field private mNotificationVolume:I

.field public mPocketModeEnabled:Z

.field private final mProfileKey:Ljava/lang/String;

.field private mRingerStream:Landroid/net/Uri;

.field public mRingerStream_2:Landroid/net/Uri;

.field private mRingerVolume:I

.field public mRingtoneWeakenEnabled:Z

.field public mSmsNotiStream:Landroid/net/Uri;

.field public mSmsNotiStream_2:Landroid/net/Uri;

.field private mSoundEffectEnbled:Z

.field private mVibrationEnabled:Z

.field private mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "profileKey"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 104
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 105
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 106
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 107
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 108
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 109
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 110
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 111
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 112
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 113
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    .line 138
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    .line 139
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;Lcom/mediatek/audioprofile/AudioProfileState$1;)V

    return-object v0
.end method

.method public dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 216
    return-object p0
.end method

.method public hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 252
    return-object p0
.end method

.method public lenovoEnable(ZZZZ)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "bootAudioEnabled"
    .parameter "pocketModeEnabled"
    .parameter "ringtoneWeakenEnabled"
    .parameter "handFreeEnabled"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mBootAudioEnabled:Z

    .line 170
    iput-boolean p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mPocketModeEnabled:Z

    .line 171
    iput-boolean p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingtoneWeakenEnabled:Z

    .line 172
    iput-boolean p4, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHandFreeEnabled:Z

    .line 173
    return-object p0
.end method

.method public lenovoRingtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "smsNotiUri"
    .parameter "smsNotiUri_2"
    .parameter "voiceCallUri_2"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSmsNotiStream:Landroid/net/Uri;

    .line 162
    iput-object p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSmsNotiStream_2:Landroid/net/Uri;

    .line 163
    iput-object p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream_2:Landroid/net/Uri;

    .line 164
    return-object p0
.end method

.method public lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 240
    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "voiceCallUri"
    .parameter "notificationUri"
    .parameter "videoCallUri"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 154
    iput-object p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 155
    iput-object p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 156
    return-object p0
.end method

.method public soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 228
    return-object p0
.end method

.method public vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 204
    return-object p0
.end method

.method public volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "ringerVolume"
    .parameter "notificationVolume"
    .parameter "alarmVolume"

    .prologue
    .line 189
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 190
    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 191
    iput p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 192
    return-object p0
.end method
