.class final Lcom/android/server/power/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 336
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/habit/ShutdownGuess;->getInstance(Landroid/content/Context;)Lcom/lenovo/habit/ShutdownGuess;

    move-result-object v0

    .line 337
    .local v0, guess:Lcom/lenovo/habit/ShutdownGuess;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/lenovo/habit/ShutdownGuess;->shouldRecommend()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    const-string v2, "ShutdownThread"

    const-string v3, "Habit guess recommend ~"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v1, Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, habitDialogCloser:Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 343
    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_1

    .line 345
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, #android:string@power_off#t

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x30b0015

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, #android:string@date_time_set#t

    new-instance v4, Lcom/android/server/power/ShutdownThread$2$2;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$2$2;-><init>(Lcom/android/server/power/ShutdownThread$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, #android:string@global_action_power_off#t

    new-instance v4, Lcom/android/server/power/ShutdownThread$2$1;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$2$1;-><init>(Lcom/android/server/power/ShutdownThread$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 387
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 388
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 389
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 395
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 398
    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 399
    if-eqz v1, :cond_2

    .line 400
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 401
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 403
    :cond_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 404
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 417
    .end local v1           #habitDialogCloser:Lcom/android/server/power/ShutdownThread$HabitGuessCloseDialogReceiver;
    :cond_3
    :goto_0
    return-void

    .line 409
    :cond_4
    const-string v2, "ShutdownThread"

    const-string v3, "Habit guess no need recommend ~"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$700(Landroid/content/Context;)V

    .line 414
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 415
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
