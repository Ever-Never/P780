.class public Lcom/mediatek/audioprofile/AudioProfileManager;
.super Ljava/lang/Object;
.source "AudioProfileManager.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;,
        Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;
    }
.end annotation


# static fields
.field public static final ACTION_PROFILE_CHANGED:Ljava/lang/String; = "com.mediatek.audioprofile.ACTION_PROFILE_CHANGED"

.field private static final DEFAULT_HAND_FREE_CARMODE:Z = true

.field public static final DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri; = null

.field public static final DEFAULT_SMS_NOTI_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SMS_NOTI_URI_2:Landroid/net/Uri; = null

.field public static final DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri; = null

.field public static final EXTRA_PROFILE_SCENARIO:Ljava/lang/String; = "com.mediatek.audioprofile.EXTRA_PROFILE_SCENARIO"

.field public static final KEY_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_active"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_RINGTONE_2:Ljava/lang/String; = "mtk_audioprofile_default_ringtone_2"

.field public static final KEY_DEFAULT_SMS_NOTI:Ljava/lang/String; = "mtk_audioprofile_default_sms_noti"

.field public static final KEY_DEFAULT_SMS_NOTI_2:Ljava/lang/String; = "mtk_audioprofile_default_sms_noti_2"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field public static final LAST_ACTIVE_CUSTOM_DELETED:Ljava/lang/String; = "mtk_audioprofile_custom_deleted"

.field public static final LAST_ACTIVE_NON_CARMODE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_last_non_carmode"

.field public static final LAST_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_last_active"

.field public static final MAX_PROFILES_COUNT:I = 0xa

.field public static final PREDEFINED_PROFILES_COUNT:I = 0x5

.field public static final PROFILE_PREFIX:Ljava/lang/String; = "mtk_audioprofile_"

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field private static final SUFFIX_ALARM_VOLUME:Ljava/lang/String; = "_volume_alarm"

.field private static final SUFFIX_BOOT_AUDIO:Ljava/lang/String; = "_boot_audio"

.field protected static final SUFFIX_DATA:Ljava/lang/String; = "_data"

.field private static final SUFFIX_DTMFTONE:Ljava/lang/String; = "_dtmf_tone_enabled"

.field private static final SUFFIX_HAND_FREE:Ljava/lang/String; = "_hand_free"

.field private static final SUFFIX_HAPTICFEEDBACK:Ljava/lang/String; = "_haptic_feedback_enabled"

.field protected static final SUFFIX_KEY:Ljava/lang/String; = "_key"

.field private static final SUFFIX_LOCK_SCRREN:Ljava/lang/String; = "_lockscreen_sounds_enabled"

.field protected static final SUFFIX_NAME:Ljava/lang/String; = "_name"

.field private static final SUFFIX_NOTIFICATION_URI:Ljava/lang/String; = "_notification_sound"

.field private static final SUFFIX_NOTIFICATION_USE_RING:Ljava/lang/String; = "_notifications_use_ring_volume"

.field private static final SUFFIX_NOTIFICATION_VOLUME:Ljava/lang/String; = "_volume_notification"

.field private static final SUFFIX_POCKET_MODE:Ljava/lang/String; = "_pocket_mode"

.field private static final SUFFIX_RINGER_URI:Ljava/lang/String; = "_ringtone"

.field private static final SUFFIX_RINGER_URI_2:Ljava/lang/String; = "_ringtone_2"

.field private static final SUFFIX_RINGER_VOLUME:Ljava/lang/String; = "_volume_ring"

.field private static final SUFFIX_RINTONE_WEAKEN:Ljava/lang/String; = "_ringtone_weaken"

.field private static final SUFFIX_SMS_NOTIFI_URI:Ljava/lang/String; = "_sms_notifi"

.field private static final SUFFIX_SMS_NOTIFI_URI_2:Ljava/lang/String; = "_sms_notifi_2"

.field private static final SUFFIX_SOUNDEFFECT:Ljava/lang/String; = "_sound_effects_enabled"

.field private static final SUFFIX_VIBRATION:Ljava/lang/String; = "_vibrate_on"

.field private static final SUFFIX_VIDEO_CALL_URI:Ljava/lang/String; = "_video_call"

.field public static final SUPPORT_CAR_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioProfileManager"

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x40

.field public static final TYPE_SMS_NOTIFI:I = 0x20

.field public static final TYPE_SMS_NOTIFI_2:I = 0x80

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final UNSUPPORT_STREAM_VOLUME:I

.field private static sDEFAULTSTATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    .line 202
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 207
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI:Landroid/net/Uri;

    .line 208
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI_2:Landroid/net/Uri;

    .line 209
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    .line 213
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 253
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    .line 255
    return-void
.end method

.method public static getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x2

    .line 816
    if-nez p0, :cond_0

    .line 817
    const-string v2, "AudioProfileManager"

    const-string v3, "getAllKeys: Null profileKey!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v1, 0x0

    .line 849
    :goto_0
    return-object v1

    .line 821
    :cond_0
    const/16 v0, 0xe

    .line 822
    .local v0, keySize:I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 823
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    const/16 v2, 0x20

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    const/16 v2, 0x80

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    const/16 v2, 0x40

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBootAudioKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getPocketModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneWeakenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHandFreeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getBootAudioKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 1744
    if-eqz p0, :cond_0

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_boot_audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1747
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uriKey"

    .prologue
    .line 696
    if-eqz p0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 65
    .parameter "profileKey"

    .prologue
    .line 285
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v60, :cond_1

    .line 291
    new-instance v53, Lcom/mediatek/op/audioprofile/DefaultProfileStatesGetter;

    invoke-direct/range {v53 .. v53}, Lcom/mediatek/op/audioprofile/DefaultProfileStatesGetter;-><init>()V

    .line 294
    .local v53, defaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    if-eqz v53, :cond_0

    .line 295
    invoke-interface/range {v53 .. v53}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;->getDefaultProfileStates()Ljava/util/HashMap;

    move-result-object v60

    sput-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 297
    :cond_0
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v60, :cond_1

    .line 298
    new-instance v60, Ljava/util/HashMap;

    const/16 v61, 0x5

    invoke-direct/range {v60 .. v61}, Ljava/util/HashMap;-><init>(I)V

    sput-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 300
    const/16 v36, 0x4

    .line 301
    .local v36, DEFAULT_RINGER_VOLUME_GENERAL:I
    const/16 v39, 0x0

    .line 302
    .local v39, DEFAULT_RINGER_VOLUME_SILENT:I
    const/16 v37, 0x0

    .line 303
    .local v37, DEFAULT_RINGER_VOLUME_MEETING:I
    const/16 v38, 0x7

    .line 306
    .local v38, DEFAULT_RINGER_VOLUME_OUTDOOR:I
    const/16 v28, 0x4

    .line 307
    .local v28, DEFAULT_NOTIFICATION_VOLUME_GENERAL:I
    const/16 v31, 0x0

    .line 308
    .local v31, DEFAULT_NOTIFICATION_VOLUME_SILENT:I
    const/16 v29, 0x0

    .line 309
    .local v29, DEFAULT_NOTIFICATION_VOLUME_MEETING:I
    const/16 v30, 0x7

    .line 320
    .local v30, DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I
    const/4 v3, 0x5

    .line 321
    .local v3, DEFAULT_ALARM_VOLUME_GENERAL:I
    const/4 v6, 0x5

    .line 322
    .local v6, DEFAULT_ALARM_VOLUME_SILENT:I
    const/4 v4, 0x5

    .line 323
    .local v4, DEFAULT_ALARM_VOLUME_MEETING:I
    const/4 v5, 0x5

    .line 327
    .local v5, DEFAULT_ALARM_VOLUME_OUTDOOR:I
    const/16 v48, 0x0

    .line 331
    .local v48, DEFAULT_VIBRATION_GENERAL:Z
    const/16 v51, 0x1

    .line 334
    .local v51, DEFAULT_VIBRATION_SILENT:Z
    const/16 v49, 0x1

    .line 335
    .local v49, DEFAULT_VIBRATION_MEETING:Z
    const/16 v50, 0x1

    .line 343
    .local v50, DEFAULT_VIBRATION_OUTDOOR:Z
    const/4 v11, 0x0

    .line 346
    .local v11, DEFAULT_DTMFTONE_GENERAL:Z
    const/4 v14, 0x0

    .line 347
    .local v14, DEFAULT_DTMFTONE_SILENT:Z
    const/4 v12, 0x0

    .line 348
    .local v12, DEFAULT_DTMFTONE_MEETING:Z
    const/4 v13, 0x1

    .line 354
    .local v13, DEFAULT_DTMFTONE_OUTDOOR:Z
    const/16 v44, 0x0

    .line 355
    .local v44, DEFAULT_SOUNDEFFECT_GENERAL:Z
    const/16 v47, 0x0

    .line 356
    .local v47, DEFAULT_SOUNDEFFECT_SILENT:Z
    const/16 v45, 0x0

    .line 360
    .local v45, DEFAULT_SOUNDEFFECT_MEETING:Z
    const/16 v46, 0x1

    .line 366
    .local v46, DEFAULT_SOUNDEFFECT_OUTDOOR:Z
    const/16 v24, 0x0

    .line 369
    .local v24, DEFAULT_LOCK_SCREEN_GENERAL:Z
    const/16 v27, 0x0

    .line 370
    .local v27, DEFAULT_LOCK_SCREEN_SILENT:Z
    const/16 v25, 0x0

    .line 371
    .local v25, DEFAULT_LOCK_SCREEN_MEETING:Z
    const/16 v26, 0x1

    .line 381
    .local v26, DEFAULT_LOCK_SCREEN_OUTDOOR:Z
    const/16 v20, 0x1

    .line 382
    .local v20, DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z
    const/16 v23, 0x1

    .line 383
    .local v23, DEFAULT_HAPTIC_FEEDBACK_SILENT:Z
    const/16 v21, 0x1

    .line 384
    .local v21, DEFAULT_HAPTIC_FEEDBACK_MEETING:Z
    const/16 v22, 0x1

    .line 388
    .local v22, DEFAULT_HAPTIC_FEEDBACK_OUTDOOR:Z
    const/4 v7, 0x1

    .line 389
    .local v7, DEFAULT_BOOTAUDIO_GENERAL:Z
    const/4 v10, 0x0

    .line 390
    .local v10, DEFAULT_BOOTAUDIO_SILENT:Z
    const/4 v8, 0x0

    .line 391
    .local v8, DEFAULT_BOOTAUDIO_MEETING:Z
    const/4 v9, 0x1

    .line 393
    .local v9, DEFAULT_BOOTAUDIO_OUTDOOR:Z
    const/16 v32, 0x1

    .line 394
    .local v32, DEFAULT_POCKET_MODE_GENERAL:Z
    const/16 v35, 0x0

    .line 395
    .local v35, DEFAULT_POCKET_MODE_SILENT:Z
    const/16 v33, 0x0

    .line 396
    .local v33, DEFAULT_POCKET_MODE_MEETING:Z
    const/16 v34, 0x0

    .line 398
    .local v34, DEFAULT_POCKET_MODE_OUTDOOR:Z
    const/16 v40, 0x0

    .line 399
    .local v40, DEFAULT_RINGTONE_WEAKEN_GENERAL:Z
    const/16 v43, 0x0

    .line 400
    .local v43, DEFAULT_RINGTONE_WEAKEN_SILENT:Z
    const/16 v41, 0x0

    .line 401
    .local v41, DEFAULT_RINGTONE_WEAKEN_MEETING:Z
    const/16 v42, 0x0

    .line 403
    .local v42, DEFAULT_RINGTONE_WEAKEN_OUTDOOR:Z
    const/16 v16, 0x0

    .line 404
    .local v16, DEFAULT_HAND_FREE_GENERAL:Z
    const/16 v19, 0x0

    .line 405
    .local v19, DEFAULT_HAND_FREE_SILENT:Z
    const/16 v17, 0x0

    .line 406
    .local v17, DEFAULT_HAND_FREE_MEETING:Z
    const/16 v18, 0x0

    .line 407
    .local v18, DEFAULT_HAND_FREE_OUTDOOR:Z
    const/4 v15, 0x0

    .line 411
    .local v15, DEFAULT_HAND_FREE_CARMODE:Z
    new-instance v60, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x4

    const/16 v62, 0x4

    const/16 v63, 0x5

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI_2:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoRingtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    const/16 v62, 0x1

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v60 .. v64}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoEnable(ZZZZ)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v54

    .line 426
    .local v54, generalState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v60, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x5

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI_2:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoRingtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v60 .. v64}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoEnable(ZZZZ)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v59

    .line 444
    .local v59, silentState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v60, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x5

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI_2:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoRingtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v60 .. v64}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoEnable(ZZZZ)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v56

    .line 462
    .local v56, meetingState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v60, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x7

    const/16 v62, 0x7

    const/16 v63, 0x5

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI_2:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoRingtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v60 .. v64}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoEnable(ZZZZ)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v57

    .line 480
    .local v57, outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v60, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CARMODE:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x7

    const/16 v62, 0x7

    const/16 v63, 0x5

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI:Landroid/net/Uri;

    sget-object v62, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SMS_NOTI_URI_2:Landroid/net/Uri;

    sget-object v63, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v60 .. v63}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoRingtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v60 .. v64}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lenovoEnable(ZZZZ)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v52

    .line 500
    .local v52, carModeState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v61, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CARMODE:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v61 .. v61}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v60, "AudioProfileManager"

    const-string v61, "getDefaultState from default!"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v3           #DEFAULT_ALARM_VOLUME_GENERAL:I
    .end local v4           #DEFAULT_ALARM_VOLUME_MEETING:I
    .end local v5           #DEFAULT_ALARM_VOLUME_OUTDOOR:I
    .end local v6           #DEFAULT_ALARM_VOLUME_SILENT:I
    .end local v7           #DEFAULT_BOOTAUDIO_GENERAL:Z
    .end local v8           #DEFAULT_BOOTAUDIO_MEETING:Z
    .end local v9           #DEFAULT_BOOTAUDIO_OUTDOOR:Z
    .end local v10           #DEFAULT_BOOTAUDIO_SILENT:Z
    .end local v11           #DEFAULT_DTMFTONE_GENERAL:Z
    .end local v12           #DEFAULT_DTMFTONE_MEETING:Z
    .end local v13           #DEFAULT_DTMFTONE_OUTDOOR:Z
    .end local v14           #DEFAULT_DTMFTONE_SILENT:Z
    .end local v15           #DEFAULT_HAND_FREE_CARMODE:Z
    .end local v16           #DEFAULT_HAND_FREE_GENERAL:Z
    .end local v17           #DEFAULT_HAND_FREE_MEETING:Z
    .end local v18           #DEFAULT_HAND_FREE_OUTDOOR:Z
    .end local v19           #DEFAULT_HAND_FREE_SILENT:Z
    .end local v20           #DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z
    .end local v21           #DEFAULT_HAPTIC_FEEDBACK_MEETING:Z
    .end local v22           #DEFAULT_HAPTIC_FEEDBACK_OUTDOOR:Z
    .end local v23           #DEFAULT_HAPTIC_FEEDBACK_SILENT:Z
    .end local v24           #DEFAULT_LOCK_SCREEN_GENERAL:Z
    .end local v25           #DEFAULT_LOCK_SCREEN_MEETING:Z
    .end local v26           #DEFAULT_LOCK_SCREEN_OUTDOOR:Z
    .end local v27           #DEFAULT_LOCK_SCREEN_SILENT:Z
    .end local v28           #DEFAULT_NOTIFICATION_VOLUME_GENERAL:I
    .end local v29           #DEFAULT_NOTIFICATION_VOLUME_MEETING:I
    .end local v30           #DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I
    .end local v31           #DEFAULT_NOTIFICATION_VOLUME_SILENT:I
    .end local v32           #DEFAULT_POCKET_MODE_GENERAL:Z
    .end local v33           #DEFAULT_POCKET_MODE_MEETING:Z
    .end local v34           #DEFAULT_POCKET_MODE_OUTDOOR:Z
    .end local v35           #DEFAULT_POCKET_MODE_SILENT:Z
    .end local v36           #DEFAULT_RINGER_VOLUME_GENERAL:I
    .end local v37           #DEFAULT_RINGER_VOLUME_MEETING:I
    .end local v38           #DEFAULT_RINGER_VOLUME_OUTDOOR:I
    .end local v39           #DEFAULT_RINGER_VOLUME_SILENT:I
    .end local v40           #DEFAULT_RINGTONE_WEAKEN_GENERAL:Z
    .end local v41           #DEFAULT_RINGTONE_WEAKEN_MEETING:Z
    .end local v42           #DEFAULT_RINGTONE_WEAKEN_OUTDOOR:Z
    .end local v43           #DEFAULT_RINGTONE_WEAKEN_SILENT:Z
    .end local v44           #DEFAULT_SOUNDEFFECT_GENERAL:Z
    .end local v45           #DEFAULT_SOUNDEFFECT_MEETING:Z
    .end local v46           #DEFAULT_SOUNDEFFECT_OUTDOOR:Z
    .end local v47           #DEFAULT_SOUNDEFFECT_SILENT:Z
    .end local v48           #DEFAULT_VIBRATION_GENERAL:Z
    .end local v49           #DEFAULT_VIBRATION_MEETING:Z
    .end local v50           #DEFAULT_VIBRATION_OUTDOOR:Z
    .end local v51           #DEFAULT_VIBRATION_SILENT:Z
    .end local v52           #carModeState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v53           #defaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    .end local v54           #generalState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v56           #meetingState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v57           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v59           #silentState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v58

    .line 508
    .local v58, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    if-nez v58, :cond_2

    .line 509
    const-string v60, "AudioProfileManager"

    const-string v61, "getDefaultState: get null scenario and use custom scenario default!"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v58, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 512
    :cond_2
    invoke-virtual/range {v58 .. v58}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v55

    .line 513
    .local v55, index:I
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->size()I

    move-result v60

    move/from16 v0, v55

    move/from16 v1, v60

    if-lt v0, v1, :cond_3

    .line 514
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    const/16 v61, 0x0

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 516
    :goto_0
    return-object v60

    :cond_3
    sget-object v60, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/mediatek/audioprofile/AudioProfileState;

    goto :goto_0
.end method

.method public static getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 564
    if-eqz p0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dtmf_tone_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHandFreeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 1766
    if-eqz p0, :cond_0

    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_hand_free"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1769
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHapticKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 579
    if-eqz p0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 753
    if-eqz p0, :cond_0

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 711
    if-eqz p0, :cond_0

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 725
    if-eqz p0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_notifications_use_ring_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPocketModeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 1751
    if-eqz p0, :cond_0

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_pocket_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 2
    .parameter "scenario"

    .prologue
    .line 769
    if-eqz p0, :cond_0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtk_audioprofile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    :goto_0
    return-object v0

    .line 772
    :cond_0
    const-string v0, "AudioProfileManager"

    const-string v1, "getProfileKey with null scenario!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 739
    if-eqz p0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRingtoneWeakenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 1758
    if-eqz p0, :cond_0

    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ringtone_weaken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1761
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .locals 8
    .parameter "profileKey"

    .prologue
    .line 785
    if-nez p0, :cond_0

    .line 786
    const-string v5, "AudioProfileManager"

    const-string v6, "getScenario: Null key! Return CUSTOM as default!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 804
    :goto_0
    return-object v5

    .line 790
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 791
    .local v2, keyLen:I
    const-string v5, "mtk_audioprofile_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 792
    .local v4, startIndex:I
    if-ge v2, v4, :cond_1

    .line 793
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScenario: Invalid key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Return CUSTOM as default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0

    .line 797
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 799
    .local v1, endIndex:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #endIndex:I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, scenarioStr:Ljava/lang/String;
    :try_start_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->valueOf(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not convert string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to Scenario type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0
.end method

.method private static getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .locals 2

    .prologue
    .line 263
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    .line 268
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 266
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string v1, "audioprofile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 267
    .restart local v0       #binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    .line 268
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    goto :goto_0
.end method

.method public static getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 549
    if-eqz p0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "profileKey"
    .parameter "type"

    .prologue
    .line 634
    if-nez p0, :cond_0

    .line 635
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    .line 670
    :goto_0
    return-object v0

    .line 639
    :cond_0
    const/4 v0, 0x0

    .line 640
    .local v0, uriKey:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 668
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    goto :goto_0

    .line 646
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    goto :goto_0

    .line 650
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_video_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    goto :goto_0

    .line 655
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sms_notifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    goto :goto_0

    .line 659
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sms_notifi_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    goto :goto_0

    .line 663
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    goto/16 :goto_0

    .line 640
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

.method public static getStreamUriKeys(I)Ljava/util/List;
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .local v0, arr$:[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 684
    .local v6, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 685
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mtk_audioprofile_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, prefix:Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 688
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v6           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    return-object v3
.end method

.method public static getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "profileKey"
    .parameter "type"

    .prologue
    .line 597
    if-nez p0, :cond_0

    .line 598
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v0, 0x0

    .line 619
    :goto_0
    return-object v0

    .line 602
    :cond_0
    const/4 v0, 0x0

    .line 603
    .local v0, volumeKey:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 617
    :pswitch_0
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_ring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    goto :goto_0

    .line 609
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    goto :goto_0

    .line 613
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    goto :goto_0

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getVibrationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 533
    if-eqz p0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activeCarMode()Z
    .locals 4

    .prologue
    .line 1776
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1779
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->activeCarMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1782
    :goto_0
    return v2

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in activeCarMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addProfile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 883
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 885
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->addProfile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 888
    :goto_0
    return-object v2

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 900
    if-nez p1, :cond_0

    .line 901
    const-string v3, "AudioProfileManager"

    const-string v4, "deleteProfile with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_0
    return v2

    .line 905
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 907
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in deleteProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfileHandFreeEnabled()Z
    .locals 2

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1739
    .local v0, profileKey:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHandFreeEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1016
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1018
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1021
    :goto_0
    return-object v2

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllProfileKeys()Ljava/util/List;
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
    .line 947
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 949
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getAllProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 952
    :goto_0
    return-object v2

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getAllProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBootAudioEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1615
    if-nez p1, :cond_0

    .line 1616
    const-string v3, "AudioProfileManager"

    const-string v4, "getBootAudioEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :goto_0
    return v2

    .line 1620
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1622
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getBootAudioEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getBootAudioEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 977
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 979
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getCustomizedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 982
    :goto_0
    return-object v2

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getCustomizedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .parameter "type"

    .prologue
    .line 1583
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1585
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1588
    :goto_0
    return-object v2

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1588
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1147
    if-nez p1, :cond_0

    .line 1148
    const-string v3, "AudioProfileManager"

    const-string v4, "getDtmfToneEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :goto_0
    return v2

    .line 1152
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1154
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getDtmfToneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getDtmfToneEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHandFreeEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1706
    if-nez p1, :cond_0

    .line 1707
    const-string v3, "AudioProfileManager"

    const-string v4, "getHandFreeEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :goto_0
    return v2

    .line 1711
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1713
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getHandFreeEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getHandFreeEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1213
    if-nez p1, :cond_0

    .line 1214
    const-string v3, "AudioProfileManager"

    const-string v4, "getHapticFeedbackEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_0
    return v2

    .line 1218
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1220
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getHapticFeedbackEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getHapticFeedbackEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1031
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1033
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1036
    :goto_0
    return-object v2

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getLastActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1191
    if-nez p1, :cond_0

    .line 1192
    const-string v3, "AudioProfileManager"

    const-string v4, "getLockScreenEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_0
    return v2

    .line 1196
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1198
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getLockScreenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getLockScreenEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPocketModeEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1645
    if-nez p1, :cond_0

    .line 1646
    const-string v3, "AudioProfileManager"

    const-string v4, "getPocketModeEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :goto_0
    return v2

    .line 1650
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1652
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getPocketModeEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getPocketModeEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
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
    .line 962
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 964
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 967
    :goto_0
    return-object v2

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getPredefinedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 932
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 934
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 937
    :goto_0
    return v2

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1296
    if-nez p1, :cond_0

    .line 1297
    const-string v3, "AudioProfileManager"

    const-string v4, "getProfileName with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :goto_0
    return-object v2

    .line 1301
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1303
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getProfileName"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 22
    .parameter "profileKey"

    .prologue
    .line 1235
    if-nez p1, :cond_0

    .line 1236
    const-string v19, "AudioProfileManager"

    const-string v20, "getProfileState with null profile key!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v10, 0x0

    .line 1285
    :goto_0
    return-object v10

    .line 1241
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v12

    .line 1243
    .local v12, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1249
    .local v14, state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1250
    .local v15, value:Ljava/lang/String;
    if-nez v15, :cond_1

    const/16 v18, 0x0

    .line 1251
    .local v18, voiceCallUri:Landroid/net/Uri;
    :goto_1
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1252
    .restart local v15       #value:Ljava/lang/String;
    if-nez v15, :cond_2

    const/4 v8, 0x0

    .line 1253
    .local v8, notificationUri:Landroid/net/Uri;
    :goto_2
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1254
    .restart local v15       #value:Ljava/lang/String;
    if-nez v15, :cond_3

    const/16 v17, 0x0

    .line 1256
    .local v17, videoCallUri:Landroid/net/Uri;
    :goto_3
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1257
    .restart local v15       #value:Ljava/lang/String;
    if-nez v15, :cond_4

    const/4 v11, 0x0

    .line 1258
    .local v11, ringerVolume:I
    :goto_4
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1259
    .restart local v15       #value:Ljava/lang/String;
    if-nez v15, :cond_5

    const/4 v9, 0x0

    .line 1260
    .local v9, notificationVolume:I
    :goto_5
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1261
    .restart local v15       #value:Ljava/lang/String;
    if-nez v15, :cond_6

    const/4 v3, 0x0

    .line 1263
    .local v3, alarmVolume:I
    :goto_6
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1264
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 1265
    .local v16, vibration:Z
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1266
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1267
    .local v4, dtmfTone:Z
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1268
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1269
    .local v13, soundEffect:Z
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1270
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1271
    .local v7, lockScreensound:Z
    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #value:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1272
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1274
    .local v6, hapticFeedback:Z
    new-instance v19, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v8, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v9, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v10

    .line 1283
    .local v10, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    const-string v19, "AudioProfileManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getProfileState for profileKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1244
    .end local v3           #alarmVolume:I
    .end local v4           #dtmfTone:Z
    .end local v6           #hapticFeedback:Z
    .end local v7           #lockScreensound:Z
    .end local v8           #notificationUri:Landroid/net/Uri;
    .end local v9           #notificationVolume:I
    .end local v10           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v11           #ringerVolume:I
    .end local v13           #soundEffect:Z
    .end local v14           #state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #value:Ljava/lang/String;
    .end local v16           #vibration:Z
    .end local v17           #videoCallUri:Landroid/net/Uri;
    .end local v18           #voiceCallUri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 1245
    .local v5, e:Landroid/os/RemoteException;
    const-string v19, "AudioProfileManager"

    const-string v20, "Dead object in getProfileState"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1250
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v14       #state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15       #value:Ljava/lang/String;
    :cond_1
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    goto/16 :goto_1

    .line 1252
    .restart local v18       #voiceCallUri:Landroid/net/Uri;
    :cond_2
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_2

    .line 1254
    .restart local v8       #notificationUri:Landroid/net/Uri;
    :cond_3
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    goto/16 :goto_3

    .line 1257
    .restart local v17       #videoCallUri:Landroid/net/Uri;
    :cond_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto/16 :goto_4

    .line 1259
    .restart local v11       #ringerVolume:I
    :cond_5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_5

    .line 1261
    .restart local v9       #notificationVolume:I
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_6
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1055
    if-nez p1, :cond_0

    .line 1056
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :goto_0
    return-object v2

    .line 1062
    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/16 v3, 0x8

    if-eq p2, v3, :cond_1

    const/16 v3, 0x40

    if-eq p2, v3, :cond_1

    const/16 v3, 0x80

    if-eq p2, v3, :cond_1

    const/16 v3, 0x20

    if-ne p2, v3, :cond_2

    .line 1069
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1071
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1076
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getRingtoneUri"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1080
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRingtoneWeakenEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1675
    if-nez p1, :cond_0

    .line 1676
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneWeakenEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :goto_0
    return v2

    .line 1680
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1682
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getRingtoneWeakenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getRingtoneWeakenEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1169
    if-nez p1, :cond_0

    .line 1170
    const-string v3, "AudioProfileManager"

    const-string v4, "getSoundEffectEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :goto_0
    return v2

    .line 1174
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1176
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getSoundEffectEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getSoundEffectEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1564
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1566
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1569
    :goto_0
    return v2

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"

    .prologue
    const/4 v2, 0x0

    .line 1097
    if-nez p1, :cond_0

    .line 1098
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :goto_0
    return v2

    .line 1102
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 1104
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1106
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamVolume(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1112
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1125
    if-nez p1, :cond_0

    .line 1126
    const-string v3, "AudioProfileManager"

    const-string v4, "getVibrationEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :goto_0
    return v2

    .line 1130
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1132
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getVibrationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getVibrationEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1519
    if-nez p1, :cond_0

    .line 1520
    const-string v3, "AudioProfileManager"

    const-string v4, "isActive with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :goto_0
    return v2

    .line 1524
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1526
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isActive(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isActive"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 995
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    :cond_0
    const-string v3, "AudioProfileManager"

    const-string v4, "isNameExist: Null or empty name!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :goto_0
    return v2

    .line 1000
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1002
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isNameExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in setActiveProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1540
    if-nez p1, :cond_0

    .line 1541
    const-string v3, "AudioProfileManager"

    const-string v4, "isRingtoneExist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :goto_0
    return v2

    .line 1545
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1547
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isRingtoneExist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "event"

    .prologue
    .line 1605
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1607
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->getCallback()Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    :goto_0
    return-void

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in listenAudioProfie"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 918
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 920
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :goto_0
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in reset"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public revertCarMode()V
    .locals 4

    .prologue
    .line 1787
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1790
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->revertCarMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    :goto_0
    return-void

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in revertCarMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 863
    if-nez p1, :cond_0

    .line 864
    const-string v2, "AudioProfileManager"

    const-string v3, "setActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_0
    return-void

    .line 868
    :cond_0
    const-string v2, "AudioProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 871
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setActiveProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootAudioEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1630
    if-nez p1, :cond_0

    .line 1631
    const-string v2, "AudioProfileManager"

    const-string v3, "setBootAudioEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :goto_0
    return-void

    .line 1635
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1637
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setBootAudioEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setBootAudioEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1411
    if-nez p1, :cond_0

    .line 1412
    const-string v2, "AudioProfileManager"

    const-string v3, "setDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_0
    return-void

    .line 1416
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1418
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHandFreeEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1721
    if-nez p1, :cond_0

    .line 1722
    const-string v2, "AudioProfileManager"

    const-string v3, "setHandFreeEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :goto_0
    return-void

    .line 1726
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1728
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setHandFreeEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setHandFreeEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1474
    if-nez p1, :cond_0

    .line 1475
    const-string v2, "AudioProfileManager"

    const-string v3, "setHapticFeedbackEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :goto_0
    return-void

    .line 1479
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1481
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setHapticFeedbackEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1453
    if-nez p1, :cond_0

    .line 1454
    const-string v2, "AudioProfileManager"

    const-string v3, "setLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :goto_0
    return-void

    .line 1458
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1460
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setLockScreenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPocketModeEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1660
    if-nez p1, :cond_0

    .line 1661
    const-string v2, "AudioProfileManager"

    const-string v3, "setPocketModeEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :goto_0
    return-void

    .line 1665
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1667
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setPocketModeEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setPocketModeEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"
    .parameter "newName"

    .prologue
    .line 1495
    if-nez p1, :cond_0

    .line 1496
    const-string v2, "AudioProfileManager"

    const-string v3, "setProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_0
    return-void

    .line 1500
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1502
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .parameter "profileKey"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 1325
    if-nez p1, :cond_0

    .line 1326
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :goto_0
    return-void

    .line 1332
    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    const/16 v2, 0x40

    if-eq p2, v2, :cond_1

    const/16 v2, 0x80

    if-eq p2, v2, :cond_1

    const/16 v2, 0x20

    if-eq p2, v2, :cond_1

    .line 1339
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1343
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1345
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneWeakenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1690
    if-nez p1, :cond_0

    .line 1691
    const-string v2, "AudioProfileManager"

    const-string v3, "setRingtoneWeakenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :goto_0
    return-void

    .line 1695
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1697
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setRingtoneWeakenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setRingtoneWeakenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1432
    if-nez p1, :cond_0

    .line 1433
    const-string v2, "AudioProfileManager"

    const-string v3, "setSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :goto_0
    return-void

    .line 1437
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1439
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setSoundEffectEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 4
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "index"

    .prologue
    .line 1363
    if-nez p1, :cond_0

    .line 1364
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :goto_0
    return-void

    .line 1368
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1370
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1374
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1376
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setStreamVolume(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1390
    if-nez p1, :cond_0

    .line 1391
    const-string v2, "AudioProfileManager"

    const-string v3, "setVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :goto_0
    return-void

    .line 1395
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1397
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setVibrationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
