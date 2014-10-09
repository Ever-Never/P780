.class Lcom/mediatek/audioprofile/AudioProfileService$4;
.super Landroid/database/ContentObserver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 390
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    monitor-enter v7

    .line 391
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingtoneChange(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 392
    monitor-exit v7

    .line 466
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 396
    .local v1, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    .line 397
    .local v2, activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "ringtone"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, uriString:Ljava/lang/String;
    if-nez v5, :cond_3

    const/4 v4, 0x0

    .line 400
    .local v4, systemUri:Landroid/net/Uri;
    :goto_1
    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v6, :cond_1

    if-nez v4, :cond_2

    :cond_1
    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 402
    .local v3, isPassiveChange:Z
    :cond_2
    :goto_2
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileService$10;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 461
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 462
    const-string v6, "AudioProfileService"

    const-string v8, "Ringtone changed in silent profile, sync to system if switch to last active profile."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_3
    monitor-exit v7

    goto :goto_0

    .end local v1           #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v2           #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v3           #isPassiveChange:Z
    .end local v4           #systemUri:Landroid/net/Uri;
    .end local v5           #uriString:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 398
    .restart local v1       #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v2       #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v5       #uriString:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 400
    .restart local v4       #systemUri:Landroid/net/Uri;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 407
    .restart local v3       #isPassiveChange:Z
    :pswitch_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, activeKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iput-object v4, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 412
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 416
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v6, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iput-object v4, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 418
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v8, 0x8

    invoke-virtual {v6, v0, v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 422
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0           #activeKey:Ljava/lang/String;
    :pswitch_1
    if-eqz v3, :cond_5

    .line 451
    iput-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 452
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 453
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 456
    :cond_5
    const-string v6, "AudioProfileService"

    const-string v8, "Ringtone changed by itself, do nothing!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
