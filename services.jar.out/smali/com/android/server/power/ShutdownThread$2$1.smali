.class Lcom/android/server/power/ShutdownThread$2$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$2;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$2;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2$1;->this$0:Lcom/android/server/power/ShutdownThread$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 379
    const-string v0, "ShutdownThread"

    const-string v1, "Habit guess negative button clicked, just begin normal shut dowm~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$2$1;->this$0:Lcom/android/server/power/ShutdownThread$2;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$700(Landroid/content/Context;)V

    .line 381
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 384
    :cond_0
    return-void
.end method
