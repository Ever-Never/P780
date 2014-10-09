.class Lcom/android/server/power/ShutdownThread$2$2;
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
    .line 350
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2$2;->this$0:Lcom/android/server/power/ShutdownThread$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 353
    const-string v2, "ShutdownThread"

    const-string v3, "Habit guess positive button clicked ~"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 355
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 356
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 358
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$302(Z)Z

    .line 359
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 361
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 364
    :cond_0
    :try_start_2
    const-string v2, "ShutdownThread"

    const-string v3, "Habit guess recommend start schedule power on off settings~"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.SCHEDULE_POWER_ON_OFF_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$2$2;->this$0:Lcom/android/server/power/ShutdownThread$2;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$2$2;->this$0:Lcom/android/server/power/ShutdownThread$2;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 373
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 356
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 359
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Habit guess ActivityNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
