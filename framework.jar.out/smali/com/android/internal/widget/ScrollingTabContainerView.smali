.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field center_background:I

.field left_background:I

.field private mAllowCollapse:Z

.field private mContentHeight:I

.field public mIsIdeaUITheme:Z

.field mIsLenovoTheme:Z

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/ScrollingTabContainerView$TabView;",
            ">;"
        }
    .end annotation
.end field

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field mThemeTextColor:Landroid/content/res/ColorStateList;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field right_background:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v6, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 79
    iput-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsLenovoTheme:Z

    .line 80
    iput-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    .line 82
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabList:Ljava/util/ArrayList;

    .line 83
    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->left_background:I

    .line 84
    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->right_background:I

    .line 85
    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    .line 88
    iput-object v12, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mThemeTextColor:Landroid/content/res/ColorStateList;

    .line 93
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 96
    .local v1, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 97
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 102
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 103
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, is_dark:Z
    const/4 v5, 0x0

    .line 110
    .local v5, is_light:Z
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    .line 111
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v8, #android:attr@actionBarTabBarStyle#t

    invoke-virtual {v6, v12, v7, v8, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 117
    .local v3, divider_id:I
    const v6, 0x308012e

    if-ne v3, v6, :cond_7

    .line 118
    const/4 v4, 0x1

    .line 119
    iput-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v3           #divider_id:I
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 136
    :cond_2
    iput-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsLenovoTheme:Z

    .line 139
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Landroid/content/res/Resources;->getThemeTabBackground(Landroid/content/Context;Z)[I

    move-result-object v2

    .line 140
    .local v2, darray:[I
    if-eqz v2, :cond_6

    array-length v6, v2

    if-lt v6, v13, :cond_6

    .line 141
    aget v6, v2, v10

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->left_background:I

    .line 142
    aget v6, v2, v11

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->right_background:I

    .line 143
    const/4 v6, 0x2

    aget v6, v2, v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    .line 152
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    .line 153
    :cond_4
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_5
    if-eqz v4, :cond_a

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x3060021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mThemeTextColor:Landroid/content/res/ColorStateList;

    .line 166
    :cond_6
    :goto_1
    return-void

    .line 120
    .end local v2           #darray:[I
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v3       #divider_id:I
    :cond_7
    const v6, 0x308012f

    if-ne v3, v6, :cond_8

    .line 121
    const/4 v5, 0x1

    .line 122
    iput-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    goto :goto_0

    .line 123
    :cond_8
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->isCts()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Landroid/content/Context;->supportNonIdeaUITheme()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    const v6, #android:drawable@list_divider_holo_dark#t

    if-ne v3, v6, :cond_9

    .line 125
    const/4 v4, 0x1

    goto :goto_0

    .line 126
    :cond_9
    const v6, #android:drawable@list_divider_holo_light#t

    if-ne v3, v6, :cond_0

    .line 127
    const/4 v5, 0x1

    goto :goto_0

    .line 160
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v3           #divider_id:I
    .restart local v2       #darray:[I
    :cond_a
    if-eqz v5, :cond_6

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x3060022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mThemeTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 284
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, #android:attr@actionDropDownStyle#t

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 286
    .local v0, spinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 289
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 274
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, #android:attr@actionBarTabBarStyle#t

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 276
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 277
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 278
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter "tab"
    .parameter "forAdapter"

    .prologue
    const/4 v2, 0x0

    .line 482
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 483
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 484
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    :goto_0
    return-object v0

    .line 488
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 490
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 491
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return v4

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 518
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 519
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 524
    :cond_0
    if-eqz p3, :cond_1

    .line 525
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 527
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 531
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTabBackground()V

    .line 534
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 499
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 500
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 505
    :cond_0
    if-eqz p2, :cond_1

    .line 506
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 508
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTabBackground()V

    .line 515
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 350
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 308
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 311
    :cond_0
    if-nez p1, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 315
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f80

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 316
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 317
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 329
    :goto_0
    return-void

    .line 322
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 323
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 324
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchWindowFocusChanged(Z)V

    .line 460
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsLenovoTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    if-eqz v0, :cond_0

    .line 461
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/ideaui/IdeaUI;->roundedCornerCover_setHasScrollingTab(Z)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/ideaui/IdeaUI;->roundedCornerCover_setHasScrollingTab(Z)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 360
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 299
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTabBackground()V

    .line 305
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 436
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsLenovoTheme:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    if-eqz v0, :cond_1

    .line 437
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/ideaui/IdeaUI;->roundedCornerCover_setHasScrollingTab(Z)V

    .line 440
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 574
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 575
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 445
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 447
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsLenovoTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/ideaui/IdeaUI;->roundedCornerCover_setTabHeight(I)V

    .line 450
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/ideaui/IdeaUI;->roundedCornerCover_setHasScrollingTab(Z)V

    .line 453
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 171
    .local v5, widthMode:I
    if-ne v5, v10, :cond_2

    move v2, v6

    .line 172
    .local v2, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 174
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 175
    .local v1, childCount:I
    if-le v1, v6, :cond_4

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x8000

    if-ne v5, v8, :cond_4

    .line 177
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_3

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 182
    :goto_1
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 187
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 189
    if-nez v2, :cond_5

    iget-boolean v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_5

    move v0, v6

    .line 191
    .local v0, canCollapse:Z
    :goto_3
    if-eqz v0, :cond_7

    .line 193
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 194
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 195
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 203
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 204
    .local v4, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 207
    .local v3, newWidth:I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 209
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 211
    :cond_1
    return-void

    .end local v0           #canCollapse:Z
    .end local v1           #childCount:I
    .end local v2           #lockedExpanded:Z
    .end local v3           #newWidth:I
    .end local v4           #oldWidth:I
    :cond_2
    move v2, v7

    .line 171
    goto :goto_0

    .line 180
    .restart local v1       #childCount:I
    .restart local v2       #lockedExpanded:Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 184
    :cond_4
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v0, v7

    .line 189
    goto :goto_3

    .line 197
    .restart local v0       #canCollapse:Z
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 200
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 471
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 473
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsLenovoTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    if-eqz v0, :cond_0

    .line 474
    if-eqz p2, :cond_0

    .line 475
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/ideaui/IdeaUI;->roundedCornerCover_setHasScrollingTab(Z)V

    .line 478
    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 563
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 569
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTabBackground()V

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 558
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .parameter "allowCollapse"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 224
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 269
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 271
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 256
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 257
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 258
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 259
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 261
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 262
    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v2           #isSelected:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 266
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 541
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 544
    :cond_1
    return-void
.end method

.method updateTabBackground()V
    .locals 9

    .prologue
    .line 364
    iget-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsLenovoTheme:Z

    if-eqz v7, :cond_7

    .line 366
    iget-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsIdeaUITheme:Z

    if-eqz v7, :cond_0

    .line 367
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    const v7, 0x30800fc

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackgroundResource(I)V

    .line 385
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 386
    .local v4, ntabsize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_7

    .line 387
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 388
    .local v6, v:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v6, :cond_2

    .line 394
    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getPaddingTop()I

    move-result v5

    .line 395
    .local v5, ntop:I
    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getPaddingLeft()I

    move-result v2

    .line 396
    .local v2, nleft:I
    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getPaddingBottom()I

    move-result v1

    .line 397
    .local v1, nbottom:I
    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getPaddingRight()I

    move-result v3

    .line 398
    .local v3, nright:I
    if-nez v0, :cond_4

    .line 399
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->left_background:I

    if-eqz v7, :cond_3

    .line 400
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->left_background:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundResource(I)V

    .line 413
    :cond_1
    :goto_1
    invoke-virtual {v6, v2, v5, v3, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setPadding(IIII)V

    .line 416
    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mThemeTextColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_2

    .line 417
    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mThemeTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 386
    .end local v1           #nbottom:I
    .end local v2           #nleft:I
    .end local v3           #nright:I
    .end local v5           #ntop:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .restart local v1       #nbottom:I
    .restart local v2       #nleft:I
    .restart local v3       #nright:I
    .restart local v5       #ntop:I
    :cond_3
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    if-eqz v7, :cond_1

    .line 402
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundResource(I)V

    goto :goto_1

    .line 404
    :cond_4
    add-int/lit8 v7, v4, -0x1

    if-ne v0, v7, :cond_6

    .line 405
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->right_background:I

    if-eqz v7, :cond_5

    .line 406
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->right_background:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundResource(I)V

    goto :goto_1

    .line 407
    :cond_5
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    if-eqz v7, :cond_1

    .line 408
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundResource(I)V

    goto :goto_1

    .line 410
    :cond_6
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    if-eqz v7, :cond_1

    .line 411
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->center_background:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundResource(I)V

    goto :goto_1

    .line 426
    .end local v0           #i:I
    .end local v1           #nbottom:I
    .end local v2           #nleft:I
    .end local v3           #nright:I
    .end local v4           #ntabsize:I
    .end local v5           #ntop:I
    .end local v6           #v:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_7
    return-void
.end method
