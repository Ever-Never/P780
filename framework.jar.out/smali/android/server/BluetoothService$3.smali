.class Landroid/server/BluetoothService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2216
    iput-object p1, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2219
    const-string v7, "[API] onReceive()"

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Landroid/server/BluetoothService;->access$700(Ljava/lang/String;)V

    .line 2220
    if-nez p2, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 2222
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2223
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2224
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2227
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v1

    .line 2228
    .local v1, bIsAirPlaneModeOn:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received AIRPLANE_MODE_CHANGE, bIsAirPlaneModeOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Landroid/server/BluetoothService;->access$700(Ljava/lang/String;)V

    .line 2229
    if-eqz v1, :cond_2

    .line 2231
    const/4 v2, 0x1

    .line 2232
    .local v2, bSaveState:Z
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v7

    const/16 v8, 0x37

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 2234
    .end local v2           #bSaveState:Z
    :cond_2
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v7

    const/16 v8, 0x38

    invoke-virtual {v7, v8}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2236
    .end local v1           #bIsAirPlaneModeOn:Z
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2237
    const-string v7, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2239
    .local v6, state:I
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    if-nez v6, :cond_4

    .line 2241
    invoke-static {v12}, Landroid/server/BluetoothService;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 2242
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v7, v12}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2244
    :cond_4
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "bluetooth_service_settings"

    iget-object v9, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Landroid/content/Context;

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2247
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dock_bluetooth_address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/server/BluetoothService;->access$900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2248
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2250
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #state:I
    :cond_5
    const-string v7, "android.server.BluetoothService.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2251
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2252
    :cond_6
    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2253
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v7

    iget-object v8, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v8

    const/16 v9, 0x64

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/server/BluetoothService$UserSwitchedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService$UserSwitchedHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2258
    :cond_7
    const-string v7, "android.bluetooth.adapter.action.BLUETOOTH_SECURITY_CONFIRM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2260
    const-string v7, "android.bluetooth.adapter.extra.SECURITY_CONFIRM_RESULT"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2262
    .local v5, result:I
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive(), Handle ACTION_USER_CONFIRM, WaitForConfirmation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitForCofirmation:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitForCofirmation:Z
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Z

    move-result v7

    if-ne v7, v10, :cond_0

    .line 2266
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mConfirmResult:I
    invoke-static {v7, v5}, Landroid/server/BluetoothService;->access$1402(Landroid/server/BluetoothService;I)I

    .line 2268
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConfirmHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2270
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConfirmHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConfirmHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
