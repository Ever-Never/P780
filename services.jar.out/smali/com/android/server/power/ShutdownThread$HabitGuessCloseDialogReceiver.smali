.class Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HabitGuessCloseDialogReceiver"
.end annotation


# instance fields
.field public dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 580
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;->mContext:Landroid/content/Context;

    .line 582
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 584
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "unused"

    .prologue
    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 595
    const-string v1, "ShutdownThread"

    const-string v2, "HabitGuessCloseDialogReceiver: onDismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HabitGuessCloseDialogReceiver: IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 589
    const-string v0, "ShutdownThread"

    const-string v1, "HabitGuessCloseDialogReceiver: onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method
