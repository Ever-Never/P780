.class public Lcom/lenovo/systemtheme/cover/CoverView;
.super Landroid/widget/FrameLayout;
.source "CoverView.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private mRoundedCornerCover:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/systemtheme/cover/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public attachToService(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/systemtheme/cover/CoverView;->mRoundedCornerCover:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    .line 28
    invoke-virtual {p0, p0}, Lcom/lenovo/systemtheme/cover/CoverView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 29
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/CoverView;->mRoundedCornerCover:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    if-eqz v0, :cond_0

    .line 34
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/CoverView;->mRoundedCornerCover:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->roundedCornerCover_setFullScreen(Z)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/CoverView;->mRoundedCornerCover:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->roundedCornerCover_setFullScreen(Z)V

    goto :goto_0
.end method
