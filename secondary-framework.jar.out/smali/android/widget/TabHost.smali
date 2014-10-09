.class public Landroid/widget/TabHost;
.super Landroid/widget/FrameLayout;
.source "TabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabHost$IntentContentStrategy;,
        Landroid/widget/TabHost$FactoryContentStrategy;,
        Landroid/widget/TabHost$ViewIdContentStrategy;,
        Landroid/widget/TabHost$ViewIndicatorStrategy;,
        Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;,
        Landroid/widget/TabHost$LabelIndicatorStrategy;,
        Landroid/widget/TabHost$ContentStrategy;,
        Landroid/widget/TabHost$IndicatorStrategy;,
        Landroid/widget/TabHost$TabSpec;,
        Landroid/widget/TabHost$TabContentFactory;,
        Landroid/widget/TabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final TABWIDGET_LOCATION_BOTTOM:I = 0x3

.field private static final TABWIDGET_LOCATION_LEFT:I = 0x0

.field private static final TABWIDGET_LOCATION_RIGHT:I = 0x2

.field private static final TABWIDGET_LOCATION_TOP:I = 0x1


# instance fields
.field center_background:I

.field left_background:I

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field mHasAttchedToWindow:Z

.field mIdeaUI_hasFoucus:Z

.field mIdeaUI_hasShow:Z

.field mIdeaui_reportHasTab:Z

.field mIdeaui_showRoundedCorner:Z

.field mIsIdeaUITheme:Z

.field mIsLenovoTheme:Z

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Landroid/widget/TabWidget;

.field mThemeTextColor:Landroid/content/res/ColorStateList;

.field right_background:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 70
    iput-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 73
    iput-boolean v2, p0, Landroid/widget/TabHost;->mIsLenovoTheme:Z

    .line 74
    iput-boolean v2, p0, Landroid/widget/TabHost;->mIsIdeaUITheme:Z

    .line 76
    iput-boolean v2, p0, Landroid/widget/TabHost;->mIdeaui_reportHasTab:Z

    .line 77
    iput-boolean v3, p0, Landroid/widget/TabHost;->mIdeaUI_hasFoucus:Z

    .line 78
    iput-boolean v3, p0, Landroid/widget/TabHost;->mIdeaUI_hasShow:Z

    .line 79
    iput-boolean v3, p0, Landroid/widget/TabHost;->mIdeaui_showRoundedCorner:Z

    .line 81
    iput v2, p0, Landroid/widget/TabHost;->left_background:I

    .line 82
    iput v2, p0, Landroid/widget/TabHost;->right_background:I

    .line 83
    iput v2, p0, Landroid/widget/TabHost;->center_background:I

    .line 86
    iput-object v4, p0, Landroid/widget/TabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    .line 87
    iput-boolean v2, p0, Landroid/widget/TabHost;->mHasAttchedToWindow:Z

    .line 94
    iput-object v4, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 102
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v10, #android:layout@tab_indicator_holo#t

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 69
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 70
    iput-object v6, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 73
    iput-boolean v7, p0, Landroid/widget/TabHost;->mIsLenovoTheme:Z

    .line 74
    iput-boolean v7, p0, Landroid/widget/TabHost;->mIsIdeaUITheme:Z

    .line 76
    iput-boolean v7, p0, Landroid/widget/TabHost;->mIdeaui_reportHasTab:Z

    .line 77
    iput-boolean v8, p0, Landroid/widget/TabHost;->mIdeaUI_hasFoucus:Z

    .line 78
    iput-boolean v8, p0, Landroid/widget/TabHost;->mIdeaUI_hasShow:Z

    .line 79
    iput-boolean v8, p0, Landroid/widget/TabHost;->mIdeaui_showRoundedCorner:Z

    .line 81
    iput v7, p0, Landroid/widget/TabHost;->left_background:I

    .line 82
    iput v7, p0, Landroid/widget/TabHost;->right_background:I

    .line 83
    iput v7, p0, Landroid/widget/TabHost;->center_background:I

    .line 86
    iput-object v6, p0, Landroid/widget/TabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    .line 87
    iput-boolean v7, p0, Landroid/widget/TabHost;->mHasAttchedToWindow:Z

    .line 94
    iput-object v6, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 108
    sget-object v5, Lcom/android/internal/R$styleable;->TabWidget:[I

    const v6, #android:attr@tabWidgetStyle#t

    invoke-virtual {p1, p2, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 114
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 115
    .local v2, divider_id:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    iget v5, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    if-nez v5, :cond_0

    .line 120
    iput v10, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 123
    :cond_0
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x308012e

    if-eq v2, v5, :cond_1

    const v5, 0x308012f

    if-ne v2, v5, :cond_2

    .line 129
    :cond_1
    iput-boolean v8, p0, Landroid/widget/TabHost;->mIsIdeaUITheme:Z

    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->isCts()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/content/Context;->supportNonIdeaUITheme()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-boolean v5, p0, Landroid/widget/TabHost;->mIsIdeaUITheme:Z

    if-eqz v5, :cond_8

    .line 133
    :cond_4
    iget v5, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    if-ne v5, v10, :cond_8

    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, is_dark:Z
    const/4 v4, 0x0

    .line 137
    .local v4, is_light:Z
    const v5, #android:drawable@list_divider_holo_dark#t

    if-eq v2, v5, :cond_5

    const v5, 0x308012e

    if-ne v2, v5, :cond_9

    .line 139
    :cond_5
    const/4 v3, 0x1

    .line 140
    iput-boolean v8, p0, Landroid/widget/TabHost;->mIsLenovoTheme:Z

    .line 147
    :cond_6
    :goto_0
    if-lez v2, :cond_8

    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    .line 149
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Landroid/content/res/Resources;->getThemeTabBackground(Landroid/content/Context;Z)[I

    move-result-object v1

    .line 150
    .local v1, darray:[I
    if-eqz v1, :cond_8

    array-length v5, v1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_8

    .line 151
    aget v5, v1, v7

    iput v5, p0, Landroid/widget/TabHost;->left_background:I

    .line 152
    aget v5, v1, v8

    iput v5, p0, Landroid/widget/TabHost;->right_background:I

    .line 153
    aget v5, v1, v9

    iput v5, p0, Landroid/widget/TabHost;->center_background:I

    .line 162
    if-eqz v3, :cond_b

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3060021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    .line 174
    .end local v1           #darray:[I
    .end local v3           #is_dark:Z
    .end local v4           #is_light:Z
    :cond_8
    :goto_1
    return-void

    .line 141
    .restart local v3       #is_dark:Z
    .restart local v4       #is_light:Z
    :cond_9
    const v5, #android:drawable@list_divider_holo_light#t

    if-eq v2, v5, :cond_a

    const v5, 0x308012f

    if-ne v2, v5, :cond_6

    .line 143
    :cond_a
    const/4 v4, 0x1

    .line 144
    iput-boolean v8, p0, Landroid/widget/TabHost;->mIsLenovoTheme:Z

    goto :goto_0

    .line 165
    .restart local v1       #darray:[I
    :cond_b
    if-eqz v4, :cond_8

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3060022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method

.method static synthetic access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TabHost;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    return v0
.end method

.method static synthetic access$902(Landroid/widget/TabHost;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    return p1
.end method

.method private getTabWidgetLocation()I
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x1

    .line 498
    .local v0, location:I
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 505
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTop()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x3

    .line 509
    :goto_0
    return v0

    .line 500
    :pswitch_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getLeft()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x2

    .line 502
    :goto_1
    goto :goto_0

    .line 500
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 505
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private ideaUI_updateTab()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 577
    iget-boolean v0, p0, Landroid/widget/TabHost;->mIdeaUI_hasShow:Z

    .line 578
    .local v0, hasTab:Z
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 580
    .local v1, viewRoot:Landroid/view/ViewRootImpl;
    iget-boolean v2, p0, Landroid/widget/TabHost;->mIsLenovoTheme:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TabHost;->mIsIdeaUITheme:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget-boolean v2, v2, Landroid/widget/TabWidget;->mIdeaUI_IsLenovoBackground:Z

    if-eqz v2, :cond_1

    .line 583
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/widget/TabHost;->mIdeaui_reportHasTab:Z

    if-nez v2, :cond_2

    .line 584
    invoke-static {v3}, Lcom/lenovo/ideaui/IdeaUI;->roundedCornerCover_setHasWidgetTab(Z)V

    .line 585
    iput-boolean v3, p0, Landroid/widget/TabHost;->mIdeaui_reportHasTab:Z

    .line 592
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 593
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mIdeaui_reportHasTab:Z

    .line 596
    :cond_1
    return-void

    .line 586
    :cond_2
    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroid/widget/TabHost;->mIdeaui_reportHasTab:Z

    if-eqz v2, :cond_0

    .line 588
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TabHost;->mIdeaui_reportHasTab:Z

    goto :goto_0
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setFocusableInTouchMode(Z)V

    .line 178
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setDescendantFocusability(I)V

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 182
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 686
    :cond_0
    return-void
.end method

.method private updateTabTheme()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 284
    iget-boolean v8, p0, Landroid/widget/TabHost;->mIsLenovoTheme:Z

    if-eqz v8, :cond_a

    .line 286
    iget-boolean v8, p0, Landroid/widget/TabHost;->mIsIdeaUITheme:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget-boolean v8, v8, Landroid/widget/TabWidget;->mIdeaUI_IsLenovoBackground:Z

    if-eqz v8, :cond_0

    .line 287
    iget-object v8, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8, v10}, Landroid/widget/TabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v8, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    const v9, 0x30800fc

    invoke-virtual {v8, v9}, Landroid/widget/TabWidget;->setBackgroundResource(I)V

    .line 292
    invoke-virtual {p0}, Landroid/widget/TabHost;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, #android:id@content#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 294
    .local v7, view:Landroid/view/View;
    iget-boolean v8, p0, Landroid/widget/TabHost;->mHasAttchedToWindow:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    if-eqz v7, :cond_0

    instance-of v8, v7, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    move-object v1, v7

    .line 298
    check-cast v1, Landroid/widget/FrameLayout;

    .line 299
    .local v1, frame:Landroid/widget/FrameLayout;
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x30800fd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 302
    .local v0, foreground:Landroid/graphics/drawable/Drawable;
    iget-boolean v8, p0, Landroid/widget/TabHost;->mIdeaui_showRoundedCorner:Z

    if-eqz v8, :cond_4

    .line 303
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 312
    .end local v0           #foreground:Landroid/graphics/drawable/Drawable;
    .end local v1           #frame:Landroid/widget/FrameLayout;
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 313
    .local v3, ntabsize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_a

    .line 314
    iget-object v8, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost$TabSpec;

    .line 315
    .local v4, spec:Landroid/widget/TabHost$TabSpec;
    const/4 v6, 0x0

    .line 316
    .local v6, v:Landroid/view/View;
    if-eqz v4, :cond_3

    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v4}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 317
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v4}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TabHost$LabelIndicatorStrategy;

    if-eqz v8, :cond_5

    .line 318
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v4}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v8

    check-cast v8, Landroid/widget/TabHost$LabelIndicatorStrategy;

    invoke-virtual {v8}, Landroid/widget/TabHost$LabelIndicatorStrategy;->getIndicatorView()Landroid/view/View;

    move-result-object v6

    .line 330
    :cond_1
    :goto_2
    if-eqz v6, :cond_3

    .line 336
    if-nez v2, :cond_7

    .line 337
    iget v8, p0, Landroid/widget/TabHost;->left_background:I

    if-eqz v8, :cond_6

    .line 338
    iget v8, p0, Landroid/widget/TabHost;->left_background:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    :cond_2
    :goto_3
    const v8, #android:id@title#t

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 354
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_3

    iget-object v8, p0, Landroid/widget/TabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_3

    .line 355
    iget-object v8, p0, Landroid/widget/TabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 357
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x30a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 360
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 313
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 305
    .end local v2           #i:I
    .end local v3           #ntabsize:I
    .end local v4           #spec:Landroid/widget/TabHost$TabSpec;
    .end local v6           #v:Landroid/view/View;
    .restart local v0       #foreground:Landroid/graphics/drawable/Drawable;
    .restart local v1       #frame:Landroid/widget/FrameLayout;
    .restart local v7       #view:Landroid/view/View;
    :cond_4
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 319
    .end local v0           #foreground:Landroid/graphics/drawable/Drawable;
    .end local v1           #frame:Landroid/widget/FrameLayout;
    .end local v7           #view:Landroid/view/View;
    .restart local v2       #i:I
    .restart local v3       #ntabsize:I
    .restart local v4       #spec:Landroid/widget/TabHost$TabSpec;
    .restart local v6       #v:Landroid/view/View;
    :cond_5
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v4}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;

    if-eqz v8, :cond_1

    .line 320
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v4}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v8

    check-cast v8, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;

    invoke-virtual {v8}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->getIndicatorView()Landroid/view/View;

    move-result-object v6

    goto :goto_2

    .line 339
    :cond_6
    iget v8, p0, Landroid/widget/TabHost;->center_background:I

    if-eqz v8, :cond_2

    .line 340
    iget v8, p0, Landroid/widget/TabHost;->center_background:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 342
    :cond_7
    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_9

    .line 343
    iget v8, p0, Landroid/widget/TabHost;->right_background:I

    if-eqz v8, :cond_8

    .line 344
    iget v8, p0, Landroid/widget/TabHost;->right_background:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 345
    :cond_8
    iget v8, p0, Landroid/widget/TabHost;->center_background:I

    if-eqz v8, :cond_2

    .line 346
    iget v8, p0, Landroid/widget/TabHost;->center_background:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 348
    :cond_9
    iget v8, p0, Landroid/widget/TabHost;->center_background:I

    if-eqz v8, :cond_2

    .line 349
    iget v8, p0, Landroid/widget/TabHost;->center_background:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 366
    .end local v2           #i:I
    .end local v3           #ntabsize:I
    .end local v4           #spec:Landroid/widget/TabHost$TabSpec;
    .end local v6           #v:Landroid/view/View;
    :cond_a
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 403
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 404
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_1
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 415
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 419
    :cond_2
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 420
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 423
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 427
    :cond_3
    iget-boolean v1, p0, Landroid/widget/TabHost;->mHasAttchedToWindow:Z

    if-eqz v1, :cond_4

    .line 429
    invoke-direct {p0}, Landroid/widget/TabHost;->updateTabTheme()V

    .line 432
    :cond_4
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 440
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 441
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 442
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    invoke-virtual {p0}, Landroid/widget/TabHost;->requestLayout()V

    .line 444
    invoke-virtual {p0}, Landroid/widget/TabHost;->invalidate()V

    .line 445
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 519
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isRootNamespace()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    const/16 v2, 0x13

    .line 525
    .local v2, keyCodeShouldChangeFocus:I
    const/16 v0, 0x21

    .line 526
    .local v0, directionShouldChangeFocus:I
    const/4 v3, 0x2

    .line 528
    .local v3, soundEffect:I
    invoke-direct {p0}, Landroid/widget/TabHost;->getTabWidgetLocation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 546
    :pswitch_0
    const/16 v2, 0x13

    .line 547
    const/16 v0, 0x21

    .line 548
    const/4 v3, 0x2

    .line 551
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 553
    iget-object v4, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v5, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 554
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->playSoundEffect(I)V

    .line 555
    const/4 v1, 0x1

    .line 558
    .end local v0           #directionShouldChangeFocus:I
    .end local v1           #handled:Z
    .end local v2           #keyCodeShouldChangeFocus:I
    .end local v3           #soundEffect:I
    :cond_0
    return v1

    .line 530
    .restart local v0       #directionShouldChangeFocus:I
    .restart local v1       #handled:Z
    .restart local v2       #keyCodeShouldChangeFocus:I
    .restart local v3       #soundEffect:I
    :pswitch_1
    const/16 v2, 0x15

    .line 531
    const/16 v0, 0x11

    .line 532
    const/4 v3, 0x1

    .line 533
    goto :goto_0

    .line 535
    :pswitch_2
    const/16 v2, 0x16

    .line 536
    const/16 v0, 0x42

    .line 537
    const/4 v3, 0x3

    .line 538
    goto :goto_0

    .line 540
    :pswitch_3
    const/16 v2, 0x14

    .line 541
    const/16 v0, 0x82

    .line 542
    const/4 v3, 0x4

    .line 543
    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 564
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 570
    :cond_0
    iget-boolean p1, p0, Landroid/widget/TabHost;->mIdeaUI_hasFoucus:Z

    .line 573
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 463
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method public ideaUI_setShowRoundedCorner(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 604
    iput-boolean p1, p0, Landroid/widget/TabHost;->mIdeaui_showRoundedCorner:Z

    .line 605
    invoke-direct {p0}, Landroid/widget/TabHost;->updateTabTheme()V

    .line 606
    return-void
.end method

.method public newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 189
    new-instance v0, Landroid/widget/TabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 273
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 274
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TabHost;->mHasAttchedToWindow:Z

    .line 278
    invoke-direct {p0}, Landroid/widget/TabHost;->updateTabTheme()V

    .line 280
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 373
    invoke-direct {p0}, Landroid/widget/TabHost;->updateTabTheme()V

    .line 374
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 380
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 381
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 382
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 620
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 621
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 626
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 388
    if-nez p1, :cond_1

    .line 391
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 395
    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 610
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 612
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/TabHost;->mIdeaUI_hasShow:Z

    .line 614
    return-void

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 255
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 630
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 639
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 640
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->tabClosed()V

    .line 643
    :cond_2
    iput p1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 644
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    .line 648
    .local v0, spec:Landroid/widget/TabHost$TabSpec;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->focusCurrentTab(I)V

    .line 651
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v0}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 653
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 654
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    :cond_3
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 665
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 669
    :cond_4
    invoke-direct {p0}, Landroid/widget/TabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 475
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 476
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 481
    :cond_0
    return-void

    .line 475
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 679
    iput-object p1, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 680
    return-void
.end method

.method public setTabCoordScale(F)V
    .locals 1
    .parameter "scal"

    .prologue
    .line 1055
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->setTabCoordScale(F)V

    .line 1056
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 204
    const v0, #android:id@tabs#t

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    .line 205
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Landroid/widget/TabHost$1;

    invoke-direct {v0, p0}, Landroid/widget/TabHost$1;-><init>(Landroid/widget/TabHost;)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 230
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    new-instance v1, Landroid/widget/TabHost$2;

    invoke-direct {v1, p0}, Landroid/widget/TabHost$2;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V

    .line 239
    const v0, #android:id@tabcontent#t

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 240
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    iget-boolean v0, p0, Landroid/widget/TabHost;->mIsLenovoTheme:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_2
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 266
    iput-object p1, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 267
    return-void
.end method
