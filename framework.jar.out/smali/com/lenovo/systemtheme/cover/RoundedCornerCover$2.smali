.class Lcom/lenovo/systemtheme/cover/RoundedCornerCover$2;
.super Ljava/lang/Object;
.source "RoundedCornerCover.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->onSystemReady()V
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
    .line 137
    iput-object p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$2;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$2;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;
    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$300(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Lcom/lenovo/systemtheme/cover/CoverView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/systemtheme/cover/CoverView;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 150
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 141
    return-void
.end method
