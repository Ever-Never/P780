.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$1;,
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private bchange_background:Z

.field center_background:I

.field left_background:I

.field private final mBounds:Landroid/graphics/Rect;

.field private mDrawBottomStrips:Z

.field public mIdeaUI_IsLenovoBackground:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field mNeadSlider:Z

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mSliderDrawable:Landroid/graphics/drawable/Drawable;

.field mSliderItemWidth:F

.field private mStripMoved:Z

.field mTabCoordScale:F

.field right_background:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const v0, #android:attr@tabWidgetStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput v8, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 65
    iput-boolean v6, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 68
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 71
    iput v8, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 75
    iput-boolean v5, p0, Landroid/widget/TabWidget;->bchange_background:Z

    .line 76
    iput v5, p0, Landroid/widget/TabWidget;->left_background:I

    .line 77
    iput v5, p0, Landroid/widget/TabWidget;->right_background:I

    .line 78
    iput v5, p0, Landroid/widget/TabWidget;->center_background:I

    .line 79
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mIdeaUI_IsLenovoBackground:Z

    .line 645
    iput v7, p0, Landroid/widget/TabWidget;->mTabCoordScale:F

    .line 646
    iput v7, p0, Landroid/widget/TabWidget;->mSliderItemWidth:F

    .line 648
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mNeadSlider:Z

    .line 93
    sget-object v4, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 97
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-direct {p0}, Landroid/widget/TabWidget;->initTabWidget()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    new-array v3, v6, [I

    const v4, #android:attr@background#t

    aput v4, v3, v5

    .line 110
    .local v3, styles:[I
    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 113
    .local v1, b:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 115
    .local v2, res_id:I
    const v4, 0x30800fc

    if-ne v2, v4, :cond_0

    .line 116
    iput-boolean v6, p0, Landroid/widget/TabWidget;->mIdeaUI_IsLenovoBackground:Z

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    .end local v1           #b:Landroid/content/res/TypedArray;
    .end local v2           #res_id:I
    .end local v3           #styles:[I
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->setMotionEventSplittingEnabled(Z)V

    .line 125
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 151
    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 153
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 154
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 158
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_3

    .line 160
    iget-object v3, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 161
    const v3, #android:drawable@tab_bottom_left_v4#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 164
    :cond_0
    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 165
    const v3, #android:drawable@tab_bottom_right_v4#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->setFocusable(Z)V

    .line 183
    invoke-virtual {p0, p0}, Landroid/widget/TabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    const-string v3, "com.mediatek.videoplayer"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    iput-boolean v5, p0, Landroid/widget/TabWidget;->bchange_background:Z

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/res/Resources;->getThemeTabBackground(Landroid/content/Context;Z)[I

    move-result-object v1

    .line 189
    .local v1, darray:[I
    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 190
    aget v3, v1, v6

    iput v3, p0, Landroid/widget/TabWidget;->left_background:I

    .line 191
    aget v3, v1, v5

    iput v3, p0, Landroid/widget/TabWidget;->right_background:I

    .line 192
    const/4 v3, 0x2

    aget v3, v1, v3

    iput v3, p0, Landroid/widget/TabWidget;->center_background:I

    .line 196
    .end local v1           #darray:[I
    :cond_2
    return-void

    .line 170
    :cond_3
    iget-object v3, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    .line 171
    const v3, #android:drawable@tab_bottom_left#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 174
    :cond_4
    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 175
    const v3, #android:drawable@tab_bottom_right#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .parameter "child"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 574
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f80

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 577
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 583
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 585
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 589
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 591
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 361
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 363
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 364
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TabWidget;->mNeadSlider:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->isCts()Z

    move-result v18

    if-nez v18, :cond_0

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v9

    .line 372
    .local v9, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v18

    sub-int v18, v18, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v19

    sub-int v17, v18, v19

    .line 373
    .local v17, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v16

    .line 374
    .local v16, viewHeight:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TabWidget;->mSliderItemWidth:F

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSliderItemWidth:F

    move/from16 v18, v0

    const v19, 0x3c23d70a

    mul-float v8, v18, v19

    .line 376
    .local v8, offsetWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mTabCoordScale:F

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSliderItemWidth:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v13, v18, v9

    .line 377
    .local v13, sliderItemLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSliderItemWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x4000

    mul-float v19, v19, v8

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v14, v13, v18

    .line 378
    .local v14, sliderItemRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v15, v16, v18

    .line 379
    .local v15, sliderItemTop:I
    move/from16 v12, v16

    .line 380
    .local v12, sliderItemBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v15, v14, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TabWidget;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 388
    .end local v8           #offsetWidth:F
    .end local v9           #paddingLeft:I
    .end local v12           #sliderItemBottom:I
    .end local v13           #sliderItemLeft:I
    .end local v14           #sliderItemRight:I
    .end local v15           #sliderItemTop:I
    .end local v16           #viewHeight:I
    .end local v17           #viewWidth:I
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v18

    if-nez v18, :cond_2

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TabWidget;->bchange_background:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->left_background:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->right_background:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->center_background:I

    move/from16 v19, v0

    add-int v18, v18, v19

    if-lez v18, :cond_8

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v4

    .line 397
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v4, :cond_8

    .line 398
    if-nez v5, :cond_5

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->left_background:I

    move/from16 v18, v0

    if-lez v18, :cond_4

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->left_background:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    .line 397
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 401
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->center_background:I

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 402
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->center_background:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 404
    :cond_5
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->right_background:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->right_background:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 407
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->center_background:I

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 408
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->center_background:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 410
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->center_background:I

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 411
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->center_background:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 415
    .end local v4           #count:I
    .end local v5           #i:I
    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TabWidget;->bchange_background:Z

    .line 421
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TabWidget;->mSelectedTab:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v11

    .line 428
    .local v11, selectedChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 429
    .local v6, leftStrip:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 431
    .local v10, rightStrip:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/view/View;->getDrawableState()[I

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 432
    invoke-virtual {v11}, Landroid/view/View;->getDrawableState()[I

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 434
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TabWidget;->mStripMoved:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 436
    .local v3, bounds:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 437
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v7

    .line 439
    .local v7, myHeight:I
    const/16 v18, 0x0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    sub-int v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    sub-int v19, v7, v19

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 441
    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    sub-int v19, v7, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v20

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    add-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 446
    .end local v3           #bounds:Landroid/graphics/Rect;
    .end local v7           #myHeight:I
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 447
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 498
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 499
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 504
    .end local v0           #tabView:Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 547
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 550
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 553
    if-eq v0, p1, :cond_0

    .line 554
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 557
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TabWidget;->mNeadSlider:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TabWidget;->mTabCoordScale:F

    .line 558
    :cond_1
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 135
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 145
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 140
    .restart local p2
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 141
    iget p2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    goto :goto_0

    .line 142
    :cond_2
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 143
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    const/high16 v1, 0x4000

    .line 202
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 205
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 209
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 211
    return-void
.end method

.method measureHorizontal(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-nez v9, :cond_0

    .line 216
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 257
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 222
    .local v8, unspecifiedWidth:I
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 223
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 225
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 226
    .local v5, extraWidth:I
    if-lez v5, :cond_6

    .line 227
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    .line 229
    .local v3, count:I
    const/4 v1, 0x0

    .line 230
    .local v1, childCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 231
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 230
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 233
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 236
    .end local v0           #child:Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    .line 237
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v9, v9

    if-eq v9, v3, :cond_4

    .line 238
    :cond_3
    new-array v9, v3, [I

    iput-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 240
    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 241
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 240
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 243
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 244
    .local v2, childWidth:I
    div-int v4, v5, v1

    .line 245
    .local v4, delta:I
    sub-int v9, v2, v4

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 246
    .local v7, newWidth:I
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v7, v9, v6

    .line 248
    sub-int v9, v2, v7

    sub-int/2addr v5, v9

    .line 249
    add-int/lit8 v1, v1, -0x1

    .line 250
    iget v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    goto :goto_4

    .line 256
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #childWidth:I
    .end local v3           #count:I
    .end local v4           #delta:I
    .end local v6           #i:I
    .end local v7           #newWidth:I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 608
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 609
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    if-eqz p2, :cond_0

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, i:I
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 616
    .local v1, numTabs:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 617
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 618
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 619
    iget-object v2, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 620
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 626
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 510
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 512
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 513
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 529
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 530
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 131
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 595
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 596
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 597
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 478
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 483
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 485
    :cond_2
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 486
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 487
    iput-boolean v2, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 489
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 564
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 565
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 566
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 301
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 302
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 303
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 304
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 322
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 324
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 325
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .parameter "stripEnabled"

    .prologue
    .line 345
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 346
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 347
    return-void
.end method

.method public setTabCoordScale(F)V
    .locals 3
    .parameter "dmp"

    .prologue
    .line 653
    iput p1, p0, Landroid/widget/TabWidget;->mTabCoordScale:F

    .line 655
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 657
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3080247

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TabWidget;->mNeadSlider:Z

    .line 660
    iget-object v1, p0, Landroid/widget/TabWidget;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3080210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    .line 661
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 662
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 603
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 604
    return-void
.end method
