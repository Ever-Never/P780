.class Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;
.super Landroid/os/Handler;
.source "RoundedCornerCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/systemtheme/cover/RoundedCornerCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;


# direct methods
.method constructor <init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCoverVisiable:Z
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$000(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverOpen:Z
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$100(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "RoundedCornerCover"

    const-string/jumbo v1, "showRoundedCornerCover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageAnimationView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$200(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 77
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$300(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Lcom/lenovo/systemtheme/cover/CoverView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/systemtheme/cover/CoverView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #setter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCoverVisiable:Z
    invoke-static {v0, v3}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$002(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #setter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverNeedDoing:Z
    invoke-static {v0, v3}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$402(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCoverVisiable:Z
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$000(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "RoundedCornerCover"

    const-string v1, "hideRoundedCornerCover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageAnimationView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$200(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mAnimationHide:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$500(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #setter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCoverVisiable:Z
    invoke-static {v0, v2}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$002(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #setter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverNeedDoing:Z
    invoke-static {v0, v2}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$402(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
