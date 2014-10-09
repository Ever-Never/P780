.class Lcom/mediatek/audioprofile/AudioProfileService$8;
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
    .line 914
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 917
    if-nez p1, :cond_1

    .line 918
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    monitor-enter v3

    .line 919
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 920
    .local v0, activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 922
    .local v1, enable:Z
    :goto_0
    iget-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v2, v1, :cond_0

    .line 923
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    .line 926
    :cond_0
    monitor-exit v3

    .line 929
    .end local v0           #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v1           #enable:Z
    :cond_1
    return-void

    .restart local v0       #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_2
    move v1, v2

    .line 920
    goto :goto_0

    .line 926
    .end local v0           #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
