.class public Lcom/lenovo/widetouch/WideTouchGlowPadView;
.super Lcom/android/internal/widget/multiwaveview/GlowPadView;
.source "WideTouchGlowPadView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WideTouchGlowPadView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private trigeBack()V
    .locals 12

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 122
    .local v4, when:J
    const-string v0, "WideTouchGlowPadView"

    const-string/jumbo v3, "trigeBack!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v3, v2

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 125
    const/4 v8, 0x1

    move-object v6, p0

    move v7, v1

    move v9, v2

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 126
    return-void
.end method

.method private trigeStatusBar()V
    .locals 4

    .prologue
    .line 129
    const-string v2, "WideTouchGlowPadView"

    const-string/jumbo v3, "trigeStatusBar!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchGlowPadView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 134
    .local v1, statusBarManager:Landroid/app/StatusBarManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private trigerHome()V
    .locals 12

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 104
    .local v4, when:J
    const-string v0, "WideTouchGlowPadView"

    const-string/jumbo v3, "trigerHome!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v3, v2

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 107
    const/4 v8, 0x1

    move-object v6, p0

    move v7, v1

    move v9, v2

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 108
    return-void
.end method

.method private trigerMenu()V
    .locals 12

    .prologue
    const/16 v1, 0x52

    const/4 v2, 0x0

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 113
    .local v4, when:J
    const-string v0, "WideTouchGlowPadView"

    const-string/jumbo v3, "trigerMenu!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v3, v2

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 116
    const/4 v8, 0x1

    move-object v6, p0

    move v7, v1

    move v9, v2

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->sendEvent(IIIJ)V

    .line 117
    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onFinishInflate()V

    .line 31
    invoke-virtual {p0, p0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 32
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 50
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 93
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 56
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    .line 60
    const-string v0, "WideTouchGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger : target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    packed-switch p2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->trigerHome()V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->trigerMenu()V

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->trigeBack()V

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->trigeStatusBar()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method sendEvent(IIIJ)V
    .locals 14
    .parameter "keyCode"
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 35
    invoke-static {}, Lcom/lenovo/widetouch/WideTouchWindow;->getMotionDownPosition()J

    move-result-wide v2

    .line 36
    .local v2, positon:J
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    const/4 v8, 0x1

    .line 37
    .local v8, repeatCount:I
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v4, p3, 0x8

    or-int/lit8 v12, v4, 0x40

    const v13, 0x100008

    move-wide/from16 v4, p4

    move/from16 v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 42
    .local v1, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 44
    return-void

    .line 36
    .end local v1           #ev:Landroid/view/KeyEvent;
    .end local v8           #repeatCount:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
