.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .local v1, density:F
    const/high16 v2, 0x4260

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 66
    const/high16 v2, 0x4080

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 68
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, #android:attr@actionBarStyle#t

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 391
    .local v10, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    sub-int v3, v13, p4

    .line 393
    .local v3, childHeightSize:I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 394
    .local v2, childHeightMode:I
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 396
    .local v4, childHeightSpec:I
    instance-of v13, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v13, :cond_5

    move-object v13, p0

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v9, v13

    .line 398
    .local v9, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v7, 0x1

    .line 401
    .local v7, hasText:Z
    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v8, 0x1

    .line 404
    .local v8, isIdeauiTheme:Z
    :goto_2
    const/4 v1, 0x0

    .line 405
    .local v1, cellsUsed:I
    if-lez p2, :cond_3

    if-eqz v7, :cond_0

    const/4 v13, 0x2

    move/from16 v0, p2

    if-lt v0, v13, :cond_3

    .line 406
    :cond_0
    mul-int v13, p1, p2

    const/high16 v14, -0x8000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 408
    .local v5, childWidthSpec:I
    invoke-virtual {p0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 411
    .local v11, measuredWidth:I
    div-int v1, v11, p1

    .line 412
    rem-int v13, v11, p1

    if-eqz v13, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 416
    :cond_1
    if-eqz v8, :cond_2

    .line 417
    :cond_2
    if-eqz v7, :cond_3

    const/4 v13, 0x2

    if-ge v1, v13, :cond_3

    const/4 v1, 0x2

    .line 424
    .end local v5           #childWidthSpec:I
    .end local v11           #measuredWidth:I
    :cond_3
    iget-boolean v13, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v13, :cond_8

    if-nez v7, :cond_4

    if-eqz v8, :cond_8

    :cond_4
    const/4 v6, 0x1

    .line 427
    .local v6, expandable:Z
    :goto_3
    iput-boolean v6, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 429
    iput v1, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 430
    mul-int v12, v1, p1

    .line 431
    .local v12, targetWidth:I
    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {p0, v13, v4}, Landroid/view/View;->measure(II)V

    .line 433
    return v1

    .line 396
    .end local v1           #cellsUsed:I
    .end local v6           #expandable:Z
    .end local v7           #hasText:Z
    .end local v8           #isIdeauiTheme:Z
    .end local v9           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v12           #targetWidth:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 398
    .restart local v9       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 401
    .restart local v7       #hasText:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 424
    .restart local v1       #cellsUsed:I
    .restart local v8       #isIdeauiTheme:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private onMeasureExactFormat(II)V
    .locals 43
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 153
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 154
    .local v17, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v38

    .line 155
    .local v38, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 157
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v40

    add-int v37, v39, v40

    .line 158
    .local v37, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v40

    add-int v18, v39, v40

    .line 160
    .local v18, heightPadding:I
    const/high16 v39, 0x4000

    move/from16 v0, v17

    move/from16 v1, v39

    if-ne v0, v1, :cond_0

    sub-int v39, v19, v18

    const/high16 v40, 0x4000

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 165
    .local v23, itemHeightSpec:I
    :goto_0
    sub-int v38, v38, v37

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    div-int v4, v38, v39

    .line 169
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    rem-int v6, v38, v39

    .line 171
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_1

    .line 173
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 372
    :goto_1
    return-void

    .line 160
    .end local v4           #cellCount:I
    .end local v6           #cellSizeRemaining:I
    .end local v23           #itemHeightSpec:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v39, v0

    sub-int v40, v19, v18

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v39

    const/high16 v40, -0x8000

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    goto :goto_0

    .line 177
    .restart local v4       #cellCount:I
    .restart local v6       #cellSizeRemaining:I
    .restart local v23       #itemHeightSpec:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    div-int v40, v6, v4

    add-int v5, v39, v40

    .line 179
    .local v5, cellSize:I
    move v8, v4

    .line 180
    .local v8, cellsRemaining:I
    const/16 v26, 0x0

    .line 181
    .local v26, maxChildHeight:I
    const/16 v25, 0x0

    .line 182
    .local v25, maxCellsUsed:I
    const/4 v14, 0x0

    .line 183
    .local v14, expandableItemCount:I
    const/16 v35, 0x0

    .line 184
    .local v35, visibleItemCount:I
    const/16 v16, 0x0

    .line 187
    .local v16, hasOverflow:Z
    const-wide/16 v33, 0x0

    .line 189
    .local v33, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 190
    .local v12, childCount:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v12, :cond_b

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 192
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v39

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 190
    :cond_2
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 194
    :cond_3
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 195
    .local v21, isGeneratedItem:Z
    add-int/lit8 v35, v35, 0x1

    .line 197
    if-eqz v21, :cond_4

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 204
    .local v24, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 205
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 206
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 207
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 208
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 209
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 213
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v39

    if-eqz v39, :cond_8

    const/16 v22, 0x1

    .line 215
    .local v22, isIdeauiTheme:Z
    :goto_4
    if-eqz v21, :cond_9

    move-object/from16 v39, v11

    check-cast v39, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v39

    if-nez v39, :cond_5

    if-eqz v22, :cond_9

    :cond_5
    const/16 v39, 0x1

    :goto_5
    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 220
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_a

    const/4 v7, 0x1

    .line 222
    .local v7, cellsAvailable:I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 225
    .local v9, cellsUsed:I
    move/from16 v0, v25

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 226
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-eqz v39, :cond_6

    add-int/lit8 v14, v14, 0x1

    .line 227
    :cond_6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_7

    const/16 v16, 0x1

    .line 229
    :cond_7
    sub-int/2addr v8, v9

    .line 230
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    move/from16 v0, v26

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 231
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v9, v0, :cond_2

    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v33, v33, v39

    goto/16 :goto_3

    .line 213
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    .end local v22           #isIdeauiTheme:Z
    :cond_8
    const/16 v22, 0x0

    goto :goto_4

    .line 215
    .restart local v22       #isIdeauiTheme:Z
    :cond_9
    const/16 v39, 0x0

    goto :goto_5

    :cond_a
    move v7, v8

    .line 220
    goto :goto_6

    .line 236
    .end local v11           #child:Landroid/view/View;
    .end local v21           #isGeneratedItem:Z
    .end local v22           #isIdeauiTheme:Z
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_b
    if-eqz v16, :cond_d

    const/16 v39, 0x2

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 241
    .local v10, centerSingleExpandedItem:Z
    :goto_7
    const/16 v31, 0x0

    .line 242
    .local v31, needsExpansion:Z
    :goto_8
    if-lez v14, :cond_11

    if-lez v8, :cond_11

    .line 243
    const v27, 0x7fffffff

    .line 244
    .local v27, minCells:I
    const-wide/16 v28, 0x0

    .line 245
    .local v28, minCellsAt:J
    const/16 v30, 0x0

    .line 246
    .local v30, minCellsItemCount:I
    const/16 v20, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v0, v12, :cond_10

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 248
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 251
    .restart local v24       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-nez v39, :cond_e

    .line 246
    :cond_c
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 236
    .end local v10           #centerSingleExpandedItem:Z
    .end local v11           #child:Landroid/view/View;
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v27           #minCells:I
    .end local v28           #minCellsAt:J
    .end local v30           #minCellsItemCount:I
    .end local v31           #needsExpansion:Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_7

    .line 254
    .restart local v10       #centerSingleExpandedItem:Z
    .restart local v11       #child:Landroid/view/View;
    .restart local v24       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v27       #minCells:I
    .restart local v28       #minCellsAt:J
    .restart local v30       #minCellsItemCount:I
    .restart local v31       #needsExpansion:Z
    :cond_e
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 255
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v27, v0

    .line 256
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 257
    const/16 v30, 0x1

    goto :goto_a

    .line 258
    :cond_f
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 259
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v28, v28, v39

    .line 260
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 265
    .end local v11           #child:Landroid/view/View;
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_10
    or-long v33, v33, v28

    .line 267
    move/from16 v0, v30

    if-le v0, v8, :cond_16

    .line 296
    .end local v27           #minCells:I
    .end local v28           #minCellsAt:J
    .end local v30           #minCellsItemCount:I
    :cond_11
    if-nez v16, :cond_1b

    const/16 v39, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    const/16 v32, 0x1

    .line 297
    .local v32, singleItem:Z
    :goto_b
    if-lez v8, :cond_23

    const-wide/16 v39, 0x0

    cmp-long v39, v33, v39

    if-eqz v39, :cond_23

    add-int/lit8 v39, v35, -0x1

    move/from16 v0, v39

    if-lt v8, v0, :cond_12

    if-nez v32, :cond_12

    const/16 v39, 0x1

    move/from16 v0, v25

    move/from16 v1, v39

    if-le v0, v1, :cond_23

    .line 299
    :cond_12
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->bitCount(J)I

    move-result v39

    move/from16 v0, v39

    int-to-float v13, v0

    .line 301
    .local v13, expandCount:F
    if-nez v32, :cond_14

    .line 303
    const-wide/16 v39, 0x1

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-eqz v39, :cond_13

    .line 304
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 305
    .restart local v24       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_13

    const/high16 v39, 0x3f00

    sub-float v13, v13, v39

    .line 307
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_13
    const/16 v39, 0x1

    add-int/lit8 v40, v12, -0x1

    shl-int v39, v39, v40

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-eqz v39, :cond_14

    .line 308
    add-int/lit8 v39, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 309
    .restart local v24       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_14

    const/high16 v39, 0x3f00

    sub-float v13, v13, v39

    .line 313
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_14
    const/16 v39, 0x0

    cmpl-float v39, v13, v39

    if-lez v39, :cond_1c

    mul-int v39, v8, v5

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v39, v39, v13

    move/from16 v0, v39

    float-to-int v15, v0

    .line 316
    .local v15, extraPixels:I
    :goto_c
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 317
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_1d

    .line 316
    :cond_15
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 270
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    .end local v32           #singleItem:Z
    .restart local v27       #minCells:I
    .restart local v28       #minCellsAt:J
    .restart local v30       #minCellsItemCount:I
    :cond_16
    add-int/lit8 v27, v27, 0x1

    .line 272
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_1a

    .line 273
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 274
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 275
    .restart local v24       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v28

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_18

    .line 277
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v33, v33, v39

    .line 272
    :cond_17
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 281
    :cond_18
    if-eqz v10, :cond_19

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-eqz v39, :cond_19

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v8, v0, :cond_19

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    add-int v39, v39, v5

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 285
    :cond_19
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 286
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 287
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    .line 290
    .end local v11           #child:Landroid/view/View;
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1a
    const/16 v31, 0x1

    .line 291
    goto/16 :goto_8

    .line 296
    .end local v27           #minCells:I
    .end local v28           #minCellsAt:J
    .end local v30           #minCellsItemCount:I
    :cond_1b
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 313
    .restart local v13       #expandCount:F
    .restart local v32       #singleItem:Z
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 319
    .restart local v15       #extraPixels:I
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 320
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 321
    .restart local v24       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v39, v0

    if-eqz v39, :cond_1f

    .line 323
    move-object/from16 v0, v24

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 324
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 325
    if-nez v20, :cond_1e

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_1e

    .line 328
    neg-int v0, v15

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 330
    :cond_1e
    const/16 v31, 0x1

    goto/16 :goto_e

    .line 331
    :cond_1f
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_20

    .line 332
    move-object/from16 v0, v24

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 333
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 334
    neg-int v0, v15

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 335
    const/16 v31, 0x1

    goto/16 :goto_e

    .line 340
    :cond_20
    if-eqz v20, :cond_21

    .line 341
    div-int/lit8 v39, v15, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 343
    :cond_21
    add-int/lit8 v39, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v39

    if-eq v0, v1, :cond_15

    .line 344
    div-int/lit8 v39, v15, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_e

    .line 349
    .end local v11           #child:Landroid/view/View;
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_22
    const/4 v8, 0x0

    .line 353
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    :cond_23
    if-eqz v31, :cond_25

    .line 354
    const/16 v20, 0x0

    :goto_11
    move/from16 v0, v20

    if-ge v0, v12, :cond_25

    .line 355
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 356
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 358
    .restart local v24       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v39, v0

    if-nez v39, :cond_24

    .line 354
    :goto_12
    add-int/lit8 v20, v20, 0x1

    goto :goto_11

    .line 360
    :cond_24
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    mul-int v39, v39, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v40, v0

    add-int v36, v39, v40

    .line 361
    .local v36, width:I
    const/high16 v39, 0x4000

    move/from16 v0, v36

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_12

    .line 366
    .end local v11           #child:Landroid/view/View;
    .end local v24           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v36           #width:I
    :cond_25
    const/high16 v39, 0x4000

    move/from16 v0, v17

    move/from16 v1, v39

    if-eq v0, v1, :cond_26

    .line 367
    move/from16 v19, v26

    .line 370
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 371
    mul-int v39, v8, v5

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 594
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 567
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 569
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 570
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 575
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 580
    if-eqz p1, :cond_2

    .line 581
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 584
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 585
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 589
    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 581
    .restart local p1
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 599
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 600
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 617
    if-nez p1, :cond_1

    .line 618
    const/4 v2, 0x0

    .line 629
    :cond_0
    :goto_0
    return v2

    .line 620
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 621
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 622
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 623
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 624
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 626
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 627
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 613
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 93
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 95
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 100
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, #android:layout@action_menu_item_layout#t

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 104
    .local v5, tempActionMenuItemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v5, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 106
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 109
    .local v4, isGeneratedItem:Z
    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v4           #isGeneratedItem:Z
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 553
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 554
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 555
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 34
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 439
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 444
    .local v6, childCount:I
    add-int v32, p3, p5

    div-int/lit8 v15, v32, 0x2

    .line 445
    .local v15, midVertical:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 446
    .local v7, dividerWidth:I
    const/16 v18, 0x0

    .line 447
    .local v18, overflowWidth:I
    const/16 v17, 0x0

    .line 448
    .local v17, nonOverflowWidth:I
    const/16 v16, 0x0

    .line 449
    .local v16, nonOverflowCount:I
    sub-int v32, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v33

    sub-int v31, v32, v33

    .line 450
    .local v31, widthRemaining:I
    const/4 v8, 0x0

    .line 451
    .local v8, hasOverflow:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->isLayoutRtl()Z

    move-result v11

    .line 453
    .local v11, isLayoutRtl:Z
    const/16 v27, 0x0

    .line 455
    .local v27, toTakePlaceChildCount:I
    const/16 v28, -0x1

    .line 456
    .local v28, toTakePlaceChildIndex:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 458
    .local v29, v:Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 456
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 463
    :cond_2
    add-int/lit8 v27, v27, 0x1

    .line 464
    move/from16 v28, v10

    .line 466
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 467
    .local v19, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 468
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 469
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 470
    add-int v18, v18, v7

    .line 473
    :cond_3
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 476
    .local v9, height:I
    if-eqz v11, :cond_4

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v32

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v12, v32, v33

    .line 478
    .local v12, l:I
    add-int v20, v12, v18

    .line 483
    .local v20, r:I
    :goto_3
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 484
    .local v26, t:I
    add-int v5, v26, v9

    .line 485
    .local v5, b:I
    move-object/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 487
    sub-int v31, v31, v18

    .line 488
    const/4 v8, 0x1

    .line 489
    goto :goto_2

    .line 480
    .end local v5           #b:I
    .end local v12           #l:I
    .end local v20           #r:I
    .end local v26           #t:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    sub-int v20, v32, v33

    .line 481
    .restart local v20       #r:I
    sub-int v12, v20, v18

    .restart local v12       #l:I
    goto :goto_3

    .line 490
    .end local v9           #height:I
    .end local v12           #l:I
    .end local v20           #r:I
    :cond_5
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v21, v32, v33

    .line 491
    .local v21, size:I
    add-int v17, v17, v21

    .line 492
    sub-int v31, v31, v21

    .line 493
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 494
    add-int v17, v17, v7

    .line 496
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 501
    .end local v19           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21           #size:I
    .end local v29           #v:Landroid/view/View;
    :cond_7
    const/16 v32, 0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    if-nez v8, :cond_8

    .line 503
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 504
    .restart local v29       #v:Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 505
    .local v30, width:I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 506
    .restart local v9       #height:I
    sub-int v32, p4, p2

    div-int/lit8 v14, v32, 0x2

    .line 507
    .local v14, midHorizontal:I
    div-int/lit8 v32, v30, 0x2

    sub-int v12, v14, v32

    .line 508
    .restart local v12       #l:I
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 509
    .restart local v26       #t:I
    add-int v32, v12, v30

    add-int v33, v26, v9

    move-object/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 513
    .end local v9           #height:I
    .end local v12           #l:I
    .end local v14           #midHorizontal:I
    .end local v26           #t:I
    .end local v29           #v:Landroid/view/View;
    .end local v30           #width:I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v32, 0x0

    :goto_4
    sub-int v22, v16, v32

    .line 514
    .local v22, spacerCount:I
    const/16 v33, 0x0

    if-lez v22, :cond_b

    div-int v32, v31, v22

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 516
    .local v23, spacerSize:I
    if-eqz v11, :cond_d

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v25, v32, v33

    .line 518
    .local v25, startRight:I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 520
    .restart local v29       #v:Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 521
    .local v13, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 518
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 513
    .end local v13           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v22           #spacerCount:I
    .end local v23           #spacerSize:I
    .end local v25           #startRight:I
    .end local v29           #v:Landroid/view/View;
    :cond_a
    const/16 v32, 0x1

    goto :goto_4

    .line 514
    .restart local v22       #spacerCount:I
    :cond_b
    const/16 v32, 0x0

    goto :goto_5

    .line 525
    .restart local v13       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v23       #spacerSize:I
    .restart local v25       #startRight:I
    .restart local v29       #v:Landroid/view/View;
    :cond_c
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v25, v25, v32

    .line 526
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 527
    .restart local v30       #width:I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 528
    .restart local v9       #height:I
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 529
    .restart local v26       #t:I
    sub-int v32, v25, v30

    add-int v33, v26, v9

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 530
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v23

    sub-int v25, v25, v32

    goto :goto_7

    .line 533
    .end local v9           #height:I
    .end local v13           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v25           #startRight:I
    .end local v26           #t:I
    .end local v29           #v:Landroid/view/View;
    .end local v30           #width:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 534
    .local v24, startLeft:I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 536
    .restart local v29       #v:Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 537
    .restart local v13       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_e

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 534
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 541
    :cond_f
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v24, v24, v32

    .line 542
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 543
    .restart local v30       #width:I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 544
    .restart local v9       #height:I
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 545
    .restart local v26       #t:I
    add-int v32, v24, v30

    add-int v33, v26, v9

    move-object/from16 v0, v29

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 546
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v23

    add-int v24, v24, v32

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 122
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 123
    .local v4, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 125
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 126
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 132
    .local v5, widthSize:I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 133
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 134
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 137
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 149
    :goto_1
    return-void

    .end local v5           #widthSize:I
    :cond_2
    move v6, v8

    .line 123
    goto :goto_0

    .line 141
    .restart local v5       #widthSize:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 142
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 145
    .local v3, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 147
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setMaxItemHeight(I)V
    .locals 0
    .parameter "maxItemHeight"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 86
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 562
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 563
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 77
    return-void
.end method
