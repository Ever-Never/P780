.class Lcom/android/server/LenovoBatteryManagerService$3;
.super Landroid/telephony/PhoneStateListener;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LenovoBatteryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LenovoBatteryManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LenovoBatteryManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService$3;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 528
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 546
    :goto_0
    :pswitch_0
    return-void

    .line 533
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService$3;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    const-string v1, "2"

    #calls: Lcom/android/server/LenovoBatteryManagerService;->setChargingCur(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->access$600(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)Z

    goto :goto_0

    .line 540
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService$3;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    const-string v1, "0"

    #calls: Lcom/android/server/LenovoBatteryManagerService;->setChargingCur(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->access$600(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)Z

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
