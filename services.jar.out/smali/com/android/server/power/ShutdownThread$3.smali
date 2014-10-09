.class final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ipoCheckWarning:Landroid/widget/TextView;

.field final synthetic val$isNeedWarningProject:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$3;->val$ipoCheckWarning:Landroid/widget/TextView;

    iput-boolean p2, p0, Lcom/android/server/power/ShutdownThread$3;->val$isNeedWarningProject:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 474
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 475
    :try_start_0
    invoke-static {p2}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 476
    const-string v0, "persist.sys.ipo_enabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$3;->val$ipoCheckWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$3;->val$ipoCheckWarning:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownThread$3;->val$isNeedWarningProject:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    :cond_0
    monitor-exit v1

    .line 483
    return-void

    .line 479
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
