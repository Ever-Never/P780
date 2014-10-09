.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIdeaUI_IsPopupBackgroundRoundedCorner:Z

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, #android:attr@state_above_anchor#t

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 255
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 167
    const v0, #android:attr@popupWindowStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 87
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 88
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 89
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 90
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 91
    const/4 v8, -0x1

    iput v8, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 94
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 95
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 110
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 111
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 112
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const/16 v8, 0x3e8

    iput v8, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 122
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 125
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 128
    const/4 v8, -0x1

    iput v8, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 135
    new-instance v8, Landroid/widget/PopupWindow$1;

    invoke-direct {v8, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v8, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 185
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 186
    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 188
    sget-object v8, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 195
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 197
    .local v5, bg_id:I
    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->ideaUI_isRoundedCornerBackground(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 199
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 203
    :cond_0
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 204
    .local v2, animStyle:I
    const v8, #android:style@Animation.PopupWindow#t

    if-ne v2, v8, :cond_1

    const/4 v2, -0x1

    .end local v2           #animStyle:I
    :cond_1
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 216
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v8, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v8, :cond_3

    .line 217
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 220
    .local v3, background:Landroid/graphics/drawable/StateListDrawable;
    sget-object v8, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 224
    .local v1, aboveAnchorStateIndex:I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v6

    .line 225
    .local v6, count:I
    const/4 v4, -0x1

    .line 226
    .local v4, belowAnchorStateIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 227
    if-eq v7, v1, :cond_4

    .line 228
    move v4, v7

    .line 235
    :cond_2
    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    const/4 v8, -0x1

    if-eq v4, v8, :cond_5

    .line 236
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    .end local v1           #aboveAnchorStateIndex:I
    .end local v3           #background:Landroid/graphics/drawable/StateListDrawable;
    .end local v4           #belowAnchorStateIndex:I
    .end local v6           #count:I
    .end local v7           #i:I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    return-void

    .line 226
    .restart local v1       #aboveAnchorStateIndex:I
    .restart local v3       #background:Landroid/graphics/drawable/StateListDrawable;
    .restart local v4       #belowAnchorStateIndex:I
    .restart local v6       #count:I
    .restart local v7       #i:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 239
    :cond_5
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 87
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 88
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 89
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 90
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 91
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 94
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 95
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 110
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 111
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 122
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 125
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 128
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 135
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 315
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 318
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 319
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 320
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 321
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1138
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1139
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1140
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, #android:style@Animation.DropDownUp#t

    .line 1146
    :goto_0
    return v0

    .line 1140
    :cond_0
    const v0, #android:style@Animation.DropDownDown#t

    goto :goto_0

    .line 1144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1146
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 1094
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1102
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1103
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1105
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1106
    or-int/lit8 p1, p1, 0x8

    .line 1107
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1108
    or-int/2addr p1, v2

    .line 1113
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1114
    or-int/lit8 p1, p1, 0x10

    .line 1116
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1117
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1119
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1120
    or-int/lit16 p1, p1, 0x200

    .line 1122
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1123
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1125
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1126
    or-int/lit16 p1, p1, 0x100

    .line 1128
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1129
    const/high16 v0, 0x1

    or-int/2addr p1, v0

    .line 1131
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1132
    or-int/lit8 p1, p1, 0x20

    .line 1134
    :cond_8
    return p1

    .line 1110
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1111
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private computeIdeaUiAnimation()I
    .locals 1

    .prologue
    .line 1681
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_0

    .line 1682
    const v0, 0x30302aa

    .line 1684
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1071
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1076
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1077
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1078
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1079
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1080
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1084
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1085
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1086
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1087
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    return-object v0

    .line 1082
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 15
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1166
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1167
    .local v1, anchorHeight:I
    iget-object v12, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1168
    iget-object v12, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int v12, v12, p3

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1169
    iget-object v12, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v1

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1171
    const/4 v4, 0x0

    .line 1173
    .local v4, onTop:Z
    const v12, 0x800033

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1175
    iget-object v12, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1176
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1177
    .local v2, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1179
    iget-object v12, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v1

    add-int v9, v12, p4

    .line 1181
    .local v9, screenY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 1182
    .local v8, root:Landroid/view/View;
    iget v12, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v12, v9

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v12, v13, :cond_0

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v12, v13

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    if-lez v12, :cond_2

    .line 1187
    :cond_0
    iget-boolean v12, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v12, :cond_1

    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v10

    .line 1189
    .local v10, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v11

    .line 1190
    .local v11, scrollY:I
    new-instance v6, Landroid/graphics/Rect;

    iget v12, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v12, v10

    add-int v12, v12, p3

    iget v13, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v13, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1192
    .local v6, r:Landroid/graphics/Rect;
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1197
    .end local v6           #r:Landroid/graphics/Rect;
    .end local v10           #scrollX:I
    .end local v11           #scrollY:I
    :cond_1
    iget-object v12, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1198
    iget-object v12, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int v12, v12, p3

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1199
    iget-object v12, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1202
    iget-object v12, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1204
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v13, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v12, v12, p4

    iget-object v13, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int v13, v13, p4

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_6

    const/4 v4, 0x1

    .line 1206
    :goto_0
    if-eqz v4, :cond_7

    .line 1207
    const v12, 0x800053

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1208
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v12

    iget-object v13, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1214
    :cond_2
    :goto_1
    iget-boolean v12, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v12, :cond_5

    .line 1215
    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v12, v13

    .line 1217
    .local v3, displayFrameWidth:I
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v7, v12, v13

    .line 1218
    .local v7, right:I
    if-le v7, v3, :cond_3

    .line 1219
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v13, v7, v3

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1221
    :cond_3
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_4

    .line 1222
    iget v12, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1223
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1226
    :cond_4
    if-eqz v4, :cond_8

    .line 1227
    iget-object v12, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int v12, v12, p4

    iget v13, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    sub-int v5, v12, v13

    .line 1228
    .local v5, popupTop:I
    if-gez v5, :cond_5

    .line 1229
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v12, v5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1236
    .end local v3           #displayFrameWidth:I
    .end local v5           #popupTop:I
    .end local v7           #right:I
    :cond_5
    :goto_2
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v13, 0x1000

    or-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1238
    return v4

    .line 1204
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 1210
    :cond_7
    iget-object v12, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1232
    .restart local v3       #displayFrameWidth:I
    .restart local v7       #right:I
    :cond_8
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private ideaUI_isRoundedCornerBackground(I)Z
    .locals 1
    .parameter "bg_id"

    .prologue
    .line 364
    const v0, 0x3080157

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1047
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1048
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1049
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 1003
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1004
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1008
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1009
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1010
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1011
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1013
    const/4 v0, -0x2

    .line 1018
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1019
    .local v3, popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1022
    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1029
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1031
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1032
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1033
    return-void

    .line 1027
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    .line 1029
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1585
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1587
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1588
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1589
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1590
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1593
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1594
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1595
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1053
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1055
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1059
    .end local v0           #anchor:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1572
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1573
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1574
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1575
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1577
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1578
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1579
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1581
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1582
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 12
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1520
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1525
    .local v8, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    iget v1, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v1, p3, :cond_2

    iget v1, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v1, v0, :cond_7

    :cond_2
    const/4 v7, 0x1

    .line 1526
    .local v7, needsUpdate:Z
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    if-eqz v7, :cond_8

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v1, :cond_8

    .line 1527
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1534
    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 1536
    .local v9, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1537
    const/4 v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_9

    .line 1538
    iget v0, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1542
    :goto_3
    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_a

    .line 1543
    iget v0, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1549
    :cond_5
    :goto_4
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1550
    .local v10, x:I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1552
    .local v11, y:I
    if-eqz p2, :cond_b

    .line 1553
    move/from16 v0, p4

    invoke-direct {p0, p1, v9, p3, v0}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1558
    :goto_5
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v1, :cond_6

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, v1, :cond_c

    :cond_6
    const/4 v6, 0x1

    :goto_6
    move-object v1, p0

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_0

    .line 1525
    .end local v7           #needsUpdate:Z
    .end local v9           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 1528
    .restart local v7       #needsUpdate:Z
    :cond_8
    if-eqz v7, :cond_4

    .line 1530
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1531
    move/from16 v0, p4

    iput v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 1540
    .restart local v9       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    iput v0, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1545
    :cond_a
    move/from16 v0, p7

    iput v0, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1555
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_b
    iget v1, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v2, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v9, v1, v2}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1558
    :cond_c
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 959
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 960
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 962
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 967
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 973
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1320
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1323
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1326
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1331
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1333
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1338
    :cond_1
    return-void

    .line 1328
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1329
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1331
    :cond_2
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1333
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1334
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1328
    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    const/4 v9, 0x1

    .line 1288
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1289
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1291
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1292
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1294
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1295
    .local v1, bottomEdge:I
    if-eqz p3, :cond_0

    .line 1296
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1297
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1299
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1300
    .local v3, distanceToBottom:I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1303
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1304
    .local v6, returnedHeight:I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1305
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1306
    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1309
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public ideaUI_setBackgroundResource(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "background"

    .prologue
    .line 354
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;->ideaUI_isRoundedCornerBackground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 360
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 361
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    goto :goto_0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 669
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 670
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 670
    goto :goto_0

    .line 672
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 658
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 659
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 407
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 408
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 343
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 344
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 647
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 648
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 649
    return-void

    .line 648
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 637
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 638
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4
    .parameter "contentView"

    .prologue
    const/4 v3, 0x1

    .line 433
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 439
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 443
    :cond_2
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 448
    :cond_3
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 451
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 454
    .local v0, list:Landroid/widget/AbsListView;
    invoke-virtual {v0, v3, v3}, Landroid/widget/AbsListView;->IdeaUI_SetRounderCorner(ZZ)V

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 495
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 496
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 809
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 810
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 390
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 521
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 522
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 712
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 713
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 728
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 729
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 1346
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1347
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 608
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 609
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 535
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 536
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 689
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 690
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 464
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 465
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .parameter "touchModal"

    .prologue
    .line 756
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 757
    return-void

    .line 756
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 575
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 576
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 835
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 836
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 782
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 783
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 784
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 739
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 740
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 914
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 3
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v2, 0x1

    .line 931
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 937
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 938
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 941
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 943
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 945
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_2

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 946
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 949
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 950
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->hasCts()Z

    move-result v1

    if-nez v1, :cond_4

    .line 951
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeIdeaUiAnimation()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 955
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .parameter "token"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 883
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 884
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 886
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 887
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 889
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 890
    if-nez p2, :cond_2

    .line 891
    const p2, 0x800033

    .line 893
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 894
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 895
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 896
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 897
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 898
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 862
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 863
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1357
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1364
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1366
    .local v3, update:Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1367
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1368
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1369
    const/4 v3, 0x1

    .line 1372
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1373
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1374
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1375
    const/4 v3, 0x1

    .line 1378
    :cond_3
    if-eqz v3, :cond_0

    .line 1379
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1380
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1395
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1396
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1410
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1411
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 1427
    if-eq p3, v7, :cond_0

    .line 1428
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1429
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1432
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1433
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1434
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1437
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1483
    :cond_2
    :goto_0
    return-void

    .line 1441
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1443
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1445
    .local v5, update:Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1446
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1447
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1448
    const/4 v5, 0x1

    .line 1451
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1452
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1453
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1454
    const/4 v5, 0x1

    .line 1457
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1458
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1459
    const/4 v5, 0x1

    .line 1462
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1463
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1464
    const/4 v5, 0x1

    .line 1467
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1468
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1469
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1470
    const/4 v5, 0x1

    .line 1473
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1474
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1475
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1476
    const/4 v5, 0x1

    .line 1479
    :cond_9
    if-eqz v5, :cond_2

    .line 1480
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1481
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1445
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_a
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1451
    .restart local v1       #finalWidth:I
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1495
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1496
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1514
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1515
    return-void
.end method
