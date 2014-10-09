.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Switch$MoveAnimTask;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final CLIP_DRAWABLE_LEVEL:I = 0x1388

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I

.field private static final TextMargin:I


# instance fields
.field private THUMB_EXPAND:I

.field private isLenovo_ideaui:Z

.field private isLenovo_mode:Z

.field isMoving:Z

.field isTouchMove:Z

.field isleaveWindow:Z

.field lastCheck:Z

.field private mDisableOff:Landroid/graphics/drawable/ClipDrawable;

.field private mDisableOn:Landroid/graphics/drawable/ClipDrawable;

.field private mMinFlingVelocity:I

.field private mOff:Landroid/graphics/drawable/ClipDrawable;

.field private mOffLayout:Landroid/text/Layout;

.field private mOn:Landroid/graphics/drawable/ClipDrawable;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field neadMove:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, #android:attr@state_checked#t

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 151
    const v0, #android:attr@switchStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 164
    invoke-direct/range {p0 .. p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 119
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 120
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 121
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 122
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 123
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isLenovo_mode:Z

    .line 124
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isLenovo_ideaui:Z

    .line 127
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 687
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->neadMove:Z

    .line 688
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isTouchMove:Z

    .line 1086
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isMoving:Z

    .line 1087
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isleaveWindow:Z

    .line 1088
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->lastCheck:Z

    .line 166
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 168
    .local v14, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 171
    sget-object v17, Lcom/android/internal/R$styleable;->Switch:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 177
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 178
    .local v11, nid:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isCts()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static {}, Landroid/content/Context;->supportNonIdeaUITheme()Z

    move-result v17

    if-eqz v17, :cond_0

    const v17, #android:drawable@switch_inner_holo_light#t

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    const v17, #android:drawable@switch_inner_holo_dark#t

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    :cond_0
    const v17, 0x30801ef

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    const v17, 0x30801ee

    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    .line 183
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801e8

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 184
    .local v9, disable_on:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801e9

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 185
    .local v8, disable_off:Landroid/graphics/drawable/Drawable;
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 186
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x5

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 189
    const v17, #android:drawable@switch_inner_holo_light#t

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 190
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isLenovo_mode:Z

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801ef

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801f9

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801eb

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 194
    .local v13, on:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801ed

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 195
    .local v12, off:Landroid/graphics/drawable/Drawable;
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 196
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x5

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 240
    .end local v8           #disable_off:Landroid/graphics/drawable/Drawable;
    .end local v9           #disable_on:Landroid/graphics/drawable/Drawable;
    .end local v12           #off:Landroid/graphics/drawable/Drawable;
    .end local v13           #on:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 241
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 242
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 244
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 248
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->isLenovo_mode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 249
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 250
    .local v16, textOnId:I
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 252
    .local v15, textOffId:I
    const v17, #android:string@capital_on#t

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30b0012

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 256
    :cond_2
    const v17, #android:string@capital_off#t

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30b0013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 260
    :cond_3
    const-string v17, "  "

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30a0001

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30a0002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Switch;->THUMB_EXPAND:I

    .line 270
    .end local v15           #textOffId:I
    .end local v16           #textOnId:I
    :cond_4
    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Switch;->mSwitchPadding:I

    .line 273
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 275
    .local v6, appearance:I
    if-eqz v6, :cond_5

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 278
    :cond_5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 281
    .local v7, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Switch;->mTouchSlop:I

    .line 282
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->refreshDrawableState()V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 287
    return-void

    .line 199
    .end local v6           #appearance:I
    .end local v7           #config:Landroid/view/ViewConfiguration;
    .restart local v8       #disable_off:Landroid/graphics/drawable/Drawable;
    .restart local v9       #disable_on:Landroid/graphics/drawable/Drawable;
    :cond_6
    const v17, #android:drawable@switch_inner_holo_dark#t

    move/from16 v0, v17

    if-ne v11, v0, :cond_7

    .line 200
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isLenovo_mode:Z

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801ee

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801f8

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801ea

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 204
    .restart local v13       #on:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30801ec

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 205
    .restart local v12       #off:Landroid/graphics/drawable/Drawable;
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 206
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x5

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    goto/16 :goto_0

    .line 211
    .end local v12           #off:Landroid/graphics/drawable/Drawable;
    .end local v13           #on:Landroid/graphics/drawable/Drawable;
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isLenovo_mode:Z

    .line 212
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Switch;->isLenovo_ideaui:Z

    .line 213
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    const v17, 0x30801ee

    move/from16 v0, v17

    if-ne v11, v0, :cond_8

    const/4 v10, 0x1

    .line 217
    .local v10, isDark:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    if-eqz v10, :cond_9

    const v17, 0x30801ea

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 221
    .restart local v13       #on:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    if-eqz v10, :cond_a

    const v17, 0x30801ec

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 225
    .restart local v12       #off:Landroid/graphics/drawable/Drawable;
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 226
    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x5

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x1388

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    goto/16 :goto_0

    .line 216
    .end local v10           #isDark:Z
    .end local v12           #off:Landroid/graphics/drawable/Drawable;
    .end local v13           #on:Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v10, 0x0

    goto :goto_1

    .line 217
    .restart local v10       #isDark:Z
    :cond_9
    const v17, 0x30801eb

    goto :goto_2

    .line 221
    .restart local v13       #on:Landroid/graphics/drawable/Drawable;
    :cond_a
    const v17, 0x30801ed

    goto :goto_3

    .line 231
    .end local v8           #disable_off:Landroid/graphics/drawable/Drawable;
    .end local v9           #disable_on:Landroid/graphics/drawable/Drawable;
    .end local v10           #isDark:Z
    .end local v13           #on:Landroid/graphics/drawable/Drawable;
    :cond_b
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 234
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 235
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 236
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Switch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/Switch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/Switch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/Switch;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$216(Landroid/widget/Switch;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$224(Landroid/widget/Switch;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .parameter "newCheckedState"

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 799
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 761
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 762
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 763
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 764
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 765
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 802
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    iget v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 803
    goto :goto_0

    .line 805
    :cond_2
    iget v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1022
    const/4 v0, 0x0

    .line 1025
    :goto_0
    return v0

    .line 1024
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1025
    iget v0, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 679
    iget-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 680
    iget v4, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 681
    .local v3, thumbTop:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 682
    .local v1, thumbLeft:I
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 684
    .local v2, thumbRight:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 685
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .parameter "text"

    .prologue
    .line 666
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 670
    .local v1, transformed:Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1           #transformed:Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 666
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 357
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 358
    return-void

    .line 345
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 346
    goto :goto_0

    .line 349
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 350
    goto :goto_0

    .line 353
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    if-eqz p1, :cond_0

    :goto_0
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 815
    :goto_1
    return-void

    .line 811
    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 813
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :cond_2
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    goto :goto_1
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 773
    iput v4, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 777
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 779
    if-eqz v0, :cond_5

    .line 781
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 782
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 783
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 784
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    cmpg-float v5, v2, v7

    if-gez v5, :cond_1

    move v1, v3

    .line 788
    .local v1, newState:Z
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 792
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_2
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v4

    .line 775
    goto :goto_0

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_1
    move v1, v4

    .line 784
    goto :goto_1

    :cond_2
    cmpl-float v5, v2, v7

    if-lez v5, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    .line 786
    :cond_4
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_1

    .line 790
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1039
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1041
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1045
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1046
    :cond_0
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1048
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1049
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 998
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 999
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1005
    :cond_0
    :goto_0
    return v0

    .line 1001
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1002
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1003
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1011
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1017
    :cond_0
    :goto_0
    return v0

    .line 1013
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1014
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1058
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1059
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1060
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1061
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Switch;->isleaveWindow:Z

    .line 1145
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Switch;->lastCheck:Z

    .line 1146
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 1147
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 1030
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1031
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1034
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1150
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->isleaveWindow:Z

    .line 1153
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 893
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 896
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 897
    .local v11, switchLeft:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 898
    .local v14, switchTop:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/Switch;->mSwitchRight:I

    .line 899
    .local v12, switchRight:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 904
    .local v6, switchBottom:I
    const/4 v3, 0x0

    .line 905
    .local v3, left_bg:Landroid/graphics/drawable/ClipDrawable;
    const/4 v5, 0x0

    .line 906
    .local v5, right_bg:Landroid/graphics/drawable/ClipDrawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->isLenovo_mode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v18

    if-nez v18, :cond_4

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Switch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 910
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Switch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 916
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->isLenovo_mode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    .line 917
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->isLenovo_ideaui:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 919
    const/high16 v18, 0x45fa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbPosition:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v4, v0, 0x3e8

    .line 921
    .local v4, level:I
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 922
    rsub-int v0, v4, 0x2710

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 925
    .end local v4           #level:I
    :cond_1
    invoke-virtual {v3, v11, v14, v12, v6}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    .line 926
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 927
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 942
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 943
    invoke-virtual {v5, v11, v14, v12, v6}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    .line 945
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 946
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 952
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v8, v11, v18

    .line 956
    .local v8, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v10, v14, v18

    .line 957
    .local v10, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v9, v12, v18

    .line 958
    .local v9, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v7, v6, v18

    .line 959
    .local v7, switchInnerBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14, v9, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbPosition:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 963
    .local v16, thumbPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    add-int v15, v18, v16

    .line 964
    .local v15, thumbLeft:I
    add-int v18, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 966
    .local v17, thumbRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v15, v14, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 973
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 974
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 975
    .local v13, switchText:Landroid/text/Layout;
    :goto_2
    if-eqz v13, :cond_3

    .line 977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->isLenovo_mode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 978
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 979
    add-int v18, v11, v15

    add-int/lit8 v18, v18, 0x0

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v10, v7

    div-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 990
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 993
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 994
    return-void

    .line 912
    .end local v7           #switchInnerBottom:I
    .end local v8           #switchInnerLeft:I
    .end local v9           #switchInnerRight:I
    .end local v10           #switchInnerTop:I
    .end local v13           #switchText:Landroid/text/Layout;
    .end local v15           #thumbLeft:I
    .end local v16           #thumbPos:I
    .end local v17           #thumbRight:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 913
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    goto/16 :goto_0

    .line 948
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v14, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 974
    .restart local v7       #switchInnerBottom:I
    .restart local v8       #switchInnerLeft:I
    .restart local v9       #switchInnerRight:I
    .restart local v10       #switchInnerTop:I
    .restart local v15       #thumbLeft:I
    .restart local v16       #thumbPos:I
    .restart local v17       #thumbRight:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_2

    .line 982
    .restart local v13       #switchText:Landroid/text/Layout;
    :cond_7
    add-int v18, v17, v12

    add-int/lit8 v18, v18, 0x0

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v10, v7

    div-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 986
    :cond_8
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v10, v7

    div-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1065
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1066
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1067
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1071
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1072
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1073
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 1074
    .local v2, switchText:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1075
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1076
    .local v1, oldText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1077
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    .end local v1           #oldText:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1073
    .end local v2           #switchText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1079
    .restart local v1       #oldText:Ljava/lang/CharSequence;
    .restart local v2       #switchText:Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .local v0, newText:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 841
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 844
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    iget-boolean v4, p0, Landroid/widget/Switch;->neadMove:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 846
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/Switch;->setThumbPosition(Z)V

    .line 856
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 857
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingLeft()I

    move-result v1

    .line 858
    .local v1, switchLeft:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v2, v1, v4

    .line 864
    .local v2, switchRight:I
    :goto_1
    const/4 v3, 0x0

    .line 865
    .local v3, switchTop:I
    const/4 v0, 0x0

    .line 866
    .local v0, switchBottom:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 869
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v3

    .line 870
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 885
    :goto_2
    iput v1, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 886
    iput v3, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 887
    iput v0, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 888
    iput v2, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 889
    return-void

    .line 849
    .end local v0           #switchBottom:I
    .end local v1           #switchLeft:I
    .end local v2           #switchRight:I
    .end local v3           #switchTop:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/Switch;->setThumbPosition(Z)V

    goto :goto_0

    .line 860
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 861
    .restart local v2       #switchRight:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .restart local v1       #switchLeft:I
    goto :goto_1

    .line 874
    .restart local v0       #switchBottom:I
    .restart local v3       #switchTop:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 876
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 877
    goto :goto_2

    .line 880
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 881
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_2

    .line 866
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 625
    iget-object v4, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v4, :cond_0

    .line 626
    iget-object v4, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 628
    :cond_0
    iget-object v4, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v4, :cond_1

    .line 629
    iget-object v4, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 632
    :cond_1
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 633
    iget-object v4, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 634
    .local v0, maxTextWidth:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v5, v0, 0x2

    iget v6, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 636
    .local v3, switchWidth:I
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 638
    .local v2, switchHeight:I
    iget v4, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 641
    iget-boolean v4, p0, Landroid/widget/Switch;->isLenovo_mode:Z

    if-eqz v4, :cond_2

    .line 642
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    iget v5, p0, Landroid/widget/Switch;->THUMB_EXPAND:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 646
    :cond_2
    iput v3, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 647
    iput v2, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 649
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 650
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v1

    .line 651
    .local v1, measuredHeight:I
    if-ge v1, v2, :cond_3

    .line 652
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 654
    :cond_3
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 658
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 659
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 660
    .local v0, layout:Landroid/text/Layout;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    return-void

    .line 659
    .end local v0           #layout:Landroid/text/Layout;
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 691
    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 693
    .local v0, action:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v8, p0, Landroid/widget/Switch;->neadMove:Z

    .line 694
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 757
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_2
    :goto_1
    return v5

    .line 696
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 697
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 698
    .local v4, y:F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v3, v4}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 699
    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 700
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 701
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 707
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 713
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 714
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 715
    .restart local v4       #y:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 717
    :cond_3
    iput v9, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 718
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 719
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 720
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    .line 721
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v8, p0, Landroid/widget/Switch;->isTouchMove:Z

    goto :goto_1

    .line 728
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 729
    .restart local v3       #x:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 730
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 732
    .local v2, newPos:F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_2

    .line 733
    iput v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 734
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 735
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 736
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v5, p0, Landroid/widget/Switch;->isTouchMove:Z

    goto/16 :goto_1

    .line 746
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v6, v9, :cond_4

    .line 747
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 750
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Landroid/widget/Switch;->isMoving:Z

    if-nez v6, :cond_5

    iput-boolean v5, p0, Landroid/widget/Switch;->neadMove:Z

    .line 751
    :cond_5
    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 752
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 707
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 819
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 822
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-boolean v0, p0, Landroid/widget/Switch;->neadMove:Z

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Landroid/widget/Switch$MoveAnimTask;

    invoke-direct {v0, p0, p1}, Landroid/widget/Switch$MoveAnimTask;-><init>(Landroid/widget/Switch;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Landroid/widget/Switch$MoveAnimTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 837
    :goto_0
    return-void

    .line 827
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(Z)V

    .line 828
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    goto :goto_0

    .line 831
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(Z)V

    .line 832
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    goto :goto_0
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 452
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 453
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 454
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 428
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 429
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 430
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 295
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 302
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 304
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 305
    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 311
    :goto_0
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 313
    .local v4, ts:I
    if-eqz v4, :cond_0

    .line 314
    int-to-float v6, v4

    iget-object v7, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 315
    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 316
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 322
    :cond_0
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 324
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 327
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 329
    const/4 v6, 0x7

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 331
    .local v0, allCaps:Z
    if-eqz v0, :cond_2

    .line 332
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 333
    iget-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 338
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 339
    return-void

    .line 308
    .end local v0           #allCaps:Z
    .end local v3           #styleIndex:I
    .end local v4           #ts:I
    .end local v5           #typefaceIndex:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 335
    .restart local v0       #allCaps:Z
    .restart local v3       #styleIndex:I
    .restart local v4       #ts:I
    .restart local v5       #typefaceIndex:I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 412
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 413
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 415
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 416
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 418
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 368
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq p1, v4, :cond_0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-eq p1, v4, :cond_0

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-eq p1, v4, :cond_0

    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-eq p1, v4, :cond_0

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-eq p1, v4, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/Typeface;->isDefaultFont(Landroid/graphics/Typeface;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 375
    :cond_0
    sget-object v4, Landroid/graphics/Typeface;->THEME_FONT:Landroid/graphics/Typeface;

    if-eqz v4, :cond_1

    .line 376
    sget-object p1, Landroid/graphics/Typeface;->THEME_FONT:Landroid/graphics/Typeface;

    .line 381
    :cond_1
    if-lez p2, :cond_6

    .line 382
    if-nez p1, :cond_3

    .line 383
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 388
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 390
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 391
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 392
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 393
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_5

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 399
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 385
    :cond_3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 390
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_5
    move v2, v3

    .line 393
    goto :goto_2

    .line 395
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_6
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 396
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 397
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textOff"

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/widget/Switch;->isLenovo_mode:Z

    if-eqz v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 620
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    goto :goto_0
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textOn"

    .prologue
    .line 589
    iget-boolean v0, p0, Landroid/widget/Switch;->isLenovo_mode:Z

    if-eqz v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 595
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    goto :goto_0
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 545
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 546
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 547
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 476
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 477
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 478
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "track"

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-boolean v0, p0, Landroid/widget/Switch;->isLenovo_mode:Z

    if-eqz v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Switch;->isLenovo_mode:Z

    .line 504
    iput-object v1, p0, Landroid/widget/Switch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 505
    iput-object v1, p0, Landroid/widget/Switch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 506
    iput-object v1, p0, Landroid/widget/Switch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 507
    iput-object v1, p0, Landroid/widget/Switch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 510
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 511
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    goto :goto_0
.end method

.method public setTrackResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    return-void
.end method

.method sleep(J)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 1136
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 1053
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
