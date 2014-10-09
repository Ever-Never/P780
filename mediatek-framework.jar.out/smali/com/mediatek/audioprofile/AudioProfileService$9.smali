.class Lcom/mediatek/audioprofile/AudioProfileService$9;
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
    .line 3960
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$9;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    .line 3963
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$9;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    monitor-enter v4

    .line 3964
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$9;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3967
    .local v0, activeKey:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$9;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3970
    .local v2, val:Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$9;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v3, v2, :cond_0

    .line 3971
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$9;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iput-boolean v2, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 3972
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$9;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    invoke-static {v3, v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V

    .line 3974
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHapticFeedbackObserver changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3982
    .end local v2           #val:Z
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v4

    .line 3983
    return-void

    .line 3967
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3979
    :catch_0
    move-exception v1

    .line 3980
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3982
    .end local v0           #activeKey:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
