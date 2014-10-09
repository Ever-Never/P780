.class Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;
.super Ljava/lang/Object;
.source "WideTouchService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method private constructor <init>(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;-><init>(Lcom/lenovo/widetouch/WideTouchService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-static {p2}, Lcom/lenovo/widetouch/ITouchWindowServiceBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    .line 411
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    .line 417
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    #calls: Lcom/lenovo/widetouch/WideTouchService;->bindTouchWindowService()V
    invoke-static {v0}, Lcom/lenovo/widetouch/WideTouchService;->access$700(Lcom/lenovo/widetouch/WideTouchService;)V

    .line 418
    return-void
.end method
