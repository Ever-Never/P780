.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$AudioProfileManagerEx;,
        Landroid/view/VolumePanel$WarningDialogReceiver;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static final GENERAL_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_general"

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MEETING_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final OUTDOOR_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_outdoor"

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final SILENT_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_silent"

.field protected static final STREAMS:[Landroid/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0x7d0

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private audioProfile:Landroid/view/ViewGroup;

.field private audioProfileGroup:Landroid/widget/RadioGroup;

.field private audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

.field private generalRadio:Landroid/widget/RadioButton;

.field protected mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field protected final mSliderGroup:Landroid/view/ViewGroup;

.field protected mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private muteRadio:Landroid/widget/RadioButton;

.field private outdoorRadio:Landroid/widget/RadioButton;

.field private vibrateRadio:Landroid/widget/RadioButton;

.field private volumepanelAudioprofile:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    sput-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    .line 306
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    .line 337
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 11
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 368
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    const/4 v8, -0x1

    iput v8, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 369
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 370
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 371
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:bool@config_useMasterVolume#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 376
    .local v6, useMasterVolume:Z
    if-eqz v6, :cond_1

    .line 377
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    .line 378
    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v8, v0

    .line 379
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 383
    .end local v0           #i:I
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_1
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 387
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, #android:layout@zzzzzzzzzzz_volume_adjust#t

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 393
    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/VolumePanel$1;

    invoke-direct {v9, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 399
    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, #android:id@visible_panel#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 400
    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, #android:id@slider_group#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 401
    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, #android:id@expand_button#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 402
    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, #android:id@expand_button_divider#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 406
    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v9, #android:id@zzzzzzzzzzz_volumepanel_audioprofile#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Landroid/view/VolumePanel;->volumepanelAudioprofile:Landroid/view/ViewGroup;

    .line 408
    new-instance v8, Landroid/view/VolumePanel$AudioProfileManagerEx;

    invoke-direct {v8, p0}, Landroid/view/VolumePanel$AudioProfileManagerEx;-><init>(Landroid/view/VolumePanel;)V

    iput-object v8, p0, Landroid/view/VolumePanel;->audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

    .line 409
    iget-object v8, p0, Landroid/view/VolumePanel;->audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "audioprofile"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/VolumePanel$AudioProfileManagerEx;->setRealObject(Ljava/lang/Object;)V

    .line 413
    new-instance v8, Landroid/view/VolumePanel$2;

    const v9, #android:style@Theme.Panel.Volume#t

    invoke-direct {v8, p0, p1, v9}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v8, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 422
    iget-object v8, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v9, "Volume control"

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v8, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 424
    iget-object v8, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v9, Landroid/view/VolumePanel$3;

    invoke-direct {v9, p0}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 449
    iget-object v8, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 450
    .local v7, window:Landroid/view/Window;
    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 451
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 452
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    iput-object v8, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 454
    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:dimen@volume_panel_top#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 456
    const/16 v8, 0x7e4

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 457
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 458
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 459
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 460
    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 462
    const v8, #android:style@Animation.ZoomButtons#t

    invoke-virtual {v7, v8}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 466
    const v8, 0x40028

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 471
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    new-array v8, v8, [Landroid/media/ToneGenerator;

    iput-object v8, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 472
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 474
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:bool@config_voice_capable#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 475
    iget-boolean v8, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v8, :cond_2

    if-nez v6, :cond_2

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 479
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 482
    iget-boolean v8, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v8, :cond_3

    .line 483
    iget-object v8, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v8, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:bool@config_useMasterVolume#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 491
    .local v4, masterVolumeOnly:Z
    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:bool@config_useVolumeKeySounds#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 494
    .local v3, masterVolumeKeySounds:Z
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    invoke-virtual {p0}, Landroid/view/VolumePanel;->resetVolumePanel()V

    return-void

    .end local v3           #masterVolumeKeySounds:Z
    .end local v4           #masterVolumeOnly:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 486
    :cond_3
    iget-object v8, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 494
    .restart local v3       #masterVolumeKeySounds:Z
    .restart local v4       #masterVolumeOnly:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_4
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-object p0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/view/VolumePanel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$402(Landroid/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$500(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/VolumePanel;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    return-void
.end method

.method static synthetic access$900(Landroid/view/VolumePanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    return-void
.end method

# virtual methods
.method protected addOtherVolumes()V
    .locals 5

    .prologue
    .line 707
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 724
    :cond_0
    return-void

    .line 709
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 711
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 712
    .local v2, streamType:I
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 709
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_3
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    iget-object v3, v1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v3}, Landroid/view/VolumePanel;->setSeekBarWidth(Landroid/view/View;)V

    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private changedProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "Typekey"

    .prologue
    .line 1562
    :try_start_0
    iget-object v2, p0, Landroid/view/VolumePanel;->audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

    if-nez v2, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    iget-object v2, p0, Landroid/view/VolumePanel;->audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

    invoke-virtual {v2}, Landroid/view/VolumePanel$AudioProfileManagerEx;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, cuStringType:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1569
    iget-object v2, p0, Landroid/view/VolumePanel;->audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

    invoke-virtual {v2, p1}, Landroid/view/VolumePanel$AudioProfileManagerEx;->setActiveProfile(Ljava/lang/String;)V

    .line 1571
    const-string v2, "mtk_audioprofile_general"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mtk_audioprofile_outdoor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1575
    :cond_2
    const-string v2, "mtk_audioprofile_outdoor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mtk_audioprofile_general"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1577
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1581
    .end local v0           #cuStringType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1582
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private collapse()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 792
    iget-object v3, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object v3, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 800
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 801
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 804
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 805
    .local v2, v:Landroid/view/ViewGroup;
    const v3, #android:id@seekbar#t

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/VolumePanel;->setSeekBarWidth(Landroid/view/View;)V

    .line 808
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 801
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v2           #v:Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 813
    iget-object v3, p0, Landroid/view/VolumePanel;->volumepanelAudioprofile:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 814
    iget-object v3, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 818
    :cond_1
    return-void
.end method

.method protected createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 615
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 617
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 618
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 619
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 620
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 621
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 631
    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 632
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 635
    const v7, #android:layout@zzzzzzzzzzz_volume_adjust_item#t

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 640
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 641
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, #android:id@stream_icon#t

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 642
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 643
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 644
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 645
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 646
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 649
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, #android:id@zzzzzzzzzzz_stream_title#t

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    .line 651
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->streamTitle:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, #android:id@seekbar#t

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 655
    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 657
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {p0, v6}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 658
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 659
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 660
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 655
    .end local v2           #plusOne:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 664
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_2
    invoke-direct {p0, v9}, Landroid/view/VolumePanel;->initAudioProfile(Landroid/view/ViewGroup;)V

    .line 668
    invoke-virtual {p0}, Landroid/view/VolumePanel;->resetVolumePanel()V

    .line 670
    return-void
.end method

.method private expand()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 763
    iget-object v3, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v3, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 771
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 774
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 775
    .local v2, v:Landroid/view/ViewGroup;
    const v3, #android:id@seekbar#t

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/VolumePanel;->setSeekBarWidth(Landroid/view/View;)V

    .line 778
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v2           #v:Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 784
    iget-object v3, p0, Landroid/view/VolumePanel;->volumepanelAudioprofile:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 785
    iget-object v3, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 789
    :cond_1
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1347
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1348
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1349
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1224
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 1228
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 1229
    const/4 p1, 0x1

    .line 1234
    :cond_0
    monitor-enter p0

    .line 1235
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1237
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1245
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 1231
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1240
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 585
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 590
    :goto_0
    return v0

    .line 587
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 588
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 595
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 596
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 600
    :goto_0
    return v0

    .line 597
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 598
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private initAudioProfile(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 1589
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1591
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x304001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    .line 1595
    iget-object v1, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    const v2, 0x30c001a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Landroid/view/VolumePanel;->audioProfileGroup:Landroid/widget/RadioGroup;

    .line 1597
    iget-object v1, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    const v2, 0x30c001d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Landroid/view/VolumePanel;->generalRadio:Landroid/widget/RadioButton;

    .line 1599
    iget-object v1, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    const v2, 0x30c001b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Landroid/view/VolumePanel;->muteRadio:Landroid/widget/RadioButton;

    .line 1601
    iget-object v1, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    const v2, 0x30c001c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Landroid/view/VolumePanel;->vibrateRadio:Landroid/widget/RadioButton;

    .line 1603
    iget-object v1, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    const v2, 0x30c001e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Landroid/view/VolumePanel;->outdoorRadio:Landroid/widget/RadioButton;

    .line 1605
    iget-object v1, p0, Landroid/view/VolumePanel;->audioProfileGroup:Landroid/widget/RadioGroup;

    new-instance v2, Landroid/view/VolumePanel$6;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$6;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1635
    return-void
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 575
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 576
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 580
    :goto_0
    return v0

    .line 577
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 578
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isShowAudioProfile()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1671
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1672
    iget-object v0, p0, Landroid/view/VolumePanel;->volumepanelAudioprofile:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1673
    iget-object v0, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1674
    iget-object v0, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->volumepanelAudioprofile:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1679
    iget-object v0, p0, Landroid/view/VolumePanel;->audioProfile:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method listenToRingerMode()V
    .locals 3

    .prologue
    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v1, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    return-void
.end method

.method private reorderSliders(I)V
    .locals 5
    .parameter "activeStreamType"

    .prologue
    const/4 v4, 0x0

    .line 673
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 675
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 676
    .local v0, active:Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 677
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

















    return-void

    :cond_0
 

    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1342
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1343
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1344
    return-void
.end method

.method private setCurrActiveProfile()V
    .locals 4

    .prologue
    .line 1536
    :try_start_0
    iget-object v2, p0, Landroid/view/VolumePanel;->audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

    if-eqz v2, :cond_0

    .line 1537
    iget-object v2, p0, Landroid/view/VolumePanel;->audioProfileManagerEx:Landroid/view/VolumePanel$AudioProfileManagerEx;

    invoke-virtual {v2}, Landroid/view/VolumePanel$AudioProfileManagerEx;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, curringActiveKey:Ljava/lang/String;
    const-string v2, "mtk_audioprofile_general"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1540
    iget-object v2, p0, Landroid/view/VolumePanel;->generalRadio:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1556
    .end local v0           #curringActiveKey:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1541
    .restart local v0       #curringActiveKey:Ljava/lang/String;
    :cond_1
    const-string v2, "mtk_audioprofile_silent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1542
    iget-object v2, p0, Landroid/view/VolumePanel;->muteRadio:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1552
    .end local v0           #curringActiveKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1553
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1543
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #curringActiveKey:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "mtk_audioprofile_meeting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1544
    iget-object v2, p0, Landroid/view/VolumePanel;->vibrateRadio:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1545
    :cond_3
    const-string v2, "mtk_audioprofile_outdoor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1546
    iget-object v2, p0, Landroid/view/VolumePanel;->outdoorRadio:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1548
    :cond_4
    iget-object v2, p0, Landroid/view/VolumePanel;->generalRadio:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1255
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1256
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1257
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 1258
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1259
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1261
    :cond_0
    return-void

    .line 1259
    :cond_1
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setSeekBarWidth(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1644
    const/4 v0, 0x0

    .line 1645
    .local v0, w:I
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1646
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1661
    :goto_0
    if-eqz p1, :cond_0

    .line 1662
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1667
    :cond_0
    return-void

    .line 1652
    :cond_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 605
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 612
    :goto_0
    return-void

    .line 607
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 608
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method protected updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .locals 6
    .parameter "sc"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 730
    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-nez v4, :cond_2

    :cond_0
    move v1, v3

    .line 732
    .local v1, plusOne:I
    :goto_0
    iget-object v4, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v5, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 735
    iget-object v4, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v5, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v5}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 736
    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 737
    .local v0, muted:Z
    iget-object v5, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 738
    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 742
    iget-object v4, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v5, 0x3080091

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 745
    :cond_1
    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/16 v5, -0xc8

    if-ne v4, v5, :cond_4

    .line 748
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 754
    :goto_2
    return-void

    .end local v0           #muted:Z
    .end local v1           #plusOne:I
    :cond_2
    move v1, v2

    .line 730
    goto :goto_0

    .line 737
    .restart local v0       #muted:Z
    .restart local v1       #plusOne:I
    :cond_3
    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 749
    :cond_4
    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq v4, v5, :cond_5

    if-eqz v0, :cond_5

    .line 750
    iget-object v3, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 752
    :cond_5
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 821
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 822
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 823
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->setCurrActiveProfile()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1276
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1279
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1284
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1289
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1294
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1299
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1304
    :pswitch_5
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1309
    :pswitch_6
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1311
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1316
    :pswitch_7
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1323
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1328
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1332
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1336
    :pswitch_b
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onDisplaySafeVolumeWarning()V

    goto :goto_0

    .line 1276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1425
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1426
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 1428
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1429
    return-void
.end method

.method protected onDisplaySafeVolumeWarning()V
    .locals 5

    .prologue
    .line 1195
    sget-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1196
    :try_start_0
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1197
    monitor-exit v2

    .line 1218
    :goto_0
    return-void

    .line 1199
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, #android:string@safe_media_volume_warning#t

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, #android:string@yes#t

    new-instance v4, Landroid/view/VolumePanel$5;

    invoke-direct {v4, p0}, Landroid/view/VolumePanel$5;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, #android:string@no#t

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, #android:attr@alertDialogIcon#t

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1210
    new-instance v0, Landroid/view/VolumePanel$WarningDialogReceiver;

    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, v1, v3}, Landroid/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 1213
    .local v0, warning:Landroid/view/VolumePanel$WarningDialogReceiver;
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1214
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7d9

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 1216
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1217
    monitor-exit v2

    goto :goto_0

    .end local v0           #warning:Landroid/view/VolumePanel$WarningDialogReceiver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1264
    monitor-enter p0

    .line 1265
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1266
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1267
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1269
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1265
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1271
    :cond_1
    monitor-exit p0

    .line 1272
    return-void

    .line 1271
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 941
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 944
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 945
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 948
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    .line 949
    return-void

    .line 945
    :cond_2
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 1090
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1093
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1096
    :cond_0
    monitor-enter p0

    .line 1097
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 1098
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 1099
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1100
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1102
    :cond_1
    monitor-exit p0

    .line 1103
    return-void

    .line 1102
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1353
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1354
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_2

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1355
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1359
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 1361
    :cond_0
    if-lez p2, :cond_1

    .line 1362
    add-int/lit8 p2, p2, -0x1

    .line 1367
    :cond_1
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 1368
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Landroid/view/VolumePanel;->setStreamVolume(III)V

    .line 1398
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_2
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1399
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1132
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1135
    :cond_1
    monitor-enter p0

    .line 1136
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1137
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 1139
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 1146
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1147
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1150
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 1151
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1152
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1153
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1156
    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1157
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1159
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1160
    return-void

    .line 1140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1142
    :cond_6
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1163
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1167
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1169
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0xc8

    const/4 v8, 0x1

    .line 952
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 954
    .local v0, index:I
    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 956
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    .line 957
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShowVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 1046
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_4

    .line 1047
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 1048
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1051
    :cond_2
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1052
    and-int/lit8 v5, p2, 0x20

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq p1, v5, :cond_9

    if-eq p1, v9, :cond_9

    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1056
    :cond_3
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1062
    :cond_4
    :goto_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6

    if-ne p1, v9, :cond_a

    const/4 v4, -0x1

    .local v4, stream:I
    :goto_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    :cond_5
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .end local v4           #stream:I
    :cond_6


    if-eq p1, v9, :cond_7

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 1084
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1086
    :cond_7
    return-void

    .line 969
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 971
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 972
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 979
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_8

    .line 984
    const v5, 0x3080087

    const v6, #android:drawable@ic_audio_bt_mute#t

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 988
    :cond_8
    const v5, 0x3080094

    const v6, #android:drawable@ic_audio_vol_mute#t

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1002
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 1003
    add-int/lit8 v1, v1, 0x1

    .line 1004
    goto/16 :goto_0

    .line 1020
    :sswitch_4
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1022
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 1023
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1034
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 1035
    add-int/lit8 v1, v1, 0x1

    .line 1036
    goto/16 :goto_0

    .line 1040
    :sswitch_6
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showing remote volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1058
    .restart local v3       #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_9
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    move v4, p1

    .line 1063
    goto/16 :goto_2

    .line 965
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xa -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 1180
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1182
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1183
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1184
    .local v2, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v3, v2, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1185
    iput-boolean v1, v2, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 1186
    if-nez v1, :cond_1

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1187
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    .end local v2           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1181
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1182
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1180
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1402
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1107
    monitor-enter p0

    .line 1108
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1109
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1110
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1111
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 1112
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1109
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1115
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 1116
    return-void

    .line 1115
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 1405
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1406
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1407
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1412
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1413
    invoke-direct {p0, v3}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1416
    :cond_0
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1419
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1422
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_2
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 911
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 914
    monitor-enter p0

    .line 915
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 916
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 918
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 919
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 923
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 924
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 927
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 928
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 929
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 930
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 933
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 934
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 936
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 937
    return-void

    .line 919
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 900
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 901
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 874
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 896
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postMuteChanged(II)V

    .line 897
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 881
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 882
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 885
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 858
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 860
    return-void

    .line 858
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetVolumePanel()V
    .locals 3

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isCts()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x308006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x30800b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1443
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x308025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic access$invoke-createSliders-7a9871(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    return-void
.end method

.method static getMsgRingerModeChanged()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    return v0
.end method


.method createSlidersBaidu()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    return-void
.end method

.method getmActiveStreamType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method getmPanel()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getmStreamControls()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    return-object v0
.end method

.method reorderSlidersBaidu(I)V
    .locals 0
    .parameter "activeStreamType"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    return-void
.end method
