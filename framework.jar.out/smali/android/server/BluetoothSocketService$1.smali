.class Landroid/server/BluetoothSocketService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothSocketService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothSocketService;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Landroid/server/BluetoothSocketService$1;->this$0:Landroid/server/BluetoothSocketService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 242
    if-nez p2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.BLUETOOTH_SECURITY_CONFIRM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "android.bluetooth.adapter.extra.SECURITY_CONFIRM_RESULT"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 251
    .local v1, result:I
    const-string v2, "BTSocketService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive, Handle ACTION_USER_CONFIRM, WaitForConfirmation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothSocketService$1;->this$0:Landroid/server/BluetoothSocketService;

    #getter for: Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z
    invoke-static {v4}, Landroid/server/BluetoothSocketService;->access$400(Landroid/server/BluetoothSocketService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Landroid/server/BluetoothSocketService$1;->this$0:Landroid/server/BluetoothSocketService;

    #getter for: Landroid/server/BluetoothSocketService;->mWaitForConfirmation:Z
    invoke-static {v2}, Landroid/server/BluetoothSocketService;->access$400(Landroid/server/BluetoothSocketService;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 255
    iget-object v2, p0, Landroid/server/BluetoothSocketService$1;->this$0:Landroid/server/BluetoothSocketService;

    #setter for: Landroid/server/BluetoothSocketService;->mConfirmResult:I
    invoke-static {v2, v1}, Landroid/server/BluetoothSocketService;->access$502(Landroid/server/BluetoothSocketService;I)I

    .line 257
    iget-object v2, p0, Landroid/server/BluetoothSocketService$1;->this$0:Landroid/server/BluetoothSocketService;

    #getter for: Landroid/server/BluetoothSocketService;->mConfirmHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/server/BluetoothSocketService;->access$600(Landroid/server/BluetoothSocketService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Landroid/server/BluetoothSocketService$1;->this$0:Landroid/server/BluetoothSocketService;

    #getter for: Landroid/server/BluetoothSocketService;->mConfirmHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/server/BluetoothSocketService;->access$600(Landroid/server/BluetoothSocketService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothSocketService$1;->this$0:Landroid/server/BluetoothSocketService;

    #getter for: Landroid/server/BluetoothSocketService;->mConfirmHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/server/BluetoothSocketService;->access$600(Landroid/server/BluetoothSocketService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
