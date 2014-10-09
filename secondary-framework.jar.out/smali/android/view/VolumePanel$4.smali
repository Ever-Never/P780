.class Landroid/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x6

    .line 535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 539
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v3, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->forceTimeout()V
    invoke-static {v2}, Landroid/view/VolumePanel;->access$300(Landroid/view/VolumePanel;)V

    goto :goto_0

    .line 553
    :cond_2
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 555
    const-string v2, "android.intent.extra.configuration.font_changed"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 556
    .local v1, changefont:Z
    if-eqz v1, :cond_0

    .line 557
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, v2, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/FontThemeManager;->changeTextFont(Landroid/content/Context;)V

    .line 558
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)V

    .line 559
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v3

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v2, v3}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;I)V

    goto :goto_0

    .line 562
    .end local v1           #changefont:Z
    :cond_3
    const-string v2, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 564
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)V

    .line 565
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v3

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v2, v3}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;I)V

    goto :goto_0

    .line 566
    :cond_4
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)V

    .line 568
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v3

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v2, v3}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;I)V

    goto :goto_0
.end method
