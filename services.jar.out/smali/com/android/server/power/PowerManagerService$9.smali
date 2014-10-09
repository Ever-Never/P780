.class Lcom/android/server/power/PowerManagerService$9;
.super Ljava/lang/Thread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->openFaceUnlockCameraThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3361
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3364
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3365
    const-string v1, "PowerManagerService"

    const-string v2, "start loopRun"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    #setter for: Lcom/android/server/power/PowerManagerService;->mLooper:Landroid/os/Looper;
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$4902(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3368
    :try_start_0
    const-string v1, "PowerManagerService"

    const-string v2, "start open camera ~~"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    #setter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$5002(Lcom/android/server/power/PowerManagerService;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 3370
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3371
    const-string v1, "PowerManagerService"

    const-string v2, "open camera success~~"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3373
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 3376
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3377
    const-string v1, "PowerManagerService"

    const-string v2, "openFaceUnlockCameraThread: quit."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3384
    :goto_0
    return-void

    .line 3378
    :catch_0
    move-exception v0

    .line 3379
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to open camera."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$5002(Lcom/android/server/power/PowerManagerService;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 3381
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, "com.lenovo.facedetection.unlock.stop"

    #calls: Lcom/android/server/power/PowerManagerService;->sendFaceDetectionBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method
