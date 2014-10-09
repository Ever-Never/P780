.class Lcom/mediatek/op/sms/WapPushFwkExt$1;
.super Landroid/os/Handler;
.source "WapPushFwkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/sms/WapPushFwkExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/sms/WapPushFwkExt;


# direct methods
.method constructor <init>(Lcom/mediatek/op/sms/WapPushFwkExt;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$1;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 287
    invoke-static {}, Lcom/mediatek/op/sms/WapPushFwkExt;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/op/sms/WapPushFwkExt$1;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    invoke-virtual {v0}, Lcom/mediatek/op/sms/WapPushFwkExt;->notifyForAutoPushSetting()V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
