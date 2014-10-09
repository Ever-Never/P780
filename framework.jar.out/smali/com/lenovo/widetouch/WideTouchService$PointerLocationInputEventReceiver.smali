.class final Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerLocationInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method public constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    .line 157
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, handled:Z
    :try_start_0
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 169
    .local v4, motionEvent:Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v7, v7, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    if-eqz v7, :cond_0

    .line 170
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 172
    .local v1, action:I
    const/16 v7, 0xc

    if-ne v1, v7, :cond_0

    .line 173
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 174
    .local v5, x:I
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    float-to-int v6, v7

    .line 177
    .local v6, y:I
    :try_start_1
    iget-object v7, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    #calls: Lcom/lenovo/widetouch/WideTouchService;->hideStatusBar()V
    invoke-static {v7}, Lcom/lenovo/widetouch/WideTouchService;->access$400(Lcom/lenovo/widetouch/WideTouchService;)V

    .line 178
    iget-object v7, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v7, v7, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    invoke-interface {v7, v5, v6}, Lcom/lenovo/widetouch/ITouchWindowServiceBinder;->scheduleShowTouchWindowByWideTouch(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .end local v1           #action:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 187
    .end local v4           #motionEvent:Landroid/view/MotionEvent;
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 189
    return-void

    .line 179
    .restart local v1       #action:I
    .restart local v4       #motionEvent:Landroid/view/MotionEvent;
    .restart local v5       #x:I
    .restart local v6       #y:I
    :catch_0
    move-exception v2

    .line 180
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 187
    .end local v1           #action:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #motionEvent:Landroid/view/MotionEvent;
    .end local v5           #x:I
    .end local v6           #y:I
    :catchall_0
    move-exception v7

    invoke-virtual {p0, p1, v3}, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v7
.end method
