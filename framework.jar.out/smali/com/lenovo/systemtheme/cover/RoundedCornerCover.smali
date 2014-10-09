.class public Lcom/lenovo/systemtheme/cover/RoundedCornerCover;
.super Ljava/lang/Object;
.source "RoundedCornerCover.java"


# static fields
.field private static final DISABLE_ON_TAB:Z = false

.field private static final HIDE_DELAY:J = 0x96L

.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1

.field private static final SHOW_DELAY:J = 0xfaL

.field private static final TAB_DELAY:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RoundedCornerCover"


# instance fields
.field private mAnimationHide:Landroid/view/animation/Animation;

.field private mAnimationShow:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mCoverImageAnimationView:Landroid/view/View;

.field private mCoverImageNormal:Landroid/view/View;

.field private mCoverImageTabCover:Landroid/view/View;

.field private mCoverImageTabHeight:Landroid/view/View;

.field private mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

.field private mHandler:Landroid/os/Handler;

.field private mIsCoverVisiable:Z

.field private mIsCtsTesting:Z

.field private mIsFullScreen:Z

.field private mIsHasScrollingTab:Z

.field private mIsHasWidgetTab:I

.field private mIsStatusBarTransparent:Z

.field private mIsSystemReady:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRoundedCornerCoverNeedDoing:Z

.field private mRoundedCornerCoverOpen:Z

.field private mTopIsFullscreen:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsFullScreen:Z

    .line 43
    iput-boolean v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mTopIsFullscreen:Z

    .line 44
    iput-boolean v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsStatusBarTransparent:Z

    .line 45
    iput v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    .line 46
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasScrollingTab:Z

    .line 47
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCtsTesting:Z

    .line 49
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCoverVisiable:Z

    .line 57
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsSystemReady:Z

    .line 62
    iput-boolean v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverOpen:Z

    .line 63
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverNeedDoing:Z

    .line 68
    new-instance v0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;

    invoke-direct {v0, p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$1;-><init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)V

    iput-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mContext:Landroid/content/Context;

    .line 100
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mWindowManager:Landroid/view/WindowManager;

    .line 101
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCoverVisiable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCoverVisiable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverOpen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabHeight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Lcom/lenovo/systemtheme/cover/CoverView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverNeedDoing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mAnimationHide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsSystemReady:Z

    return p1
.end method

.method static synthetic access$702(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasScrollingTab:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageNormal:Landroid/view/View;

    return-object v0
.end method

.method private findBooleanByResourceName(Ljava/lang/String;)Z
    .locals 7
    .parameter "systemtheme"

    .prologue
    const/4 v4, 0x1

    .line 338
    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v4

    .line 341
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 342
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 343
    .local v2, res:Landroid/content/res/Resources;
    const-string/jumbo v5, "rounded_corner_cover_enable_system_theme"

    const-string v6, "bool"

    invoke-virtual {v2, v5, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 344
    .local v3, resID:I
    if-eqz v3, :cond_0

    .line 347
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 348
    .local v4, value:Z
    goto :goto_0

    .line 349
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resID:I
    .end local v4           #value:Z
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .line 354
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideRoundedCornerCover()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 185
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    :cond_0
    return-void
.end method

.method private showRoundedCornerCover()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    :cond_0
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsSystemReady:Z

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v0, "RoundedCornerCover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", topIsFullscreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mTopIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", StatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsStatusBarTransparent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsFullScreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mTopIsFullscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsStatusBarTransparent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCtsTesting:Z

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->showRoundedCornerCover()V

    goto :goto_0

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->hideRoundedCornerCover()V

    goto :goto_0
.end method


# virtual methods
.method public onSystemReady()V
    .locals 5

    .prologue
    .line 105
    const-string v1, "RoundedCornerCover"

    const-string/jumbo v2, "onSystemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/systemtheme/cover/LenovoCommonUtil;->getHomes(Landroid/content/Context;)V

    .line 113
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 114
    .local v0, wideTouchWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 115
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 116
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 117
    const v1, 0x1000118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 124
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 131
    const-string v1, "RoundedCornerCover"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mContext:Landroid/content/Context;

    const v2, 0x3050008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mAnimationShow:Landroid/view/animation/Animation;

    .line 135
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mContext:Landroid/content/Context;

    const v2, 0x3050007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mAnimationHide:Landroid/view/animation/Animation;

    .line 137
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mAnimationHide:Landroid/view/animation/Animation;

    new-instance v2, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$2;

    invoke-direct {v2, p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$2;-><init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x304000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/systemtheme/cover/CoverView;

    iput-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    .line 155
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    invoke-virtual {v1, p0}, Lcom/lenovo/systemtheme/cover/CoverView;->attachToService(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)V

    .line 156
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lenovo/systemtheme/cover/CoverView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    const v2, 0x30c0005

    invoke-virtual {v1, v2}, Lcom/lenovo/systemtheme/cover/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageAnimationView:Landroid/view/View;

    .line 159
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    const v2, 0x30c0007

    invoke-virtual {v1, v2}, Lcom/lenovo/systemtheme/cover/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageNormal:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    const v2, 0x30c0008

    invoke-virtual {v1, v2}, Lcom/lenovo/systemtheme/cover/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabHeight:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    const v2, 0x30c0009

    invoke-virtual {v1, v2}, Lcom/lenovo/systemtheme/cover/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverImageTabCover:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mCoverView:Lcom/lenovo/systemtheme/cover/CoverView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$3;

    invoke-direct {v2, p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$3;-><init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method

.method public roundedCornerCover_setFullScreen(Z)V
    .locals 0
    .parameter "isFullScreen"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsFullScreen:Z

    .line 195
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->update()V

    .line 196
    return-void
.end method

.method public roundedCornerCover_setHasScrollingTab(Z)V
    .locals 4
    .parameter "hasTab"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$4;-><init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    return-void
.end method

.method public roundedCornerCover_setHasWidgetTab(Z)V
    .locals 1
    .parameter "hasTab"

    .prologue
    .line 242
    if-eqz p1, :cond_1

    .line 243
    iget v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    .line 248
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->update()V

    .line 267
    return-void

    .line 244
    :cond_1
    iget v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    if-lez v0, :cond_0

    .line 245
    iget v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    goto :goto_0
.end method

.method public roundedCornerCover_setIsCtsTesting(Z)V
    .locals 4
    .parameter "isCtsTesting"

    .prologue
    const/4 v1, 0x1

    .line 205
    iget-boolean v2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCtsTesting:Z

    if-nez v2, :cond_1

    if-ne p1, v1, :cond_1

    .line 207
    .local v1, needToDealy:Z
    :goto_0
    iput-boolean p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsCtsTesting:Z

    .line 209
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->update()V

    .line 211
    if-eqz v1, :cond_0

    .line 214
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_1
    return-void

    .line 205
    .end local v1           #needToDealy:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 215
    .restart local v1       #needToDealy:Z
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public roundedCornerCover_setStatusBarTransparency(Z)V
    .locals 2
    .parameter "isTransparent"

    .prologue
    const/4 v1, 0x0

    .line 222
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/systemtheme/cover/LenovoCommonUtil;->isHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsStatusBarTransparent:Z

    .line 225
    if-eqz p1, :cond_2

    .line 227
    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasScrollingTab:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->roundedCornerCover_setHasScrollingTab(Z)V

    .line 231
    :cond_1
    iget v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    if-lez v0, :cond_2

    .line 233
    iput v1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsHasWidgetTab:I

    .line 234
    invoke-virtual {p0, v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->roundedCornerCover_setHasWidgetTab(Z)V

    .line 238
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->update()V

    .line 239
    return-void

    :cond_3
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method public roundedCornerCover_setTabHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$5;-><init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method public roundedCornerCover_setTopIsFullScreen(Z)V
    .locals 0
    .parameter "topIsFullscreen"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mTopIsFullscreen:Z

    .line 201
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->update()V

    .line 202
    return-void
.end method

.method public setSystemTheme(Ljava/lang/String;)V
    .locals 3
    .parameter "systemtheme"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->findBooleanByResourceName(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverOpen:Z

    .line 329
    iget-boolean v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverNeedDoing:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->showRoundedCornerCover()V

    .line 334
    :goto_0
    const-string v0, "jiayh2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemTheme systemtheme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRoundedCornerCoverOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mRoundedCornerCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->hideRoundedCornerCover()V

    goto :goto_0
.end method
