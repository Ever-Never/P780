.class Lcom/android/server/AkgService$1;
.super Ljava/lang/Object;
.source "AkgService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method constructor <init>(Lcom/android/server/AkgService;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 432
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 413
    const-wide/16 v0, 0x0

    .line 414
    .local v0, temp:J
    iget-object v2, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #calls: Lcom/android/server/AkgService;->phoneIsInUse()Z
    invoke-static {v2}, Lcom/android/server/AkgService;->access$100(Lcom/android/server/AkgService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    const-string v2, "AkgService"

    const-string v3, "onSensorChanged ret when calling..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #getter for: Lcom/android/server/AkgService;->mSlpProcess:Z
    invoke-static {v3}, Lcom/android/server/AkgService;->access$200(Lcom/android/server/AkgService;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    #calls: Lcom/android/server/AkgService;->processData(Landroid/hardware/SensorEvent;)V
    invoke-static {v2, p1}, Lcom/android/server/AkgService;->access$300(Lcom/android/server/AkgService;Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method
