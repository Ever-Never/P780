.class Lcom/mediatek/audioprofile/AudioProfileService$2;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
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
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 4
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 297
    if-ne p1, p2, :cond_1

    .line 298
    const-string v2, "AudioProfileService"

    const-string v3, "onRingerVolumeChanged with Volume don\'t change, do nothing!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    if-nez p2, :cond_2

    .line 304
    const-string v2, "AudioProfileService"

    const-string v3, "onRingerVolumeChanged with Volume == 0, do nothing!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingerVolumeChanged(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 314
    .local v0, activeProfileState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 315
    .local v1, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileService$10;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 356
    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 359
    const-string v2, "AudioProfileService"

    const-string v3, "onRingerVolumeChanged: sync volume 1->0 to last active profile when it cause ringemode change!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :pswitch_0
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, p2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 344
    const-string v2, "AudioProfileService"

    const-string v3, "onRingerVolumeChanged: ringer volume changed, sysn to active profile except silent, meeting and outdoor!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
