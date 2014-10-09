.class Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;
.super Ljava/lang/Object;
.source "RoundedCornerCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->roundedCornerCover_setTabHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    iput p2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabHeight:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$1000(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 314
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;->val$height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    #getter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabHeight:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$1000(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 316
    return-void
.end method
