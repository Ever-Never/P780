.class Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;
.super Ljava/lang/Object;
.source "RoundedCornerCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->roundedCornerCover_setHasScrollingTab(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

.field final synthetic val$hasTab:Z


# direct methods
.method constructor <init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    iput-boolean p2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->val$hasTab:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    iget-boolean v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->val$hasTab:Z

    #setter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasScrollingTab:Z
    invoke-static {v0, v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$702(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z

    .line 276
    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->val$hasTab:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabCover:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$800(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageNormal:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$900(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabCover:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$800(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
