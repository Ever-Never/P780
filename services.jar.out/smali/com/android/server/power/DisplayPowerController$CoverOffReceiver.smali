.class final Lcom/android/server/power/DisplayPowerController$CoverOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$CoverOffReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/DisplayPowerController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController$CoverOffReceiver;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 546
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$CoverOffReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$300(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 547
    :try_start_0
    const-string v1, "android.intent.extra.COVER_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 548
    .local v0, state:I
    if-ne v0, v4, :cond_0

    .line 549
    const-string v1, "PowerManagerDisplayController"

    const-string v3, "lincl1+++now cover off"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$CoverOffReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/power/DisplayPowerController;->mDiscardFirstValue:Z
    invoke-static {v1, v3}, Lcom/android/server/power/DisplayPowerController;->access$402(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 552
    :cond_0
    monitor-exit v2

    .line 553
    return-void

    .line 552
    .end local v0           #state:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
