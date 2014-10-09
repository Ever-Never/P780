.class final enum Landroid/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum FMStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MATVStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MasterStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Landroid/view/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamTitle:I

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, #android:string@volume_icon_description_bluetooth#t

    const v5, 0x3080087

    const v6, 0x3080087

    const v8, 0x30b0028

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    .line 178
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, #android:string@volume_icon_description_ringer#t

    const v8, 0x3080090

    const v9, 0x3080096

    const v11, 0x30b0027

    move v5, v12

    move v6, v13

    move v10, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    .line 191
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const v7, #android:string@volume_icon_description_incall#t

    const v8, 0x308008f

    const v9, 0x308008f

    const v11, 0x30b0029

    move v5, v13

    move v6, v2

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    .line 205
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const v7, #android:string@volume_alarm#t

    const v8, 0x3080086

    const v9, #android:drawable@ic_audio_alarm_mute#t

    const v11, 0x30b002a

    move v5, v14

    move v6, v15

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    .line 215
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "FMStream"

    const/16 v6, 0xa

    const v7, 0x2050051

    const v8, 0x30800b7

    const v9, 0x30800b6

    const v11, 0x30b002b

    move v5, v15

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    .line 227
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MATVStream"

    const/4 v5, 0x5

    const/16 v6, 0xb

    const v7, 0x2050052

    const v8, #android:drawable@ic_volume_small#t

    const v9, #android:drawable@ic_volume_off_small#t

    const v11, 0x30b002c

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    .line 235
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const/4 v5, 0x6

    const v7, #android:string@volume_icon_description_media#t

    const v8, 0x3080094

    const v9, #android:drawable@ic_audio_vol_mute#t

    const v11, 0x30b002d

    move v6, v14

    move v10, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    .line 247
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x7

    const/4 v6, 0x5

    const v7, #android:string@volume_icon_description_notification#t

    const v8, 0x308008b

    const v9, 0x308008c

    const v11, 0x30b002e

    move v10, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    .line 259
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MasterStream"

    const/16 v5, 0x8

    const/16 v6, -0x64

    const v7, #android:string@volume_icon_description_media#t

    const v8, #android:drawable@ic_audio_vol#t

    const v9, #android:drawable@ic_audio_vol_mute#t

    const v11, 0x30b002d

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    .line 268
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "RemoteStream"

    const/16 v5, 0x9

    const/16 v6, -0xc8

    const v7, #android:string@volume_icon_description_media#t

    const v8, #android:drawable@ic_media_route_on_holo_dark#t

    const v9, #android:drawable@ic_media_route_disabled_holo_dark#t

    const v11, 0x30b002d

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    .line 164
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v12

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v13

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v14

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .parameter "streamTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZI)V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput p3, p0, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 295
    iput p4, p0, Landroid/view/VolumePanel$StreamResources;->descRes:I

    .line 296
    iput p5, p0, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    .line 297
    iput p6, p0, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 298
    iput-boolean p7, p0, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 300
    iput p8, p0, Landroid/view/VolumePanel$StreamResources;->streamTitle:I

    .line 302
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/VolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 164
    const-class v0, Landroid/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Landroid/view/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Landroid/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method
