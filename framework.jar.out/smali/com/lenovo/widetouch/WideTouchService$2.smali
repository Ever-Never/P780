.class Lcom/lenovo/widetouch/WideTouchService$2;
.super Ljava/lang/Object;
.source "WideTouchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/widetouch/WideTouchService;->bindTouchWindowService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method constructor <init>(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$2;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 388
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lenovo.widetouch.TOUCH_WINDOW_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, service:Landroid/content/Intent;
    new-instance v0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

    iget-object v3, p0, Lcom/lenovo/widetouch/WideTouchService$2;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;-><init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V

    .line 390
    .local v0, conn:Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;
    const/4 v1, 0x1

    .line 392
    .local v1, flags:I
    iget-object v3, p0, Lcom/lenovo/widetouch/WideTouchService$2;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v3, v3, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    const-string v3, "WideTouchService"

    const-string v4, "bindTouchWindowService fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    const-string v3, "WideTouchService"

    const-string v4, "bindTouchWindowService OK"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
