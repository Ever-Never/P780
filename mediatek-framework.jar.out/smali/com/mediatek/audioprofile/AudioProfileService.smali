.class public Lcom/mediatek/audioprofile/AudioProfileService;
.super Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileService$10;,
        Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;,
        Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;,
        Lcom/mediatek/audioprofile/AudioProfileService$Record;
    }
.end annotation


# static fields
.field private static final BUNDLE_DEFAULT_SIZE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_NOTIFICATION_INDEX:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_RINGER_INDEX:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_RINGTONE_TYPE_CONUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_SMS_NOTI_INDEX:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_VIDEOCALL_INDEX:I = 0x0

.field private static final DELAY_TIME_AVOID_CTS_FAIL:J = 0x4e20L

.field private static final IS_SUPPORT_OUTDOOR_EDITABLE:Z = false

.field private static final IS_SUPPORT_SDCARD_SWAP:Z = false

.field private static final MSG_DELAY_SET_VIBRATE_AVOID_CTS_FAIL:I = 0x15

.field private static final MSG_PERSIST_ALARM_VOLUME_TO_DATABASE:I = 0xa

.field private static final MSG_PERSIST_BOOT_AUDIO_TO_DATABASE:I = 0x68

.field protected static final MSG_PERSIST_BOOT_AUDIO_TO_SYSTEM:I = 0x72

.field private static final MSG_PERSIST_DTMF_TONE_TO_DATABASE:I = 0xf

.field private static final MSG_PERSIST_DTMF_TONE_TO_SYSTEM:I = 0x4

.field private static final MSG_PERSIST_HAND_FREE_TO_DATABASE:I = 0x69

.field protected static final MSG_PERSIST_HAND_FREE_TO_SYSTEM:I = 0x73

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_DATABASE:I = 0x12

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_SYSTEM:I = 0x7

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_DATABASE:I = 0x11

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_SYSTEM:I = 0x6

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_DATABASE:I = 0xc

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_SYSTEM:I = 0x2

.field private static final MSG_PERSIST_NOTIFICATION_VOLUME_TO_DATABASE:I = 0x9

.field private static final MSG_PERSIST_POCKET_MODE_TO_DATABASE:I = 0x66

.field protected static final MSG_PERSIST_POCKET_MODE_TO_SYSTEM:I = 0x70

.field private static final MSG_PERSIST_PROFILE_NAME_TO_DATABASE:I = 0x13

.field private static final MSG_PERSIST_RINGER_VOLUME_TO_DATABASE:I = 0x8

.field private static final MSG_PERSIST_RINGTONE_WEAKEN_TO_DATABASE:I = 0x67

.field protected static final MSG_PERSIST_RINGTONE_WEAKEN_TO_SYSTEM:I = 0x71

.field protected static final MSG_PERSIST_SMSTONE_TO_SYSTEM:I = 0x6f

.field protected static final MSG_PERSIST_SMSTONE_TO_SYSTEM_2:I = 0x76

.field private static final MSG_PERSIST_SMS_RINGTONE_TO_DATABASE:I = 0x65

.field private static final MSG_PERSIST_SMS_RINGTONE_TO_DATABASE_2:I = 0x74

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_DATABASE:I = 0x10

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_SYSTEM:I = 0x5

.field private static final MSG_PERSIST_VALUES_TO_SYSTEM_BY_BATCH:I = 0x14

.field private static final MSG_PERSIST_VIBRATION_TO_DATABASE:I = 0xe

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_DATABASE:I = 0xd

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_SYSTEM:I = 0x3

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE:I = 0xb

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE_2:I = 0x75

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM:I = 0x1

.field protected static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM_2:I = 0x77

.field public static final SILENT_NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "AudioProfileService"


# instance fields
.field private final DtmfToneEnabledObserver:Landroid/database/ContentObserver;

.field private mActiveProfileKey:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileHandler:Landroid/os/Handler;

.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCustomProfileName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultRingtone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDelaySetVibrate:Z

.field private final mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

.field private final mHapticFeedbackObserver:Landroid/database/ContentObserver;

.field private mIsLastCustomActiveProfileDeleted:Z

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActiveProfileKey:Ljava/lang/String;

.field private mLastVibrateType:I

.field private final mNotificationObserver:Landroid/database/ContentObserver;

.field private final mPredefinedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfileService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerMode:I

.field private final mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private mShouldGetDefaultRingtoneAfterScanFinish:Z

.field private mShouldOverrideSystem:Z

.field private final mShouldSyncToSystem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUpgradeReceiver:Landroid/content/BroadcastReceiver;

.field private final mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGTONE_TYPE_CONUT:I

    .line 146
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    .line 147
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    .line 148
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    .line 151
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sms_noti_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SMS_NOTI_INDEX:I

    .line 166
    const-string v0, "com.mediatek.uri.silent_notificaton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x5

    const/4 v9, -0x1

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 797
    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;-><init>()V

    .line 178
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    .line 179
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 181
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    .line 183
    new-instance v7, Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGTONE_TYPE_CONUT:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    .line 185
    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 187
    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 190
    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 192
    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    .line 198
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 204
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v13}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 211
    iput-boolean v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 213
    iput v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 220
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 227
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$1;

    invoke-direct {v7, p0}, Lcom/mediatek/audioprofile/AudioProfileService$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 294
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$2;

    invoke-direct {v7, p0}, Lcom/mediatek/audioprofile/AudioProfileService$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 371
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$3;

    invoke-direct {v7, p0}, Lcom/mediatek/audioprofile/AudioProfileService$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 387
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$4;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService$4;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 472
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$5;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService$5;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 551
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$6;

    invoke-direct {v7, p0}, Lcom/mediatek/audioprofile/AudioProfileService$6;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 722
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$7;

    invoke-direct {v7, p0}, Lcom/mediatek/audioprofile/AudioProfileService$7;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 914
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$8;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService$8;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->DtmfToneEnabledObserver:Landroid/database/ContentObserver;

    .line 3959
    new-instance v7, Lcom/mediatek/audioprofile/AudioProfileService$9;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService$9;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mHapticFeedbackObserver:Landroid/database/ContentObserver;

    .line 798
    const-string v7, "AudioProfileService"

    const-string v8, "Initial AudioProfileService start"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 800
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 801
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 802
    const-string v7, "storage"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 805
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 808
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 809
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 813
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mtk_audioprofile_active"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, activeProfileKey:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_0
    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 815
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mtk_audioprofile_last_active"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, lastActiveProfileKey:Ljava/lang/String;
    if-nez v4, :cond_1

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_1
    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 818
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mtk_audioprofile_custom_deleted"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 821
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 824
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 825
    .local v5, profileKey:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #lastActiveProfileKey:Ljava/lang/String;
    .end local v5           #profileKey:Ljava/lang/String;
    :cond_0
    move-object v7, v0

    .line 814
    goto :goto_0

    .restart local v4       #lastActiveProfileKey:Ljava/lang/String;
    :cond_1
    move-object v7, v4

    .line 816
    goto :goto_1

    .line 829
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    iput v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 830
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 831
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 833
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    invoke-virtual {v7, v8, v12}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 837
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "ringtone"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 839
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "notification_sound"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 843
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "haptic_feedback_enabled"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mHapticFeedbackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 851
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "dtmf_tone"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->DtmfToneEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 858
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 863
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 865
    .local v2, defRingUri:Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 872
    :goto_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 873
    .local v1, bootFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 876
    if-nez v2, :cond_6

    .line 877
    iput-boolean v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 897
    :cond_3
    :goto_4
    new-instance v7, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension;

    invoke-direct {v7}, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension;-><init>()V

    iput-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 901
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-interface {v7, p0, v8}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 903
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v7}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 905
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 907
    :cond_4
    const-string v7, "AudioProfileService"

    const-string v8, "Initial AudioProfileService end"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void

    .line 866
    .end local v1           #bootFilter:Landroid/content/IntentFilter;
    :cond_5
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 867
    .local v6, scanerFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v7, "file"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 869
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3

    .line 878
    .end local v6           #scanerFilter:Landroid/content/IntentFilter;
    .restart local v1       #bootFilter:Landroid/content/IntentFilter;
    :cond_6
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_7

    .line 880
    invoke-direct {p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_4

    .line 883
    :cond_7
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x20

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_8

    .line 884
    const/16 v7, 0x20

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_4

    .line 885
    :cond_8
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x80

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_9

    .line 886
    const/16 v7, 0x80

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_4

    .line 887
    :cond_9
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x40

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_a

    .line 888
    const/16 v7, 0x40

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_4

    .line 891
    :cond_a
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_3

    .line 892
    invoke-direct {p0, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SMS_NOTI_INDEX:I

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->triggerMediaScanner()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/audioprofile/AudioProfileService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return p1
.end method

.method static synthetic access$802(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private checkDefaultProfiles()V
    .locals 8

    .prologue
    .line 3252
    const-string v6, "AudioProfileService"

    const-string v7, "checkDefaultProfiles>>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    const-string v6, "AudioProfileService"

    const-string v7, "checkDefaultProfiles>>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v4

    .line 3262
    .local v4, silentKey:Ljava/lang/String;
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    .line 3264
    .local v1, meetingKey:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    .line 3265
    .local v5, silentState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    .line 3267
    .local v2, meetingState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-boolean v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 3268
    .local v3, silentHapticFeedbackEnabled:Z
    iget-boolean v0, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 3270
    .local v0, meetingHapticFeedbackEnabled:Z
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3271
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3273
    iput-boolean v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 3274
    iput-boolean v0, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 3276
    return-void
.end method

.method private createOverrideSystemThread()V
    .locals 4

    .prologue
    .line 3513
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 3514
    .local v1, overrideSystemThread:Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->start()V

    .line 3516
    monitor-enter p0

    .line 3517
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3520
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3521
    :catch_0
    move-exception v0

    .line 3522
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "AudioProfileService"

    const-string v3, "Interrupted while waiting on AudioProfileHandler."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3525
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3527
    return-void
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3
    .parameter "profileKey"
    .parameter "type"
    .parameter "uri"

    .prologue
    .line 2123
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 2126
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2127
    .local v0, state:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2128
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)V

    .line 2129
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2132
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2133
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 2135
    :cond_0
    return-void

    .line 2129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private genCustomKey()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1373
    const/4 v2, 0x5

    .line 1374
    .local v2, maxCustom:I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 1375
    .local v3, rand:Ljava/util/Random;
    const/4 v1, 0x0

    .line 1377
    .local v1, key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v0, v4, v2

    .line 1378
    .local v0, customNo:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mtk_audioprofile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1383
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genCustomKey: newKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return-object v1
.end method

.method private getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "uriString"

    .prologue
    const/4 v7, 0x0

    .line 3994
    if-nez p1, :cond_0

    .line 4024
    :goto_0
    return-object v7

    .line 3998
    :cond_0
    const/4 v7, 0x0

    .line 4000
    .local v7, data:Ljava/lang/String;
    const/4 v6, 0x0

    .line 4002
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4009
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4010
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 4018
    :cond_1
    if-eqz v6, :cond_2

    .line 4019
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4020
    const/4 v6, 0x0

    .line 4023
    :cond_2
    :goto_1
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalUriData for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4012
    :catch_0
    move-exception v8

    .line 4013
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4014
    const/4 v7, 0x0

    .line 4018
    if-eqz v6, :cond_2

    .line 4019
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4020
    const/4 v6, 0x0

    goto :goto_1

    .line 4018
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4019
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4020
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 2
    .parameter "name"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3371
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3372
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3373
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3375
    .end local v0           #value:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 3373
    .restart local v0       #value:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "name"
    .parameter
    .parameter "defaultUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 3352
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3353
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3354
    .local v0, uriString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3356
    .end local v0           #uriString:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 3354
    .restart local v0       #uriString:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 2
    .parameter "name"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3390
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3391
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3392
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3394
    .end local v0           #value:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 3392
    .restart local v0       #value:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0
.end method

.method private getStreamValidVolume(II)I
    .locals 2
    .parameter "streamType"
    .parameter "volume"

    .prologue
    .line 1777
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamMaxVolume(I)I

    move-result v0

    .line 1778
    .local v0, max:I
    move v1, p2

    .line 1779
    .local v1, validVolume:I
    if-gez p2, :cond_1

    .line 1780
    const/4 v1, 0x0

    .line 1784
    :cond_0
    :goto_0
    return v1

    .line 1781
    :cond_1
    if-le p2, v0, :cond_0

    .line 1782
    move v1, v0

    goto :goto_0
.end method

.method private isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 2178
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z
    .locals 1
    .parameter "profileState"
    .parameter "type"
    .parameter "newRingtoneUri"

    .prologue
    .line 2044
    sparse-switch p2, :sswitch_data_0

    .line 2066
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2046
    :sswitch_0
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2049
    :sswitch_1
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2052
    :sswitch_2
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2056
    :sswitch_3
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2059
    :sswitch_4
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream_2:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2062
    :sswitch_5
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream_2:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2044
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method private isValidRingtoneType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 2034
    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    const/16 v1, 0x20

    if-eq v1, p1, :cond_0

    const/16 v1, 0x80

    if-eq v1, p1, :cond_0

    const/16 v1, 0x40

    if-eq v1, p1, :cond_0

    const/16 v1, 0x8

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAudioProfileChanged()V
    .locals 7

    .prologue
    .line 1172
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1173
    const-string v3, "AudioProfileService"

    const-string v4, "notifyAudioProfileChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1178
    const-string v3, "AudioProfileService"

    const-string v4, "notifyAudioProfileChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1182
    :cond_1
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAudioProfileChanged: New profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1184
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1185
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1187
    .local v2, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1189
    :try_start_1
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1192
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1198
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private persistBootAudioToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 3839
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3840
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3841
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBootAudioKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3843
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3846
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3847
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3848
    return-void
.end method

.method private persistBootAudioToSystem()V
    .locals 3

    .prologue
    .line 3851
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    .line 3853
    .local v0, enabled:Z
    if-eqz v0, :cond_0

    .line 3854
    const-string v1, "persist.sys.boot_audio"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3858
    :goto_0
    return-void

    .line 3856
    :cond_0
    const-string v1, "persist.sys.boot_audio"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private persistDtmfToneToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 2588
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2589
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2590
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2592
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2593
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2594
    return-void
.end method

.method private persistDtmfToneToSystem()V
    .locals 6

    .prologue
    .line 2824
    const-string v2, "dtmf_tone"

    .line 2825
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2826
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2827
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2828
    return-void

    .line 2825
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistHandFreeToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 3890
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3891
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3892
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHandFreeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3894
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3896
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x69

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3897
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3898
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3899
    return-void
.end method

.method private persistHandFreeToSystem()V
    .locals 6

    .prologue
    .line 3902
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3903
    .local v1, msg:Landroid/os/Message;
    const-string v2, "hand_free_enabled"

    .line 3904
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3906
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x73

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3907
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3908
    return-void

    .line 3904
    .end local v0           #enabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 2642
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2643
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2644
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2646
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2647
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2648
    return-void
.end method

.method private persistHapticFeedbackToSystem()V
    .locals 6

    .prologue
    .line 2854
    const-string v2, "haptic_feedback_enabled"

    .line 2855
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2856
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2857
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2858
    return-void

    .line 2855
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistLockScreenToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 2624
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2625
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2626
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2628
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2629
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2630
    return-void
.end method

.method private persistLockScreenToSystem()V
    .locals 6

    .prologue
    .line 2844
    const-string v2, "lockscreen_sounds_enabled"

    .line 2845
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2846
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2847
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2848
    return-void

    .line 2845
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistPocketModeToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 3738
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3739
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3740
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getPocketModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3742
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3744
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3745
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3746
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3747
    return-void
.end method

.method private persistPocketModeToSystem()V
    .locals 6

    .prologue
    .line 3750
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3751
    .local v1, msg:Landroid/os/Message;
    const-string v2, "pocket_mode_enabled"

    .line 3752
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3754
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x70

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3755
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3756
    return-void

    .line 3752
    .end local v0           #enabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "profileKey"
    .parameter "profileName"

    .prologue
    const/4 v5, -0x1

    .line 2659
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2660
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2661
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2663
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2664
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2665
    return-void
.end method

.method private persistRingtoneUriToSystem(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 2683
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2684
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 2685
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2690
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "AudioProfileService"

    const-string v4, "persistRingtoneUriToSystem SUPPORT_RINGTONE_SIM_BINDING is true, ignore persist!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    return-void
.end method

.method private persistRingtoneWeakenToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 3789
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3790
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3791
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneWeakenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3793
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3795
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3796
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3797
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3798
    return-void
.end method

.method private persistRingtoneWeakenToSystem()V
    .locals 6

    .prologue
    .line 3801
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3802
    .local v1, msg:Landroid/os/Message;
    const-string v2, "ringtone_weaken_enabled"

    .line 3803
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3805
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x71

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3806
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3807
    return-void

    .line 3803
    .end local v0           #enabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistSoundEffectToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 2606
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2607
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2608
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2610
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2611
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2612
    return-void
.end method

.method private persistSoundEffectToSystem()V
    .locals 6

    .prologue
    .line 2834
    const-string v2, "sound_effects_enabled"

    .line 2835
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2836
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2837
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2838
    return-void

    .line 2835
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistStreamVolumeToDatabase(Ljava/lang/String;II)V
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "value"

    .prologue
    const/4 v4, -0x1

    .line 2538
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, name:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2553
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "persistStreamVolumeToDatabase with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :goto_0
    return-void

    .line 2541
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2556
    .local v0, msg:Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2545
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2546
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1

    .line 2549
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2550
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1

    .line 2539
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistStreamVolumeToSystem(I)V
    .locals 5
    .parameter "streamType"

    .prologue
    .line 2758
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v2, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->persistStreamVolumeToSystem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2785
    :goto_0
    return-void

    .line 2762
    :cond_0
    const/4 v0, 0x0

    .line 2763
    .local v0, flags:I
    const/4 v1, 0x0

    .line 2764
    .local v1, volume:I
    packed-switch p1, :pswitch_data_0

    .line 2781
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2766
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2767
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2784
    :goto_1
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2771
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2772
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 2776
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2777
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 2764
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistValues(Z)V
    .locals 5
    .parameter "overrideSystem"

    .prologue
    const/4 v4, 0x2

    .line 1486
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1487
    .local v0, activeProfileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1488
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistValues error with no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1496
    if-eqz p1, :cond_0

    .line 1497
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1498
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1505
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1506
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1507
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1510
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1511
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1512
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1516
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1517
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1518
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1519
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1522
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistBootAudioToSystem()V

    .line 1523
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistPocketModeToSystem()V

    .line 1524
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneWeakenToSystem()V

    .line 1525
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHandFreeToSystem()V

    .line 1527
    return-void

    .line 1490
    :cond_1
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistValues: override = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistValuesToSystemByBatch(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2867
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2868
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2869
    return-void
.end method

.method private persistVibrationToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    .line 2569
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2570
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2571
    .local v2, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    const-string v3, "Vibration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2574
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2575
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2576
    return-void
.end method

.method private persistVibrationToSystem()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 2792
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 2793
    .local v1, vibratinRinger:I
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 2794
    .local v0, vibratinNotification:I
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persistVibrationToSystem current vibrate status: ringer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", notification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    if-eq v1, v0, :cond_0

    .line 2798
    const-string v4, "AudioProfileService"

    const-string v5, "persistVibrationToSystem different vibrate settings, so CTS test running, delay 10 sec to set vibration!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2801
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2802
    iput-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 2818
    :goto_0
    return-void

    .line 2805
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    if-eqz v4, :cond_1

    .line 2806
    const-string v3, "AudioProfileService"

    const-string v4, "persistVibrationToSystem: CTS test running,delay 20 sec to set vibration!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2812
    :cond_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 2815
    .local v2, vibrationStatus:I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2816
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2817
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistVibrationToSystem set ringer and notification vibrate to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2812
    .end local v2           #vibrationStatus:I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private readAllProfileKeys()V
    .locals 15

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2968
    const-string v11, "name"

    .line 2969
    .local v11, nameColumn:Ljava/lang/String;
    const-string v13, "value"

    .line 2971
    .local v13, valueColumn:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v13, v2, v0

    .line 2973
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    .line 2974
    .local v8, customPrefix:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 2975
    .local v12, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2977
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readProfileKeys: selection = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    const-string v5, "_id desc"

    .line 2980
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2983
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 2984
    const-string v0, "AudioProfileService"

    const-string v1, "getProfileKeys: Null custom cursor!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    :goto_0
    return-void

    .line 2987
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2988
    .local v6, count:I
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2990
    .local v14, valueIndex:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2991
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 2992
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2993
    .local v10, key:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2994
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2998
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2991
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2996
    :cond_1
    const-string v0, "AudioProfileService"

    const-string v1, "readProfileKeys: Null custom key!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3000
    .end local v10           #key:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private readDefaultRingtones()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3149
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGTONE_TYPE_CONUT:I

    if-ge v0, v4, :cond_0

    .line 3151
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3155
    .end local v0           #i:I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3156
    .local v2, uriString:Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 3157
    .local v1, uri:Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3160
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3161
    if-nez v2, :cond_2

    move-object v1, v3

    .line 3162
    :goto_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3165
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_video_call"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3166
    if-nez v2, :cond_3

    move-object v1, v3

    .line 3167
    :goto_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3170
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_sms_noti"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3172
    if-nez v2, :cond_4

    move-object v1, v3

    .line 3173
    :goto_4
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SMS_NOTI_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3175
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_sms_noti_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3177
    if-nez v2, :cond_5

    move-object v1, v3

    .line 3178
    :goto_5
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sms_noti_Stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v5

    invoke-interface {v4, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3180
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_ringtone_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3182
    if-nez v2, :cond_6

    move-object v1, v3

    .line 3183
    :goto_6
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3186
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDefaultRingtones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    return-void

    .line 3156
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 3161
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 3166
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    .line 3172
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4

    .line 3177
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5

    .line 3182
    :cond_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_6
.end method

.method private readPersistedSettings(Ljava/lang/String;)V
    .locals 36
    .parameter "profileKey"

    .prologue
    .line 3027
    if-nez p1, :cond_0

    .line 3028
    const-string v3, "AudioProfileService"

    const-string v4, "readPersistedSettings with Null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :goto_0
    return-void

    .line 3032
    :cond_0
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v5, v3

    .line 3033
    .local v5, projection:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3034
    .local v6, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3035
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 3036
    .local v16, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3037
    const-string v3, "name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3038
    .local v19, nameIndex:I
    const-string v3, "value"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3040
    .local v31, valueIndex:I
    :cond_1
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3041
    .local v18, name:Ljava/lang/String;
    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 3042
    .local v30, value:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3048
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #nameIndex:I
    .end local v30           #value:Ljava/lang/String;
    .end local v31           #valueIndex:I
    :goto_1
    if-eqz v11, :cond_2

    .line 3049
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3052
    :cond_2
    const/16 v18, 0x0

    .line 3053
    .restart local v18       #name:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v12

    .line 3055
    .local v12, defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v34

    .line 3059
    .local v34, voiceCallUri:Landroid/net/Uri;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 3063
    .local v20, notificationUri:Landroid/net/Uri;
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v33

    .line 3068
    .local v33, videoCallUri:Landroid/net/Uri;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3069
    iget v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v25

    .line 3071
    .local v25, ringerVolume:I
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3072
    iget v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v21

    .line 3074
    .local v21, notificationVolume:I
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3075
    iget v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v9

    .line 3079
    .local v9, alarmVolume:I
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3080
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v32

    .line 3082
    .local v32, vibration:Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3083
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v13

    .line 3085
    .local v13, dtmfTone:Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3086
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v29

    .line 3088
    .local v29, soundEffect:Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3089
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v17

    .line 3091
    .local v17, lockScreensound:Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3092
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v15

    .line 3095
    .local v15, hapticFeedback:Z
    const/16 v3, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3096
    const/16 v3, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v27

    .line 3098
    .local v27, smsNotiUri:Landroid/net/Uri;
    const/16 v3, 0x80

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3099
    const/16 v3, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v28

    .line 3101
    .local v28, smsNotiUri_2:Landroid/net/Uri;
    const/16 v3, 0x40

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3102
    const/16 v3, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v35

    .line 3104
    .local v35, voiceCallUri_2:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBootAudioKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3105
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v10

    .line 3107
    .local v10, bootAudioEnabled:Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getPocketModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3108
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v23

    .line 3110
    .local v23, pocketModeEnabled:Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneWeakenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3111
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v26

    .line 3113
    .local v26, ringtoneWeakenEnabled:Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHandFreeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3114
    iget-boolean v3, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v14

    .line 3120
    .local v14, handFreeEnabled:Z
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v33

    invoke-virtual {v3, v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v9}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v35

    invoke-virtual {v3, v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoRingtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v10, v0, v1, v14}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoEnable(ZZZZ)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v22

    .line 3133
    .local v22, persistedState:Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3136
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3137
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 3138
    .local v24, profileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3141
    .end local v24           #profileName:Ljava/lang/String;
    :cond_3
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readPersistedSettings with "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3045
    .end local v9           #alarmVolume:I
    .end local v10           #bootAudioEnabled:Z
    .end local v12           #defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v13           #dtmfTone:Z
    .end local v14           #handFreeEnabled:Z
    .end local v15           #hapticFeedback:Z
    .end local v17           #lockScreensound:Z
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #notificationUri:Landroid/net/Uri;
    .end local v21           #notificationVolume:I
    .end local v22           #persistedState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v23           #pocketModeEnabled:Z
    .end local v25           #ringerVolume:I
    .end local v26           #ringtoneWeakenEnabled:Z
    .end local v27           #smsNotiUri:Landroid/net/Uri;
    .end local v28           #smsNotiUri_2:Landroid/net/Uri;
    .end local v29           #soundEffect:Z
    .end local v32           #vibration:Z
    .end local v33           #videoCallUri:Landroid/net/Uri;
    .end local v34           #voiceCallUri:Landroid/net/Uri;
    .end local v35           #voiceCallUri_2:Landroid/net/Uri;
    :cond_4
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readPersistedSettings: No value for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private readPredefinedProfileKeys()V
    .locals 3

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3008
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3009
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3010
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3013
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CARMODE:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CARMODE:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3017
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readPredefindProfileKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    return-void
.end method

.method private readShouldSyncToSystem()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3196
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v7

    array-length v4, v7

    .line 3197
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3198
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3200
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 3204
    .local v0, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3206
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3207
    .local v6, systemVolume:I
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3208
    .local v3, profileVolume:I
    if-eq v3, v6, :cond_2

    .line 3209
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3212
    :cond_2
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3213
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3214
    if-eq v3, v6, :cond_3

    .line 3215
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3218
    :cond_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3219
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3220
    if-eq v3, v6, :cond_4

    .line 3221
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3225
    :cond_4
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3226
    .local v5, systemUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3227
    .local v2, profileUri:Landroid/net/Uri;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    .line 3228
    :cond_6
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3231
    :cond_7
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3232
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3233
    if-eqz v2, :cond_8

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    if-nez v2, :cond_a

    if-eqz v5, :cond_a

    .line 3234
    :cond_9
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3237
    :cond_a
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3238
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3239
    if-eqz v2, :cond_b

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    if-nez v2, :cond_d

    if-eqz v5, :cond_d

    .line 3240
    :cond_c
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3243
    .end local v2           #profileUri:Landroid/net/Uri;
    .end local v3           #profileVolume:I
    .end local v5           #systemUri:Landroid/net/Uri;
    .end local v6           #systemVolume:I
    :cond_d
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .parameter "binder"

    .prologue
    .line 3463
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3464
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3465
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 3467
    .local v1, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget-object v2, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3468
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3469
    const-string v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removed AudioProfile change listener for: record.mBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3473
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v1           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3474
    return-void
.end method

.method private restoreToDefaultValues(Ljava/lang/String;)V
    .locals 10
    .parameter "profileKey"

    .prologue
    .line 1537
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1538
    .local v0, defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1539
    .local v3, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v8

    .line 1540
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1541
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1542
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1544
    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1545
    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    iput v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1546
    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    iput v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1548
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1549
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1550
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1551
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1552
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1555
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sms_noti_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream:Landroid/net/Uri;

    .line 1556
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sms_noti_Stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream_2:Landroid/net/Uri;

    .line 1557
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream_2:Landroid/net/Uri;

    .line 1559
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    .line 1560
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    .line 1561
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    .line 1562
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    .line 1564
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1566
    .local v2, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1567
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    const-string v7, " in ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1570
    .local v5, size:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1571
    const-string v7, "?,"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1564
    .end local v1           #i:I
    .end local v2           #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v5           #size:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1573
    .restart local v1       #i:I
    .restart local v2       #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    .restart local v5       #size:I
    :cond_0
    const-string v7, "?)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1575
    .local v6, where:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1576
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreToDefaultValues: profileKey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void
.end method

.method private setActiveKey(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mtk_audioprofile_active"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1117
    .local v0, succeed:Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 1118
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveKey: succeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return v0
.end method

.method private setLastActiveKey(Ljava/lang/String;)Z
    .locals 6
    .parameter "profileKey"

    .prologue
    .line 1123
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mtk_audioprofile_last_active"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1124
    .local v2, succeed:Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 1126
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1127
    .local v1, sizeOfShouldSyncToSystem:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1128
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    :cond_0
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLastActiveKey: succeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return v2
.end method

.method private setLastActiveNonCarModeKey(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 3917
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mtk_audioprofile_last_non_carmode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3919
    .local v0, succeed:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLastActiveNonCarModeKey: succeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    return v0
.end method

.method private setLastCustomActiveDeleted(Z)Z
    .locals 4
    .parameter "deleted"

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mtk_audioprofile_custom_deleted"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1138
    .local v0, succeed:Z
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 1139
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomActiveDeleted: changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return v0
.end method

.method private setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V
    .locals 2
    .parameter "oldScenario"
    .parameter "oldProfileKey"

    .prologue
    .line 1084
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1089
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 1090
    .local v0, lastActiveChanged:Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v1, :cond_0

    .line 1091
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1094
    .end local v0           #lastActiveChanged:Z
    :cond_0
    return-void
.end method

.method private setRingerModeMatchProfile(ZI)V
    .locals 4
    .parameter "shouldSetRingerMode"
    .parameter "expectRingerMode"

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1098
    .local v0, actualRingerMode:I
    if-eqz p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 1099
    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1100
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1102
    :cond_0
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingerModeMatchProfile: actual = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)V
    .locals 0
    .parameter "state"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 2138
    sparse-switch p2, :sswitch_data_0

    .line 2168
    :goto_0
    return-void

    .line 2140
    :sswitch_0
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    goto :goto_0

    .line 2144
    :sswitch_1
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    goto :goto_0

    .line 2148
    :sswitch_2
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2153
    :sswitch_3
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream:Landroid/net/Uri;

    goto :goto_0

    .line 2157
    :sswitch_4
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream_2:Landroid/net/Uri;

    goto :goto_0

    .line 2161
    :sswitch_5
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream_2:Landroid/net/Uri;

    goto :goto_0

    .line 2138
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 5
    .parameter "profileKey"
    .parameter "type"
    .parameter "newRingtoneUri"

    .prologue
    .line 2113
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 2114
    .local v1, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2115
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2116
    .local v0, outdoorKey:Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 2117
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "synchronize general to outdoor! ringtone type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    .end local v0           #outdoorKey:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncRingtoneToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1643
    const/4 v1, 0x0

    .line 1644
    .local v1, systemUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1647
    .local v0, profileUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1648
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1650
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1651
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1652
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1654
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1655
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1662
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1664
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1665
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1666
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1668
    :cond_4
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1669
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_5
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1676
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1678
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1679
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1680
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 1682
    :cond_7
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1683
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_8
    return-void
.end method

.method private syncVolumeToSystem()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 1587
    const/4 v1, 0x0

    .line 1588
    .local v1, systemVolume:I
    const/4 v0, 0x0

    .line 1590
    .local v0, profileVolume:I
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1591
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1592
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1593
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1594
    if-eq v0, v1, :cond_0

    .line 1595
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1596
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1604
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1605
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1607
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1608
    if-eq v0, v1, :cond_1

    .line 1609
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1610
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_1
    return-void
.end method

.method private triggerMediaScanner()V
    .locals 7

    .prologue
    .line 698
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "media"

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v4

    .line 699
    .local v4, mediaProvider:Landroid/content/IContentProvider;
    const-string v5, "internal"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 702
    .local v2, filesUri:Landroid/net/Uri;
    :try_start_0
    const-string v5, "AudioProfileService"

    const-string v6, "triggerMediaScanner: delete internal media uri"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v2, v5, v6}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 707
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 708
    .local v0, args:Landroid/os/Bundle;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 710
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "volume"

    const-string v6, "internal"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v5, "com.android.providers.media"

    const-string v6, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 715
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v0           #args:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateRintoneUri(Ljava/lang/String;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/net/Uri;
    .locals 18
    .parameter "dataKey"
    .parameter "oldUri"
    .parameter "streamType"
    .parameter "volumePath"

    .prologue
    .line 750
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 751
    const/4 v13, 0x0

    .line 752
    .local v13, newUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 753
    .local v16, uriData:Ljava/lang/String;
    if-nez v16, :cond_1

    .line 754
    const/4 v13, 0x0

    .line 789
    .end local v13           #newUri:Landroid/net/Uri;
    .end local v16           #uriData:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v13

    .line 756
    .restart local v13       #newUri:Landroid/net/Uri;
    .restart local v16       #uriData:Ljava/lang/String;
    :cond_1
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v17, v2, v3

    .line 757
    .local v17, uriSdPath:Ljava/lang/String;
    move-object/from16 v0, p4

    array-length v12, v0

    .line 761
    .local v12, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v12, :cond_5

    .line 762
    aget-object v2, p4, v9

    aget-object v3, p4, v9

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 763
    .local v15, sdPath:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 764
    .local v14, newUriData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 772
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 774
    .local v10, id:J
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 775
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update ringtone uri for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with new uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    if-eqz v8, :cond_0

    .line 780
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 781
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 779
    .end local v10           #id:J
    :cond_2
    if-eqz v8, :cond_3

    .line 780
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 781
    const/4 v8, 0x0

    .line 761
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 779
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 780
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 781
    const/4 v8, 0x0

    :cond_4
    throw v2

    .line 785
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #newUriData:Ljava/lang/String;
    .end local v15           #sdPath:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v13

    .line 786
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update ringtone uri for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with default uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 789
    .end local v9           #i:I
    .end local v12           #length:I
    .end local v13           #newUri:Landroid/net/Uri;
    .end local v16           #uriData:Ljava/lang/String;
    .end local v17           #uriSdPath:Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public activeCarMode()Z
    .locals 2

    .prologue
    .line 3926
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CARMODE:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    .line 3928
    .local v0, profileKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3930
    const/4 v1, 0x0

    .line 3934
    :goto_0
    return v1

    .line 3933
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;)V

    .line 3934
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addProfile()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 1243
    const-string v5, "AudioProfileService"

    const-string v6, "addProfile: Number of custom audio profile has reached upper limit!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v2, 0x0

    .line 1275
    :goto_0
    return-object v2

    .line 1248
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->genCustomKey()Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, newKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1250
    .local v0, defaultState:Lcom/mediatek/audioprofile/AudioProfileState;
    new-instance v8, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    invoke-direct {v8, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v6, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v7, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v8, v5, v6, v7}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    .line 1263
    .local v3, newProfileState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1266
    .local v4, succeed:Z
    if-eqz v4, :cond_1

    .line 1267
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v6

    .line 1268
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    const-string v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addProfile: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1270
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1273
    :cond_1
    const-string v5, "AudioProfileService"

    const-string v6, "addProfile: Failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 11
    .parameter "profileKey"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1285
    if-nez p1, :cond_0

    .line 1286
    const-string v6, "AudioProfileService"

    const-string v8, "deleteProfile: Null key!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1317
    :goto_0
    return v6

    .line 1290
    :cond_0
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1291
    .local v2, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1292
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const-string v6, " in ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1295
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_1

    .line 1296
    const-string v6, "?,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1298
    :cond_1
    const-string v6, "?)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1300
    .local v5, where:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v9, v10, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1301
    .local v0, deleted:I
    const-string v6, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteProfile: where = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deleted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    if-lez v0, :cond_3

    .line 1303
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v7

    .line 1304
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1305
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1309
    const-string v6, "AudioProfileService"

    const-string v7, "deleteProfile: Custom active deleted and set to default."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1311
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    .line 1313
    :cond_2
    const-string v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: mKeys = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mCustomProfileName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1314
    goto/16 :goto_0

    .line 1307
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1316
    :cond_3
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: Failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1317
    goto/16 :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1151
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveProfile: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1421
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1422
    .local v0, allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1423
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    monitor-exit v2

    return-object v0

    .line 1425
    .end local v0           #allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBootAudioEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 3811
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    .line 3813
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootAudioEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    return v0
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 1470
    const/4 v0, 0x0

    .line 1477
    :goto_0
    return-object v0

    .line 1473
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    .local v0, customizedProfileKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1475
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1476
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizedProfileKeys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .parameter "type"

    .prologue
    .line 2924
    const/4 v0, 0x0

    .line 2925
    .local v0, uri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2953
    const-string v1, "AudioProfileService"

    const-string v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const/4 v1, 0x0

    .line 2957
    :goto_0
    return-object v1

    .line 2927
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2956
    .restart local v0       #uri:Landroid/net/Uri;
    :goto_1
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultRingtone: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 2957
    goto :goto_0

    .line 2931
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2932
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 2935
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2936
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 2940
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SMS_NOTI_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2941
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 2944
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sms_noti_Stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2945
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 2948
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2949
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 2925
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1854
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1855
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDtmfToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return v0
.end method

.method public getHandFreeEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 3862
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    .line 3864
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHandFreeEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    return v0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1896
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1897
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    return v0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1162
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1163
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastActiveProfileKey: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1882
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1883
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    return v0
.end method

.method public getPocketModeEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 3708
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    .line 3710
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPocketModeEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    return v0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 1441
    .local v3, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1442
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_1

    .line 1443
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    aget-object v2, v4, v0

    .line 1446
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    if-eqz v2, :cond_0

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CARMODE:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    if-eq v2, v4, :cond_0

    .line 1447
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1450
    .end local v2           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPredefinedProfileKeys: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-object v1
.end method

.method public getProfileCount()I
    .locals 5

    .prologue
    .line 1407
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1408
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1409
    .local v0, count:I
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileCount: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    monitor-exit v2

    return v0

    .line 1411
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1962
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1963
    .local v0, profileName:Ljava/lang/String;
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 1911
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1912
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1913
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 1915
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileState of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is null, so create new one instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    .line 1917
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1919
    .restart local v0       #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1920
    .end local v0           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "profileKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1932
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1933
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v1, v3

    .line 1934
    .local v1, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1935
    .local v2, state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1936
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1937
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1939
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1940
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1941
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1943
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1944
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1945
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1946
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1947
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1949
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileStateString for profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 1705
    if-nez p1, :cond_0

    .line 1706
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1750
    :goto_0
    return-object v0

    .line 1710
    :cond_0
    const/4 v0, 0x0

    .line 1711
    .local v0, uri:Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1738
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1739
    goto :goto_0

    .line 1713
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1741
    :goto_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1744
    const/4 v0, 0x0

    .line 1749
    :cond_1
    :goto_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1717
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1718
    goto :goto_1

    .line 1721
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1722
    goto :goto_1

    .line 1726
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream:Landroid/net/Uri;

    .line 1727
    goto :goto_1

    .line 1730
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSmsNotiStream_2:Landroid/net/Uri;

    .line 1731
    goto :goto_1

    .line 1734
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream_2:Landroid/net/Uri;

    .line 1735
    goto :goto_1

    .line 1745
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1747
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1711
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method public getRingtoneWeakenEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 3760
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    .line 3762
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPocketModeEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    return v0
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1868
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1869
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundEffectEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"

    .prologue
    const/4 v0, 0x0

    .line 1802
    if-nez p1, :cond_0

    .line 1803
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :goto_0
    return v0

    .line 1807
    :cond_0
    const/4 v1, 0x0

    .line 1808
    .local v1, volume:I
    packed-switch p2, :pswitch_data_0

    .line 1822
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1810
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1825
    :goto_1
    invoke-direct {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v0

    .line 1826
    .local v0, validVolume:I
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1814
    .end local v0           #validVolume:I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1815
    goto :goto_1

    .line 1818
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1819
    goto :goto_1

    .line 1808
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1840
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1841
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVibrationEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    return v0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 2883
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v2

    .line 2884
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2885
    .local v0, actived:Z
    :goto_0
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    monitor-exit v2

    return v0

    .line 2884
    .end local v0           #actived:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2887
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 1394
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1395
    .local v0, isExisted:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNameExist: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isExisted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCustomProfileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return v0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2898
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 2899
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    if-nez v1, :cond_0

    .line 2910
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v2

    .line 2902
    .restart local v1       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 2903
    goto :goto_0

    .line 2905
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 2906
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2908
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2909
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    .line 2910
    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    .locals 10
    .parameter "callback"
    .parameter "event"

    .prologue
    .line 3412
    if-nez p2, :cond_0

    .line 3413
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3414
    const-string v6, "AudioProfileService"

    const-string v7, "listenAudioProfie with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    :goto_0
    return-void

    .line 3418
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3421
    const/4 v3, 0x0

    .line 3423
    .local v3, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3424
    .local v0, binder:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3425
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .local v4, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3426
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3427
    .end local v4           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_2
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v0, v6, :cond_2

    .line 3436
    :goto_2
    iput p2, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3438
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 3440
    :try_start_3
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3456
    :cond_1
    :goto_3
    :try_start_4
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listenAudioProfie with event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sucessed, record.mBinder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,clients = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    monitor-exit v7

    goto :goto_0

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #i:I
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 3425
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v5       #size:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_1

    .line 3431
    :cond_3
    :try_start_5
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService$Record;-><init>(Lcom/mediatek/audioprofile/AudioProfileService$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3432
    .end local v4           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_6
    iput-object v0, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3433
    iput-object p1, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    .line 3434
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3441
    :catch_0
    move-exception v1

    .line 3442
    .local v1, e:Landroid/os/RemoteException;
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3443
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3458
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3       #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_4
.end method

.method public notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "profileKey"

    .prologue
    .line 1206
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1207
    const-string v3, "AudioProfileService"

    const-string v4, "notifyRingerVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    const-string v3, "AudioProfileService"

    const-string v4, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1216
    :cond_1
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1219
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1220
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1222
    .local v2, record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 1224
    :try_start_1
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1227
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1233
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2           #record:Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .parameter "profileKey"
    .parameter "type"
    .parameter "uri"

    .prologue
    const/4 v5, -0x1

    .line 2484
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2485
    .local v2, name:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2486
    .local v0, bundle:Landroid/os/Bundle;
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    sparse-switch p2, :sswitch_data_0

    .line 2516
    const-string v3, "AudioProfileService"

    const-string v4, "persistRingtoneUriToDatabase with undefined stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :goto_1
    return-void

    .line 2486
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2489
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2519
    .local v1, msg:Landroid/os/Message;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2520
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2493
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2494
    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_2

    .line 2497
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2498
    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_2

    .line 2502
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2503
    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_2

    .line 2506
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_4
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x74

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2507
    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_2

    .line 2510
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_5
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x75

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2512
    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_2

    .line 2487
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method public reset()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    .line 1325
    const-string v7, "AudioProfileService"

    const-string v8, "reset start!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1327
    .local v1, generalKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v3

    .line 1328
    .local v3, isGeneralActive:Z
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v8

    .line 1333
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 1334
    if-eqz v3, :cond_0

    .line 1335
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1345
    :goto_0
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v0, allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1352
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1353
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1354
    .local v4, profileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 1355
    .local v6, scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1356
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1360
    :goto_2
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1364
    .end local v0           #allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #profileKey:Ljava/lang/String;
    .end local v6           #scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1337
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1338
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 1339
    .local v5, ringerMode:I
    if-eq v5, v9, :cond_1

    .line 1340
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1342
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1343
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    goto/16 :goto_0

    .line 1358
    .end local v5           #ringerMode:I
    .restart local v0       #allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #profileKey:Ljava/lang/String;
    .restart local v6       #scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    goto :goto_2

    .line 1363
    .end local v4           #profileKey:Ljava/lang/String;
    .end local v6           #scenaria:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_3
    const-string v7, "AudioProfileService"

    const-string v9, "reset end!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1365
    return-void
.end method

.method public revertCarMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3942
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 3944
    .local v0, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CARMODE:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3956
    :cond_0
    :goto_0
    return v2

    .line 3947
    :cond_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mtk_audioprofile_last_non_carmode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3949
    .local v1, lastNonCarModeProfile:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3952
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;)V

    .line 3956
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 1
    .parameter "profileKey"

    .prologue
    .line 1112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    .line 1113
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;Z)V
    .locals 17
    .parameter "profileKey"
    .parameter "shouldSetRingerMode"

    .prologue
    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v6

    .line 950
    .local v6, oldProfileKey:Ljava/lang/String;
    move-object/from16 v4, p1

    .line 951
    .local v4, newProfileKey:Ljava/lang/String;
    const-string v13, "AudioProfileService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setActiveProfile>>>: oldProfileKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newProfileKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", shouldSetRingerMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 956
    const-string v13, "AudioProfileService"

    const-string v14, "setActiveProfile with same profile key with active profile, do nothing!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_0
    return-void

    .line 960
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v14

    .line 961
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 962
    const/4 v8, 0x1

    .line 964
    .local v8, overrideSystem:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    move/from16 v0, p2

    invoke-interface {v13, v0, v6, v4, v15}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;

    move-result-object v2

    .line 968
    .local v2, apcInfo:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    if-nez v2, :cond_6

    .line 969
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v5

    .line 970
    .local v5, newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    .line 972
    .local v7, oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    .line 973
    .local v9, ringerMode:I
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileService$10;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v15

    aget v13, v13, v15

    packed-switch v13, :pswitch_data_0

    .line 994
    const/4 v13, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 998
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v13, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-nez v13, :cond_1

    .line 999
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    .line 1000
    .local v12, volume:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 1001
    const-string v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setActiveProfile: profile volume is 0, change to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v12           #volume:I
    :cond_1
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    if-eqz v13, :cond_5

    :cond_3
    const/4 v8, 0x1

    .line 1014
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1015
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1029
    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 1060
    .end local v5           #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7           #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9           #ringerMode:I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1062
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 1064
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v11, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1065
    .local v11, ringerVolume:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v11, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 1066
    const-string v13, "AudioProfileService"

    const-string v15, "setActiveProfile<<<"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    monitor-exit v14

    goto/16 :goto_0

    .end local v2           #apcInfo:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .end local v8           #overrideSystem:Z
    .end local v11           #ringerVolume:I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 976
    .restart local v2       #apcInfo:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .restart local v5       #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v7       #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v8       #overrideSystem:Z
    .restart local v9       #ringerMode:I
    :pswitch_0
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 979
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 980
    const/4 v8, 0x0

    .line 981
    goto :goto_2

    .line 985
    :pswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 988
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 989
    const/4 v8, 0x0

    .line 990
    goto :goto_2

    .line 1010
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 1034
    .end local v5           #newScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7           #oldScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9           #ringerMode:I
    :cond_6
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->getRingerModeToUpdate()I

    move-result v10

    .line 1035
    .local v10, ringerModeToUpdate:I
    const/16 v13, -0x3e7

    if-eq v10, v13, :cond_7

    .line 1036
    move-object/from16 v0, p0

    iput v10, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1037
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1038
    const-string v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMCC: setActiveProfile: RingerMode now set "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_7
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSetLastActiveKey()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1043
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v3

    .line 1044
    .local v3, lastActiveChanged:Z
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v13, :cond_8

    .line 1045
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1049
    .end local v3           #lastActiveChanged:Z
    :cond_8
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSyncToSystem()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1056
    :cond_9
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldOverrideSystem()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto/16 :goto_2

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBootAudioEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 3818
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 3819
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 3820
    const-string v1, "AudioProfileService"

    const-string v2, "setBootAudioEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    :cond_0
    :goto_0
    return-void

    .line 3824
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    if-eq v1, p2, :cond_0

    .line 3826
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistBootAudioToDatabase(Ljava/lang/String;Z)V

    .line 3827
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 3828
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mBootAudioEnabled:Z

    .line 3829
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3831
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3832
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistBootAudioToSystem()V

    .line 3834
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBootAudioEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3829
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2334
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2335
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2336
    const-string v1, "AudioProfileService"

    const-string v2, "setDtmfToneEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2342
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToDatabase(Ljava/lang/String;Z)V

    .line 2343
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2344
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 2345
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2348
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 2350
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDtmfToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2345
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setHandFreeEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 3869
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 3870
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 3871
    const-string v1, "AudioProfileService"

    const-string v2, "setHandFreeEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    :cond_0
    :goto_0
    return-void

    .line 3875
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    if-eq v1, p2, :cond_0

    .line 3877
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHandFreeToDatabase(Ljava/lang/String;Z)V

    .line 3878
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 3879
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHandFreeEnabled:Z

    .line 3880
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3882
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3883
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHandFreeToSystem()V

    .line 3885
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHandFreeEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3880
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2424
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2425
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2426
    const-string v1, "AudioProfileService"

    const-string v2, "setHapticFeedbackEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :cond_0
    :goto_0
    return-void

    .line 2430
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2432
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    .line 2433
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2434
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2435
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2437
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2438
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 2440
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2435
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2394
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2395
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2396
    const-string v1, "AudioProfileService"

    const-string v2, "setLockScreenEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2402
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToDatabase(Ljava/lang/String;Z)V

    .line 2403
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2404
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2405
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2407
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2408
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 2410
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockScreenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2405
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPocketModeEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 3716
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 3717
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 3718
    const-string v1, "AudioProfileService"

    const-string v2, "setPocketModeEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    :cond_0
    :goto_0
    return-void

    .line 3722
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    if-eq v1, p2, :cond_0

    .line 3724
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistPocketModeToDatabase(Ljava/lang/String;Z)V

    .line 3725
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 3726
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mPocketModeEnabled:Z

    .line 3727
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3729
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3730
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistPocketModeToSystem()V

    .line 3732
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPocketModeEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3727
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"
    .parameter "newName"

    .prologue
    .line 2454
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2455
    .local v0, profileName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2457
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :goto_0
    return-void

    .line 2461
    :cond_2
    const-string v1, "AudioProfileService"

    const-string v2, "setProfileName with Null name!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 5
    .parameter "profileKey"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    const/4 v4, 0x1

    .line 1984
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 1985
    .local v1, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v1, :cond_0

    .line 1986
    const-string v2, "AudioProfileService"

    const-string v3, "setRingtoneUri profile state not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :goto_0
    return-void

    .line 1990
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->isValidRingtoneType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1991
    const-string v2, "AudioProfileService"

    const-string v3, "setRingtoneUri with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_1
    move-object v0, p3

    .line 1995
    .local v0, newRingtoneUri:Landroid/net/Uri;
    invoke-direct {p0, v1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1996
    const-string v2, "AudioProfileService"

    const-string v3, "setRingtoneUri with ringtone uri unchanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_2
    const/4 v2, 0x2

    if-ne v2, p2, :cond_3

    .line 2002
    if-nez v0, :cond_3

    .line 2003
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2008
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 2012
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2013
    invoke-virtual {p0, p2, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 2025
    :cond_4
    if-ne p2, v4, :cond_5

    .line 2026
    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 2030
    :cond_5
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRingtoneUri: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneWeakenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 3767
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 3768
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 3769
    const-string v1, "AudioProfileService"

    const-string v2, "setRingtoneWeakenEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :cond_0
    :goto_0
    return-void

    .line 3773
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    if-eq v1, p2, :cond_0

    .line 3775
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneWeakenToDatabase(Ljava/lang/String;Z)V

    .line 3776
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 3777
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingtoneWeakenEnabled:Z

    .line 3778
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3780
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3781
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneWeakenToSystem()V

    .line 3783
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingtoneWeakenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3778
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setShouldSyncToSystemFlag(IZ)V
    .locals 3
    .parameter "type"
    .parameter "shouldSync"

    .prologue
    .line 2077
    sparse-switch p1, :sswitch_data_0

    .line 2107
    :goto_0
    return-void

    .line 2079
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2083
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2087
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2092
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SMS_NOTI_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2096
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sms_noti_Stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2100
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream_2:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2077
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2364
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2365
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2366
    const-string v1, "AudioProfileService"

    const-string v2, "setSoundEffectEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2370
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eq v1, p2, :cond_0

    .line 2372
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToDatabase(Ljava/lang/String;Z)V

    .line 2373
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2374
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 2375
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2377
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2378
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 2380
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSoundEffectEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2375
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 2195
    invoke-direct {p0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v1

    .line 2196
    .local v1, validIndex:I
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2197
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2198
    const-string v2, "AudioProfileService"

    const-string v3, "setStreamVolume profile state not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :goto_0
    return-void

    .line 2202
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2255
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "setStreamVolume with undefind stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :cond_1
    :goto_1
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2204
    :pswitch_1
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, v1, :cond_1

    .line 2207
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2208
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2209
    :try_start_0
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2210
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2215
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2210
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2221
    :pswitch_2
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v2, v1, :cond_1

    .line 2224
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2225
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2226
    :try_start_2
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2227
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2231
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2232
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2227
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2238
    :pswitch_3
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    if-eq v2, v1, :cond_1

    .line 2241
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2242
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2243
    :try_start_4
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2244
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2248
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2249
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2244
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 2202
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2273
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setVibrationEnabled(Ljava/lang/String;ZZ)V

    .line 2274
    return-void
.end method

.method public setVibrationEnabled(Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"
    .parameter "shouldSetRingerMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2286
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2287
    .local v0, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2288
    const-string v1, "AudioProfileService"

    const-string v2, "setVibrationEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2292
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2295
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2296
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "vibrate_in_silent"

    if-eqz p2, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2298
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 2299
    if-eqz p2, :cond_5

    .line 2300
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2301
    iput v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2302
    const-string v1, "AudioProfileService"

    const-string v2, "setVibrationEnabled true,change RingerMode to VIBRATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_2
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToDatabase(Ljava/lang/String;Z)V

    .line 2312
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2313
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 2314
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2316
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2317
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 2319
    :cond_3
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVibrationEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shouldSetRingerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v3

    .line 2296
    goto :goto_1

    .line 2304
    :cond_5
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2305
    iput v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2306
    const-string v1, "AudioProfileService"

    const-string v2, "setVibrationEnabled false,change RingerMode to SILENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2314
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public syncRingerVolumeToProfile(Ljava/lang/String;I)V
    .locals 3
    .parameter "profileKey"
    .parameter "volume"

    .prologue
    .line 3317
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v0, p2, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3324
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3330
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3336
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    :cond_0
    return-void
.end method
