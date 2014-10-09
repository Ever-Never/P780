.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field private static final DRM_LEVEL_ALL:I = 0x4

.field private static final DRM_LEVEL_FL:I = 0x1

.field private static final DRM_LEVEL_SD:I = 0x2

.field private static final EXTRA_DRM_LEVEL:Ljava/lang/String; = "android.intent.extra.drm_level"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_MORE_RINGTONES:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String; = null

.field public static final KEY_DEFAULT_ALARM:Ljava/lang/String; = "mtk_audioprofile_default_alarm"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_RINGTONE_2:Ljava/lang/String; = "mtk_audioprofile_default_ringtone_2"

.field public static final KEY_DEFAULT_SMS_NOTI:Ljava/lang/String; = "mtk_audioprofile_default_sms_noti"

.field public static final KEY_DEFAULT_SMS_NOTI_2:Ljava/lang/String; = "mtk_audioprofile_default_sms_noti_2"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field public static final SUPPORT_RINGTONE_PROFILE_DISBINDING:Z = true

.field public static final SUPPORT_RINGTONE_SIM_BINDING:Z = false

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x40

.field public static final TYPE_SMS_NOTIFI:I = 0x20

.field public static final TYPE_SMS_NOTIFI_2:I = 0x80

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeDrm:Z

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 288
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title AS title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    .line 294
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "is_drm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "drm_method"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 388
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 400
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 401
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 402
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 388
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 412
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 413
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 414
    return-void
.end method

.method private appendDrmToWhereClause()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 769
    iget-object v3, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 770
    const-string v3, ""

    .line 794
    :goto_0
    return-object v3

    .line 776
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v3, "is_drm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v3, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 783
    .local v1, it:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 785
    const-string v3, "android.intent.extra.drm_level"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 786
    .local v0, extraValue:I
    if-ne v0, v5, :cond_1

    .line 787
    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drm_method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .end local v0           #extraValue:I
    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 765
    :goto_0
    return-object v2

    .line 743
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 747
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 750
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 752
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 755
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 868
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-object v2

    .line 870
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, uriString:Ljava/lang/String;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get actual default ringtone uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUriBySimId(Landroid/content/Context;IJ)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "simId"

    .prologue
    .line 1138
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1140
    .local v0, defaultUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, setting:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1156
    .end local v0           #defaultUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 1144
    .restart local v0       #defaultUri:Landroid/net/Uri;
    :cond_1
    const-string/jumbo v3, "sms_notifi_sound_2"

    if-ne v1, v3, :cond_3

    .line 1145
    const-string/jumbo v1, "sms_notifi_sound"

    .line 1150
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_sim_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, uriString:Ljava/lang/String;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualDefaultRingtoneUriBySimId uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1146
    .end local v2           #uriString:Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "ringtone_2"

    if-ne v1, v3, :cond_2

    .line 1147
    const-string/jumbo v1, "ringtone"

    goto :goto_1
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, defaultUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1078
    .local v2, uriString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1079
    .local v1, resolver:Landroid/content/ContentResolver;
    sparse-switch p1, :sswitch_data_0

    .line 1112
    const-string v4, "RingtoneManager"

    const-string v5, "getDefaultRingtoneUri with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :goto_0
    return-object v3

    .line 1081
    :sswitch_0
    const-string/jumbo v4, "mtk_audioprofile_default_ringtone"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    :goto_1
    if-nez v2, :cond_0

    move-object v0, v3

    .line 1116
    :goto_2
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultRingtoneUri: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 1117
    goto :goto_0

    .line 1085
    :sswitch_1
    const-string/jumbo v4, "mtk_audioprofile_default_notification"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    goto :goto_1

    .line 1089
    :sswitch_2
    const-string/jumbo v4, "mtk_audioprofile_default_alarm"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    goto :goto_1

    .line 1094
    :sswitch_3
    const-string/jumbo v4, "mtk_audioprofile_default_sms_noti"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1095
    goto :goto_1

    .line 1098
    :sswitch_4
    const-string/jumbo v4, "mtk_audioprofile_default_ringtone_2"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1099
    goto :goto_1

    .line 1102
    :sswitch_5
    const-string/jumbo v4, "mtk_audioprofile_default_sms_noti_2"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    goto :goto_1

    .line 1108
    :sswitch_6
    const-string/jumbo v4, "mtk_audioprofile_default_video_call"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    goto :goto_1

    .line 1115
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1079
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_6
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .parameter "defaultRingtoneUri"

    .prologue
    const/4 v0, -0x1

    .line 982
    if-nez p0, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return v0

    .line 984
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 985
    const/4 v0, 0x1

    goto :goto_0

    .line 986
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 987
    const/4 v0, 0x2

    goto :goto_0

    .line 988
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 989
    const/4 v0, 0x4

    goto :goto_0

    .line 992
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 993
    const/16 v0, 0x20

    goto :goto_0

    .line 994
    :cond_5
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 995
    const/16 v0, 0x80

    goto :goto_0

    .line 996
    :cond_6
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 997
    const/16 v0, 0x40

    goto :goto_0

    .line 1000
    :cond_7
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 1017
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1018
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1036
    :goto_0
    return-object v0

    .line 1019
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1020
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1021
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1022
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1025
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 1026
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1027
    :cond_3
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_4

    .line 1028
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 1029
    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    .line 1030
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 1033
    :cond_5
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    .line 1034
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1036
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 679
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "title"

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 671
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v4, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneManager;->appendDrmToWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 686
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, status:Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v5, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v3, v5}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneManager;->appendDrmToWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    .line 819
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtoneBaidu(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 6
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    const/4 v2, 0x0

    .line 834
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 835
    .local v1, r:Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 836
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 838
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 841
    invoke-virtual {v1}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 851
    .end local v1           #r:Landroid/media/Ringtone;
    :cond_1
    :goto_0
    return-object v1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open ringtone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 851
    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 937
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 938
    const-string/jumbo v0, "ringtone"

    .line 957
    :goto_0
    return-object v0

    .line 939
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 940
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 941
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 942
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 945
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 946
    const-string/jumbo v0, "sms_notifi_sound"

    goto :goto_0

    .line 947
    :cond_3
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_4

    .line 948
    const-string/jumbo v0, "sms_notifi_sound_2"

    goto :goto_0

    .line 949
    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    .line 950
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 954
    :cond_5
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    .line 955
    const-string/jumbo v0, "video_call"

    goto :goto_0

    .line 957
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 585
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 588
    :goto_0
    return-object v1

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Landroid/database/StaleDataException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 640
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 642
    .local v0, rm:Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 644
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 645
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 648
    :cond_0
    if-nez v1, :cond_1

    .line 649
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 652
    :cond_1
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 656
    if-eqz p1, :cond_1

    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 662
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 666
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 968
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1202
    const-string v3, "RingtoneManager"

    const-string v4, "Check ringtone exist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v1, 0x0

    .line 1233
    :goto_0
    return v1

    .line 1205
    :cond_0
    const/4 v1, 0x0

    .line 1207
    .local v1, exist:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1208
    .local v2, fd:Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_1

    .line 1209
    const/4 v1, 0x0

    .line 1232
    .end local v2           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_1
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    .restart local v2       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1212
    const/4 v1, 0x1

    goto :goto_1

    .line 1214
    .end local v2           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 1215
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1216
    const/4 v1, 0x0

    .line 1229
    goto :goto_1

    .line 1217
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1218
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1221
    const/4 v1, 0x0

    .line 1229
    goto :goto_1

    .line 1226
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1227
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1228
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 802
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 12
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0x40

    const/4 v10, 0x1

    .line 886
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v3

    .line 887
    .local v3, setting:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, numString:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 892
    .local v1, lastChar:I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 893
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 895
    .local v6, uriNum:I
    if-ltz v6, :cond_0

    .line 898
    .end local v1           #lastChar:I
    .end local v2           #numString:Ljava/lang/String;
    .end local v6           #uriNum:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-static {v9, v3, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 902
    if-ne p1, v10, :cond_4

    .line 904
    invoke-static {v11}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v3

    .line 905
    if-eqz v3, :cond_0

    .line 907
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-static {v7, v3, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 911
    const/4 v7, 0x0

    invoke-static {p0, v7}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 914
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_3

    .line 915
    iget-wide v4, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 917
    .local v4, simId:J
    invoke-static {p0, v10, p2, v4, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUriBySimId(Landroid/content/Context;ILandroid/net/Uri;J)V

    .line 922
    .end local v4           #simId:J
    :cond_3
    invoke-static {p0, v10}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 925
    if-eqz v0, :cond_4

    .line 926
    iget-wide v4, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 928
    .restart local v4       #simId:J
    invoke-static {p0, v11, p2, v4, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUriBySimId(Landroid/content/Context;ILandroid/net/Uri;J)V

    .line 933
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #simId:J
    :cond_4
    const-string v7, "RingtoneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set actual default ringtone uri= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object v7, v8

    .line 898
    goto :goto_2

    .line 896
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static setActualDefaultRingtoneUriBySimId(Landroid/content/Context;ILandroid/net/Uri;J)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"
    .parameter "simId"

    .prologue
    .line 1172
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1176
    :cond_0
    const-string/jumbo v1, "sms_notifi_sound_2"

    if-ne v0, v1, :cond_2

    .line 1177
    const-string/jumbo v0, "sms_notifi_sound"

    .line 1182
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1186
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActualDefaultRingtoneUriBySimId uri= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1178
    :cond_2
    const-string/jumbo v1, "ringtone_2"

    if-ne v0, v1, :cond_1

    .line 1179
    const-string/jumbo v0, "ringtone"

    goto :goto_1

    .line 1184
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 698
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 699
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 701
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 703
    :cond_0
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 707
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 711
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_3
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 716
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_5

    .line 720
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_5
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_6

    .line 724
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_6
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 521
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 526
    :cond_0
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCursor with old cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 539
    :goto_0
    return-object v3

    .line 531
    :cond_1
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 532
    .local v1, internalCursor:Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 533
    .local v0, drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    .line 535
    .local v2, mediaCursor:Landroid/database/Cursor;
    new-instance v3, Lcom/android/internal/database/SortCursor;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v5, "title_key"

    invoke-direct {v3, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 538
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCursor with new cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 532
    .end local v0           #drmCursor:Landroid/database/Cursor;
    .end local v2           #mediaCursor:Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getIncludeDrm()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    return v0
.end method

.method public getNewCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 1054
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 1055
    .local v1, internalCursor:Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 1056
    .local v0, drmCursor:Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    .line 1058
    .local v2, mediaCursor:Landroid/database/Cursor;
    new-instance v3, Lcom/android/internal/database/SortCursor;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v5, "title_key"

    invoke-direct {v3, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 1061
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNewCursor with cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v3

    .line 1055
    .end local v0           #drmCursor:Landroid/database/Cursor;
    .end local v2           #mediaCursor:Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .parameter "position"

    .prologue
    .line 552
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtoneBaidu(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 557
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 9
    .parameter "ringtoneUri"

    .prologue
    const/4 v6, -0x1

    .line 601
    if-nez p1, :cond_1

    move v3, v6

    .line 629
    :cond_0
    :goto_0
    return v3

    .line 603
    :cond_1
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 604
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 606
    .local v2, cursorCount:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v6

    .line 607
    goto :goto_0

    .line 611
    :cond_2
    const/4 v0, 0x0

    .line 612
    .local v0, currentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 613
    .local v4, previousUriString:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 614
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, uriString:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 616
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 619
    :cond_4
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 624
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 626
    move-object v4, v5

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5           #uriString:Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 629
    goto :goto_0
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-object v0

    .line 574
    :cond_1
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 445
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 448
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 0
    .parameter "includeDrm"

    .prologue
    .line 501
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    .line 502
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .parameter "stopPreviousRingtone"

    .prologue
    .line 466
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 467
    return-void
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 426
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 432
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 433
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 483
    :cond_0
    return-void
.end method

.method private static getRingtoneBaidu(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 11
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    new-instance v9, Landroid/media/Ringtone;

    invoke-direct {v9, p0, v0}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .local v9, r:Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    invoke-virtual {v9, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_0
    const/4 v6, 0x0

    .local v6, cursor:Landroid/database/Cursor;
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .local v2, MEDIA_COLUMNS_CHECK:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v9, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9           #r:Landroid/media/Ringtone;
    :goto_1
    return-object v9

    .restart local v9       #r:Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    throw v0

    :catch_1
    move-exception v8

    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open ringtone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    new-instance v10, Landroid/media/Ringtone;

    const/4 v0, 0x1

    invoke-direct {v10, p0, v0}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .local v10, r2:Landroid/media/Ringtone;
    if-ltz p2, :cond_5

    invoke-virtual {v10, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_5
    invoke-virtual {v10, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v10

    goto :goto_1

    .end local v10           #r2:Landroid/media/Ringtone;
    :catch_2
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v0, "RingtoneManager"

    const-string v1, "Failed to fall back to default ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
