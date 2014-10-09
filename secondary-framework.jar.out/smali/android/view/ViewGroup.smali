.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field public static final CLIP_BOUNDS:I = 0x0

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DBG_MOTION:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final OPTICAL_BOUNDS:I = 0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static mScreenWidth:I

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field final mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutMode:I

.field private mLayoutSuppressed:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private final mLocalPoint:Landroid/graphics/PointF;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 6496
    const/4 v0, -0x1

    sput v0, Landroid/view/ViewGroup;->mScreenWidth:I

    return-void

    .line 316
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 198
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 402
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 428
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5161
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 433
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 198
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 402
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 428
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5161
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 438
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 439
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 198
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 402
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 428
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5161
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 444
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 445
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 446
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Canvas;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 91
    invoke-static/range {p0 .. p5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5054
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5056
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 5057
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5060
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5061
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3522
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3523
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3524
    .local v1, count:I
    array-length v2, v0

    .line 3525
    .local v2, size:I
    if-ne p2, v1, :cond_2

    .line 3526
    if-ne v2, v1, :cond_0

    .line 3527
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3528
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3529
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3531
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 3549
    :cond_1
    :goto_0
    return-void

    .line 3532
    :cond_2
    if-ge p2, v1, :cond_4

    .line 3533
    if-ne v2, v1, :cond_3

    .line 3534
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3535
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3536
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3537
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3541
    :goto_1
    aput-object p1, v0, p2

    .line 3542
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3543
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    .line 3544
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    .line 3539
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3547
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 2086
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2093
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2094
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2095
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 6
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40

    .line 3453
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_0

    .line 3456
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3459
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3460
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3464
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_2

    .line 3465
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3468
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3469
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3472
    :cond_3
    if-eqz p4, :cond_b

    .line 3473
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3478
    :goto_0
    if-gez p2, :cond_4

    .line 3479
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3482
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3485
    if-eqz p4, :cond_c

    .line 3486
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3491
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3492
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3495
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3496
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_7

    .line 3497
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3498
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3499
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3500
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_6

    .line 3501
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3503
    :cond_6
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3506
    .end local v1           #lastKeepOn:Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3507
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 3510
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3512
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    .line 3513
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3516
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3517
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3519
    :cond_a
    return-void

    .line 3475
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_b
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3488
    :cond_c
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 3609
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3610
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3611
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 2155
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 2046
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 2047
    const/4 v8, 0x0

    .line 2048
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_0

    .line 2049
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2050
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2052
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2053
    const/4 v8, 0x1

    .line 2056
    .end local v0           #now:J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 2057
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2058
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2056
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2060
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2062
    if-eqz v8, :cond_2

    .line 2063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2066
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 1620
    const/4 v10, 0x0

    .line 1621
    .local v10, predecessor:Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1622
    .local v11, target:Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 1623
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1624
    .local v9, next:Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 1625
    if-nez v10, :cond_1

    .line 1626
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1630
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1633
    .local v0, now:J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1635
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1636
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1637
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1643
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    .end local v9           #next:Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    return-void

    .line 1628
    .restart local v9       #next:Landroid/view/ViewGroup$HoverTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1640
    :cond_2
    move-object v10, v11

    .line 1641
    move-object v11, v9

    .line 1642
    goto :goto_0
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 2125
    const/4 v10, 0x0

    .line 2126
    .local v10, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2127
    .local v11, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 2128
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2129
    .local v9, next:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 2130
    if-nez v10, :cond_1

    .line 2131
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2135
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2138
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2140
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2141
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2142
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2148
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    .end local v9           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    return-void

    .line 2133
    .restart local v9       #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2145
    :cond_2
    move-object v10, v11

    .line 2146
    move-object v11, v9

    .line 2147
    goto :goto_0
.end method

.method private checkIfAnyChildrenXOutside(Z)Z
    .locals 12
    .parameter "isTestOnly"

    .prologue
    .line 6794
    const/4 v4, 0x0

    .line 6796
    .local v4, isAnyOutside:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    .line 6797
    .local v6, myWidth:I
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6798
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6803
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 6804
    aget-object v0, v1, v3

    .line 6805
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 6806
    .local v5, left:I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    .line 6808
    .local v7, right:I
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6809
    const/4 v8, -0x5

    if-lt v5, v8, :cond_0

    add-int/lit8 v8, v6, 0x5

    if-le v7, v8, :cond_3

    .line 6811
    :cond_0
    const/4 v4, 0x1

    .line 6818
    .end local v0           #child:Landroid/view/View;
    .end local v5           #left:I
    .end local v7           #right:I
    :cond_1
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 6819
    const-string v8, "SmartRoll/ViewGroup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v11, p0, Landroid/view/View;->mID:I

    invoke-static {v10, v11}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " some children outside, ignore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6823
    :cond_2
    return v4

    .line 6803
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #left:I
    .restart local v7       #right:I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private checkIfCertainChildOverlap(Landroid/view/View;Z)Z
    .locals 22
    .parameter "child"
    .parameter "isTestOnly"

    .prologue
    .line 6694
    const/4 v9, 0x0

    .line 6696
    .local v9, isOverlap:Z
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6697
    .local v8, childrenCount:I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6698
    .local v7, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v4, v18, 0x2

    .line 6700
    .local v4, center_x:I
    const/4 v13, 0x0

    .line 6703
    .local v13, otherChild:Landroid/view/View;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/AdapterView;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 6704
    const/16 v18, 0x0

    .line 6786
    :goto_0
    return v18

    .line 6708
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/view/View;->mIsViewSmartRolled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 6709
    const/16 v18, 0x0

    goto :goto_0

    .line 6713
    :cond_1
    const/4 v1, 0x3

    .line 6714
    .local v1, SHRINK_SIZE:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 6715
    .local v11, l1:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v14

    .line 6716
    .local v14, r1:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    .line 6717
    .local v16, t1:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6718
    .local v2, b1:I
    add-int v18, v11, v14

    div-int/lit8 v5, v18, 0x2

    .line 6721
    .local v5, center_x_1:I
    add-int/lit8 v18, v11, 0x3

    move/from16 v0, v18

    if-lt v14, v0, :cond_3

    add-int/lit8 v18, v16, 0x3

    move/from16 v0, v18

    if-lt v2, v0, :cond_3

    .line 6722
    add-int/lit8 v14, v14, -0x3

    .line 6723
    add-int/lit8 v2, v2, -0x3

    .line 6729
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isShown()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 6731
    add-int/lit8 v10, v8, -0x1

    .local v10, j:I
    :goto_1
    if-ltz v10, :cond_7

    .line 6732
    aget-object v13, v7, v10

    .line 6734
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 6735
    .local v12, l2:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    .line 6736
    .local v15, r2:I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v17

    .line 6737
    .local v17, t2:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6738
    .local v3, b2:I
    add-int v18, v12, v15

    div-int/lit8 v6, v18, 0x2

    .line 6740
    .local v6, center_x_2:I
    move-object/from16 v0, p1

    if-ne v0, v13, :cond_4

    .line 6731
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 6725
    .end local v3           #b2:I
    .end local v6           #center_x_2:I
    .end local v10           #j:I
    .end local v12           #l2:I
    .end local v15           #r2:I
    .end local v17           #t2:I
    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    .line 6746
    .restart local v3       #b2:I
    .restart local v6       #center_x_2:I
    .restart local v10       #j:I
    .restart local v12       #l2:I
    .restart local v15       #r2:I
    .restart local v17       #t2:I
    :cond_4
    add-int/lit8 v18, v12, 0x3

    move/from16 v0, v18

    if-lt v15, v0, :cond_2

    add-int/lit8 v18, v17, 0x3

    move/from16 v0, v18

    if-lt v3, v0, :cond_2

    .line 6747
    add-int/lit8 v15, v15, -0x3

    .line 6748
    add-int/lit8 v3, v3, -0x3

    .line 6755
    if-ne v11, v12, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3

    move/from16 v0, v18

    if-eq v14, v0, :cond_2

    .line 6760
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->isShown()Z

    move-result v18

    if-eqz v18, :cond_2

    move/from16 v0, v16

    if-lt v3, v0, :cond_2

    move/from16 v0, v17

    if-gt v0, v2, :cond_2

    if-lt v15, v11, :cond_2

    if-gt v12, v14, :cond_2

    .line 6763
    if-ne v4, v5, :cond_6

    if-ne v4, v6, :cond_6

    .line 6766
    const-string v18, "SmartRoll/ViewGroup"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mID:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "center_x equal "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6771
    :cond_6
    const/4 v9, 0x1

    .line 6778
    .end local v3           #b2:I
    .end local v6           #center_x_2:I
    .end local v10           #j:I
    .end local v12           #l2:I
    .end local v15           #r2:I
    .end local v17           #t2:I
    :cond_7
    if-eqz v9, :cond_8

    if-eqz p2, :cond_8

    .line 6781
    const-string v18, "SmartRoll/ViewGroup"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mID:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Overlap with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    iget v0, v13, Landroid/view/View;->mID:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", do not dispatch"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move/from16 v18, v9

    .line 6786
    goto/16 :goto_0
.end method

.method private checkIfChildrenOverlap(Z)Z
    .locals 21
    .parameter "isTestOnly"

    .prologue
    .line 6627
    const/4 v8, 0x0

    .line 6629
    .local v8, isOverlap:Z
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6630
    .local v6, childrenCount:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6633
    .local v5, children:[Landroid/view/View;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/AdapterView;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 6634
    const/16 v17, 0x0

    .line 6686
    :goto_0
    return v17

    .line 6638
    :cond_0
    add-int/lit8 v7, v6, -0x1

    .local v7, i:I
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v7, v0, :cond_4

    .line 6639
    const/4 v1, 0x3

    .line 6640
    .local v1, SHRINK_SIZE:I
    aget-object v4, v5, v7

    .line 6641
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 6642
    .local v10, l1:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v13

    .line 6643
    .local v13, r1:I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6644
    .local v15, t1:I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6647
    .local v2, b1:I
    add-int/lit8 v17, v10, 0x3

    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    add-int/lit8 v17, v15, 0x3

    move/from16 v0, v17

    if-lt v2, v0, :cond_3

    .line 6648
    add-int/lit8 v13, v13, -0x3

    .line 6649
    add-int/lit8 v2, v2, -0x3

    .line 6654
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 6655
    add-int/lit8 v9, v7, -0x1

    .local v9, j:I
    :goto_2
    if-ltz v9, :cond_3

    .line 6656
    aget-object v12, v5, v9

    .line 6657
    .local v12, otherChild:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 6658
    .local v11, l2:I
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    .line 6659
    .local v14, r2:I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v16

    .line 6660
    .local v16, t2:I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6663
    .local v3, b2:I
    add-int/lit8 v17, v11, 0x3

    move/from16 v0, v17

    if-lt v14, v0, :cond_1

    add-int/lit8 v17, v16, 0x3

    move/from16 v0, v17

    if-lt v3, v0, :cond_1

    .line 6664
    add-int/lit8 v14, v14, -0x3

    .line 6665
    add-int/lit8 v3, v3, -0x3

    .line 6670
    invoke-virtual {v12}, Landroid/view/View;->isShown()Z

    move-result v17

    if-eqz v17, :cond_1

    if-lt v3, v15, :cond_1

    move/from16 v0, v16

    if-gt v0, v2, :cond_1

    if-lt v14, v10, :cond_1

    if-le v11, v13, :cond_2

    .line 6655
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 6673
    :cond_2
    const/4 v8, 0x1

    .line 6638
    .end local v3           #b2:I
    .end local v9           #j:I
    .end local v11           #l2:I
    .end local v12           #otherChild:Landroid/view/View;
    .end local v14           #r2:I
    .end local v16           #t2:I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 6681
    .end local v1           #SHRINK_SIZE:I
    .end local v2           #b1:I
    .end local v4           #child:Landroid/view/View;
    .end local v10           #l1:I
    .end local v13           #r1:I
    .end local v15           #t1:I
    :cond_4
    if-eqz v8, :cond_5

    if-eqz p1, :cond_5

    .line 6682
    const-string v17, "SmartRoll/ViewGroup"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mID:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "@"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ChildrenOverlap, ignore"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move/from16 v17, v8

    .line 6686
    goto/16 :goto_0
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    .line 2031
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2032
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 2034
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2035
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2036
    move-object v1, v0

    .line 2037
    if-nez v1, :cond_0

    .line 2038
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2040
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .parameter "event"
    .parameter "child"

    .prologue
    .line 1786
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 1787
    .local v1, offsetX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 1790
    .local v2, offsetY:F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1791
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1792
    .local v3, transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1793
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1794
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1795
    .local v0, handled:Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1801
    .end local v3           #transformedEvent:Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 1797
    .end local v0           #handled:Z
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1798
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1799
    .restart local v0       #handled:Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 10
    .parameter "event"
    .parameter "cancel"
    .parameter "child"
    .parameter "desiredPointerIdBits"

    .prologue
    const/4 v7, 0x3

    .line 2204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2212
    .local v4, oldAction:I
    if-nez p2, :cond_0

    if-ne v4, v7, :cond_2

    .line 2213
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2214
    if-nez p3, :cond_1

    .line 2215
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2219
    .local v0, handled:Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2292
    .end local v0           #handled:Z
    :goto_1
    return v0

    .line 2217
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_0

    .line 2228
    .end local v0           #handled:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 2229
    .local v5, oldPointerIdBits:I
    and-int v1, v5, p4

    .line 2233
    .local v1, newPointerIdBits:I
    if-nez v1, :cond_3

    .line 2234
    const-string v7, "ViewGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dispatch transformed touch event without pointers in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const/4 v0, 0x0

    goto :goto_1

    .line 2243
    :cond_3
    if-ne v1, v5, :cond_7

    .line 2244
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2245
    :cond_4
    if-nez p3, :cond_5

    .line 2246
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_1

    .line 2248
    .end local v0           #handled:Z
    :cond_5
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2249
    .local v2, offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2250
    .local v3, offsetY:F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2252
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2254
    .restart local v0       #handled:Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 2264
    .end local v0           #handled:Z
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2270
    .local v6, transformedEvent:Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    .line 2271
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2291
    .restart local v0       #handled:Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 2266
    .end local v0           #handled:Z
    .end local v6           #transformedEvent:Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6       #transformedEvent:Landroid/view/MotionEvent;
    goto :goto_2

    .line 2273
    :cond_8
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2274
    .restart local v2       #offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2275
    .restart local v3       #offsetY:F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2276
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2277
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2280
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_3
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIII)V
    .locals 2
    .parameter "canvas"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "color"

    .prologue
    .line 2783
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 2784
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2786
    invoke-static {p1, p2, p3, p4}, Landroid/view/ViewGroup;->getDebugLines(IIII)[F

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 2787
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1609
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v2, :cond_1

    .line 1610
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1611
    .local v0, now:J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1613
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1614
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1615
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1617
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    :cond_1
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 4969
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4970
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4972
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4974
    .local v2, size:I
    const/4 v1, 0x0

    .line 4975
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 4977
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 5033
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 4980
    :sswitch_0
    if-ltz p2, :cond_1

    .line 4981
    move v1, p2

    .line 4982
    const/high16 v0, 0x4000

    goto :goto_0

    .line 4983
    :cond_1
    if-ne p2, v8, :cond_2

    .line 4985
    move v1, v2

    .line 4986
    const/high16 v0, 0x4000

    goto :goto_0

    .line 4987
    :cond_2
    if-ne p2, v7, :cond_0

    .line 4990
    move v1, v2

    .line 4991
    const/high16 v0, -0x8000

    goto :goto_0

    .line 4997
    :sswitch_1
    if-ltz p2, :cond_3

    .line 4999
    move v1, p2

    .line 5000
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5001
    :cond_3
    if-ne p2, v8, :cond_4

    .line 5004
    move v1, v2

    .line 5005
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5006
    :cond_4
    if-ne p2, v7, :cond_0

    .line 5009
    move v1, v2

    .line 5010
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5016
    :sswitch_2
    if-ltz p2, :cond_5

    .line 5018
    move v1, p2

    .line 5019
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5020
    :cond_5
    if-ne p2, v8, :cond_6

    .line 5023
    const/4 v1, 0x0

    .line 5024
    const/4 v0, 0x0

    goto :goto_0

    .line 5025
    :cond_6
    if-ne p2, v7, :cond_0

    .line 5028
    const/4 v1, 0x0

    .line 5029
    const/4 v0, 0x0

    goto :goto_0

    .line 4977
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDebugLines(IIII)[F
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 6462
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    .line 6463
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 6466
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 6467
    add-int/lit8 p3, p3, -0x1

    .line 6469
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6470
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6471
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6472
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6474
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6475
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6476
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6477
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x7

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 6479
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 6480
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6481
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6482
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6484
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6485
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6486
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6487
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6489
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    return-object v0
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 6454
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 6455
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    .line 6456
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6458
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getScreenWidth()I
    .locals 5

    .prologue
    .line 6609
    sget v3, Landroid/view/ViewGroup;->mScreenWidth:I

    if-lez v3, :cond_0

    .line 6610
    sget v3, Landroid/view/ViewGroup;->mScreenWidth:I

    .line 6619
    :goto_0
    return v3

    .line 6613
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 6614
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6615
    .local v0, disp:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 6616
    .local v1, size:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 6617
    iget v3, v1, Landroid/graphics/Point;->x:I

    sput v3, Landroid/view/ViewGroup;->mScreenWidth:I

    .line 6619
    sget v3, Landroid/view/ViewGroup;->mScreenWidth:I

    goto :goto_0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"

    .prologue
    .line 2073
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 2074
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 2078
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1
    return-object v0

    .line 2073
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2078
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 476
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 479
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 480
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 481
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 482
    .local v3, attr:I
    packed-switch v3, :pswitch_data_0

    .line 480
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 487
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 490
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 493
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 496
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 499
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 502
    :pswitch_6
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 503
    .local v5, id:I
    if-lez v5, :cond_0

    .line 504
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 508
    .end local v5           #id:I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 511
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 514
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 515
    .local v2, animateLayoutChanges:Z
    if-eqz v2, :cond_0

    .line 516
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 522
    .end local v2           #animateLayoutChanges:Z
    .end local v3           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 523
    return-void

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 454
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 457
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 458
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 459
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 460
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 461
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 463
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 464
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 467
    :cond_1
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 469
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 472
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 473
    return-void
.end method

.method private invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "dirty"

    .prologue
    const v2, 0x8000

    const/4 v3, 0x0

    .line 4325
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 4327
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4329
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4332
    :cond_1
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-eqz v0, :cond_2

    .line 4333
    iget-object v0, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4335
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4336
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->transformRect(Landroid/graphics/Rect;)V

    .line 4339
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4343
    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 2977
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2978
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2980
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 2981
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 2986
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2989
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 2990
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2991
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 2992
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2996
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2997
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "event"

    .prologue
    .line 1724
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3553
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3554
    .local v0, children:[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3555
    :cond_0
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3557
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3558
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 3559
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 3566
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_5

    .line 3567
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 3568
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3572
    :cond_2
    :goto_1
    return-void

    .line 3560
    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    .line 3561
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3562
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 3564
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3569
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    .line 3570
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 6
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 3576
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3577
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3579
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3580
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3582
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 3606
    :goto_0
    return-void

    .line 3586
    :cond_0
    if-ne v2, v1, :cond_1

    .line 3587
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 3588
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3589
    aput-object v5, v0, v3

    .line 3587
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3592
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 3593
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3592
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3598
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3600
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 3601
    aput-object v5, v0, v3

    .line 3600
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3605
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .parameter "pointerIdBits"

    .prologue
    .line 2102
    const/4 v1, 0x0

    .line 2103
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2104
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 2105
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2106
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2107
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2108
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 2109
    if-nez v1, :cond_0

    .line 2110
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2114
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2115
    move-object v2, v0

    .line 2116
    goto :goto_0

    .line 2112
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2119
    :cond_1
    move-object v1, v2

    .line 2120
    move-object v2, v0

    .line 2121
    goto :goto_0

    .line 2122
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 3
    .parameter "index"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 3718
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    .line 3719
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3722
    :cond_0
    const/4 v0, 0x0

    .line 3723
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 3724
    invoke-virtual {p2}, Landroid/view/View;->unFocus()V

    .line 3725
    const/4 v0, 0x1

    .line 3728
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3730
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3731
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3733
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3735
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3740
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3741
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3744
    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3746
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3748
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3750
    if-eqz v0, :cond_5

    .line 3751
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3752
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    .line 3755
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3756
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3758
    :cond_6
    return-void

    .line 3736
    :cond_7
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 3737
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3710
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3711
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 3712
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3714
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 3794
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3795
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    .line 3796
    .local v2, detach:Z
    :goto_0
    const/4 v1, 0x0

    .line 3798
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3799
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 3801
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_7

    .line 3802
    aget-object v6, v0, v5

    .line 3804
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_0

    .line 3805
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3808
    :cond_0
    if-ne v6, v4, :cond_1

    .line 3809
    invoke-virtual {v6}, Landroid/view/View;->unFocus()V

    .line 3810
    move-object v1, v6

    .line 3813
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3815
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3816
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3818
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3820
    :cond_2
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3825
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3826
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3829
    :cond_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3831
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3801
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_5
    move v2, v7

    .line 3795
    goto :goto_0

    .line 3821
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_6
    if-eqz v2, :cond_3

    .line 3822
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 3834
    .end local v6           #view:Landroid/view/View;
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3836
    if-eqz v1, :cond_8

    .line 3837
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3838
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    .line 3840
    :cond_8
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 2020
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2021
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2022
    const/4 v0, 0x1

    .line 2024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 2010
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2011
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2012
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2013
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 4690
    if-eqz p2, :cond_0

    .line 4691
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4695
    :goto_0
    return-void

    .line 4693
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method


# virtual methods
.method public OnClickable(Z)Z
    .locals 1
    .parameter "isParentClickable"

    .prologue
    .line 6864
    iput-boolean p1, p0, Landroid/view/View;->mIsParentClickable:Z

    .line 6867
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 6868
    const/4 v0, 0x1

    .line 6874
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v0

    goto :goto_0
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1653
    .local p1, childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 1655
    .local v1, children:Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 1656
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1657
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1658
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1659
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1660
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1667
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childrenCount:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v4

    .restart local v2       #childrenCount:I
    .restart local v3       #i:I
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 1669
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 880
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 882
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_1

    .line 883
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 884
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 886
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 887
    aget-object v0, v1, v5

    .line 888
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 889
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 886
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 898
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_1
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 901
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 903
    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 5335
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 961
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 962
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 964
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 965
    aget-object v0, v1, v3

    .line 966
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 967
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 964
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 970
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3239
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3240
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 3256
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3257
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3259
    if-nez v0, :cond_0

    .line 3260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3263
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3264
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3277
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3278
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3279
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3280
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3281
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3332
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 3294
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3295
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 3435
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3436
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3437
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3438
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 3625
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3627
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 3628
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3629
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3632
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 3633
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 3634
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v2, -0x8000

    .line 3996
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3998
    if-gez p2, :cond_0

    .line 3999
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4002
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4004
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4005
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4008
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4010
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4011
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4013
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1100
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1101
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1102
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1103
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1104
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1106
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 4515
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 3351
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childAccessibilityStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1676
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->childAccessibilityStateChanged(Landroid/view/View;)V

    .line 1679
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5343
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 5344
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5346
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .parameter "child"
    .parameter "childHasTransientState"

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v2

    .line 721
    .local v2, oldHasTransientState:Z
    if-eqz p2, :cond_1

    .line 722
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 727
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 728
    .local v1, newHasTransientState:Z
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    .line 730
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :cond_0
    :goto_1
    return-void

    .line 724
    .end local v1           #newHasTransientState:Z
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 731
    .restart local v1       #newHasTransientState:Z
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/AbstractMethodError;
    const-string v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3447
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3448
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 764
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 767
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 5042
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5043
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5044
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5046
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v1, :cond_0

    .line 778
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 784
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 781
    .local v0, focused:Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 782
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 2757
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2758
    .local v2, count:I
    const/4 v4, 0x0

    .line 2760
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 2761
    new-array v4, v2, [I

    .line 2762
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2763
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2764
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 2765
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 2766
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2762
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2771
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2773
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 2774
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 2775
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2774
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2779
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 6
    .parameter "depth"

    .prologue
    .line 4811
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 4814
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 4815
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4816
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4817
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 4820
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4821
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4822
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4825
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4826
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 4827
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 4825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4830
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 4831
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4832
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4833
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4095
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4096
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 4107
    :cond_0
    return-void

    .line 4100
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4101
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4103
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4104
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4105
    aput-object v4, v0, v2

    .line 4103
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 4054
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4055
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 4033
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4034
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 4076
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4077
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 6
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 2505
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x40

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2506
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2507
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v5, -0x400001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2509
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2510
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2511
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2512
    aget-object v0, v1, v3

    .line 2513
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2511
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2516
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchClickable(Z)Z
    .locals 8
    .parameter "isParentClickable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6833
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->OnClickable(Z)Z

    move-result v4

    .line 6834
    .local v4, isMyselfClickable:Z
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6837
    .local v2, childrenCount:I
    iput-boolean v6, p0, Landroid/view/View;->mIsChildrenClickable:Z

    .line 6840
    if-eqz v2, :cond_3

    .line 6843
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6845
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 6846
    aget-object v0, v1, v3

    .line 6849
    .local v0, child:Landroid/view/View;
    if-nez p1, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    move v5, v7

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->dispatchClickable(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6850
    iput-boolean v7, p0, Landroid/view/View;->mIsChildrenClickable:Z

    .line 6845
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move v5, v6

    .line 6849
    goto :goto_1

    .line 6855
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #i:I
    :cond_3
    iget-boolean v5, p0, Landroid/view/View;->mIsChildrenClickable:Z

    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    move v6, v7

    :cond_5
    return v6
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .parameter "attachInfo"
    .parameter "visibility"

    .prologue
    .line 1084
    and-int/lit8 v4, p2, 0xc

    if-nez v4, :cond_0

    .line 1085
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1086
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1087
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1088
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1089
    aget-object v0, v1, v3

    .line 1090
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1094
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1064
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1065
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1066
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1067
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1068
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1067
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1070
    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2603
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2606
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2609
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 2612
    iput-object v4, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 2613
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v3, :cond_0

    .line 2614
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 2615
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 2618
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2619
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2621
    .local v0, children:[Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2622
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2623
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 2624
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2622
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2629
    .end local v2           #i:I
    :cond_2
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2630
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 990
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 991
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 992
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 993
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 994
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 993
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 996
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 1114
    const/4 v11, 0x0

    .line 1115
    .local v11, retval:Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1116
    .local v14, tx:F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1118
    .local v15, ty:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1121
    .local v12, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1265
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v11, :cond_1

    .line 1267
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1269
    :cond_1
    return v11

    .line 1124
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1127
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 1129
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1135
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1136
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1137
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1138
    .local v6, children:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_4

    .line 1139
    aget-object v5, v6, v9

    .line 1140
    .local v5, child:Landroid/view/View;
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1141
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 1142
    aget-object v17, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v8

    .line 1143
    .local v8, handled:Z
    if-eqz v8, :cond_2

    .line 1144
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1138
    .end local v8           #handled:Z
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1131
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1150
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1151
    const/4 v11, 0x1

    goto :goto_0

    .line 1157
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1160
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1161
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1162
    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    .line 1165
    .end local v5           #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1167
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1172
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1173
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1179
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1187
    .local v13, target:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_9

    .line 1188
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1190
    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1192
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1194
    .local v16, view:Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1195
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1196
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1197
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1199
    .end local v16           #view:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1202
    if-eqz v13, :cond_8

    .line 1203
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1204
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1205
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1206
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1208
    :cond_8
    move-object/from16 v0, p1

    iput v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1212
    .end local v4           #action:I
    :cond_9
    if-eqz v13, :cond_0

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1216
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1218
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1219
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1236
    .end local v13           #target:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1238
    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1239
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1240
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1242
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 1248
    .end local v16           #view:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1249
    .restart local v13       #target:Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1253
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1254
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1255
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 2831
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2832
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2833
    .local v8, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2835
    .local v17, flags:I
    and-int/lit8 v22, v17, 0x8

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2836
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 2838
    .local v6, cache:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v22

    if-nez v22, :cond_2

    const/4 v5, 0x1

    .line 2839
    .local v5, buildCache:Z
    :goto_1
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_3

    .line 2840
    aget-object v7, v8, v18

    .line 2841
    .local v7, child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_0

    .line 2842
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2843
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2, v11}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 2844
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 2845
    if-eqz v6, :cond_0

    .line 2846
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2847
    if-eqz v5, :cond_0

    .line 2848
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2839
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 2836
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v7           #child:Landroid/view/View;
    .end local v18           #i:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2838
    .restart local v6       #cache:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2854
    .restart local v5       #buildCache:Z
    .restart local v18       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2855
    .local v10, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2856
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2859
    :cond_4
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 2861
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2862
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2864
    if-eqz v6, :cond_5

    .line 2865
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2868
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 2873
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v10           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v18           #i:I
    :cond_6
    const/16 v21, 0x0

    .line 2874
    .local v21, saveCount:I
    and-int/lit8 v22, v17, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    const/4 v9, 0x1

    .line 2875
    .local v9, clipToPadding:Z
    :goto_3
    if-eqz v9, :cond_7

    .line 2876
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 2877
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2884
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2885
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2887
    const/16 v19, 0x0

    .line 2888
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    .line 2890
    .local v14, drawingTime:J
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 2891
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v11, :cond_10

    .line 2892
    aget-object v7, v8, v18

    .line 2894
    .restart local v7       #child:Landroid/view/View;
    if-nez v7, :cond_8

    .line 2895
    const-string v22, "ViewGroup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dispatchDraw: i = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", this = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->debug()V

    .line 2899
    :cond_8
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 2900
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2891
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 2874
    .end local v7           #child:Landroid/view/View;
    .end local v9           #clipToPadding:Z
    .end local v14           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #more:Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2904
    .restart local v9       #clipToPadding:Z
    .restart local v14       #drawingTime:J
    .restart local v19       #more:Z
    :cond_c
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v11, :cond_10

    .line 2905
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v7, v8, v22

    .line 2907
    .restart local v7       #child:Landroid/view/View;
    if-nez v7, :cond_d

    .line 2908
    const-string v22, "ViewGroup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dispatchDraw: i = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", this = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->debug()V

    .line 2911
    :cond_d
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_f

    .line 2912
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2904
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 2918
    .end local v7           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 2919
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2920
    .local v12, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v13, v22, -0x1

    .line 2922
    .local v13, disappearingCount:I
    move/from16 v18, v13

    :goto_6
    if-ltz v18, :cond_11

    .line 2923
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2924
    .restart local v7       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2922
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 2928
    .end local v7           #child:Landroid/view/View;
    .end local v12           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13           #disappearingCount:I
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 2929
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 2932
    :cond_12
    if-eqz v9, :cond_13

    .line 2933
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2937
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2939
    and-int/lit8 v22, v17, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 2940
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2943
    :cond_14
    and-int/lit8 v22, v17, 0x10

    if-nez v22, :cond_15

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_15

    if-nez v19, :cond_15

    .line 2948
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2949
    new-instance v16, Landroid/view/ViewGroup$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 2954
    .local v16, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2956
    .end local v16           #end:Ljava/lang/Runnable;
    :cond_15
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 2492
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2493
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2494
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2495
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2496
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2498
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2671
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2672
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1767
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1769
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1774
    :goto_0
    return v0

    .line 1770
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1772
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1774
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .line 1736
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1737
    .local v3, childrenCount:I
    if-eqz v3, :cond_3

    .line 1738
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1739
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1740
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1742
    .local v7, y:F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 1743
    .local v4, customOrder:Z
    add-int/lit8 v5, v3, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_3

    .line 1744
    if-eqz v4, :cond_1

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    .line 1745
    .local v1, childIndex:I
    :goto_1
    aget-object v0, v2, v1

    .line 1746
    .local v0, child:Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v0, v8}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1743
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #childIndex:I
    :cond_1
    move v1, v5

    .line 1744
    goto :goto_1

    .line 1751
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childIndex:I
    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1752
    const/4 v8, 0x1

    .line 1758
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childIndex:I
    .end local v2           #children:[Landroid/view/View;
    .end local v4           #customOrder:Z
    .end local v5           #i:I
    .end local v6           #x:F
    .end local v7           #y:F
    :goto_2
    return v8

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_2
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, -0x8000

    .line 3009
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3010
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3011
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 3012
    aget-object v0, v1, v3

    .line 3013
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasStaticLayer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3015
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3017
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3018
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 3019
    iput-boolean v5, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3011
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 3015
    goto :goto_1

    .line 3022
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 1434
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1437
    .local v4, action:I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1438
    .local v13, interceptHover:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1440
    move-object/from16 v8, p1

    .line 1441
    .local v8, eventNoHistory:Landroid/view/MotionEvent;
    const/4 v10, 0x0

    .line 1445
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1446
    .local v9, firstOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1447
    if-nez v13, :cond_3

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v4, v0, :cond_3

    .line 1448
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 1449
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 1450
    .local v20, y:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1451
    .local v7, childrenCount:I
    if-eqz v7, :cond_3

    .line 1452
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1453
    .local v6, children:[Landroid/view/View;
    const/4 v14, 0x0

    .line 1454
    .local v14, lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v12, v7, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_3

    .line 1455
    aget-object v5, v6, v12

    .line 1456
    .local v5, child:Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1454
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 1463
    :cond_1
    move-object v11, v9

    .line 1465
    .local v11, hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v17, 0x0

    .line 1466
    .local v17, predecessor:Landroid/view/ViewGroup$HoverTarget;
    :goto_1
    if-nez v11, :cond_4

    .line 1467
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v11

    .line 1468
    const/16 v18, 0x0

    .line 1488
    .local v18, wasHovered:Z
    :goto_2
    if-eqz v14, :cond_7

    .line 1489
    iput-object v11, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1496
    :goto_3
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_8

    .line 1497
    if-nez v18, :cond_2

    .line 1499
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1518
    :cond_2
    :goto_4
    if-eqz v10, :cond_0

    .line 1526
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_3
    :goto_5
    if-eqz v9, :cond_c

    .line 1527
    iget-object v5, v9, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1530
    .restart local v5       #child:Landroid/view/View;
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 1532
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1548
    :goto_6
    iget-object v0, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v16, v0

    .line 1549
    .local v16, nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v9}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1550
    move-object/from16 v9, v16

    .line 1551
    goto :goto_5

    .line 1472
    .end local v16           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #childrenCount:I
    .restart local v11       #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v12       #i:I
    .restart local v14       #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v17       #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .restart local v19       #x:F
    .restart local v20       #y:F
    :cond_4
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_6

    .line 1473
    if-eqz v17, :cond_5

    .line 1474
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1478
    :goto_7
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1479
    const/16 v18, 0x1

    .line 1480
    .restart local v18       #wasHovered:Z
    goto :goto_2

    .line 1476
    .end local v18           #wasHovered:Z
    :cond_5
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_7

    .line 1483
    :cond_6
    move-object/from16 v17, v11

    .line 1484
    iget-object v11, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1491
    .restart local v18       #wasHovered:Z
    :cond_7
    move-object v14, v11

    .line 1492
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    .line 1502
    :cond_8
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 1503
    if-nez v18, :cond_9

    .line 1505
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1506
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1507
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1509
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1511
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1515
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1537
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_a
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_b

    .line 1538
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1541
    :cond_b
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1542
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1543
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1545
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_6

    .line 1554
    .end local v5           #child:Landroid/view/View;
    :cond_c
    if-nez v10, :cond_f

    const/4 v15, 0x1

    .line 1555
    .local v15, newHoveredSelf:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_10

    .line 1556
    if-eqz v15, :cond_d

    .line 1558
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1600
    :cond_d
    :goto_9
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_e

    .line 1601
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1605
    :cond_e
    return v10

    .line 1554
    .end local v15           #newHoveredSelf:Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_8

    .line 1561
    .restart local v15       #newHoveredSelf:Z
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1563
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_12

    .line 1565
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1577
    :goto_a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1580
    :cond_11
    if-eqz v15, :cond_d

    .line 1582
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_14

    .line 1584
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1585
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_9

    .line 1569
    :cond_12
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    .line 1570
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1572
    :cond_13
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1573
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1574
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1575
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_a

    .line 1586
    :cond_14
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_d

    .line 1588
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1589
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1590
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1591
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1593
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1594
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_9
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1364
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1368
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1370
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1383
    :cond_1
    :goto_0
    return v0

    .line 1373
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1375
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1380
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1381
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1383
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1349
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1351
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1356
    :goto_0
    return v0

    .line 1352
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1354
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1391
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1393
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1398
    :goto_0
    return v0

    .line 1394
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1396
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2531
    const/4 v3, 0x0

    .line 2532
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2533
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    .line 2534
    if-eqz v3, :cond_0

    move v5, v3

    .line 2554
    :goto_0
    return v5

    .line 2539
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    .line 2541
    .local v2, children:Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2542
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 2543
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2544
    .local v0, child:Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    .line 2545
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2546
    if-eqz v3, :cond_1

    .line 2552
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    move v5, v3

    .line 2547
    goto :goto_0

    .line 2542
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2552
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v4           #i:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v5

    .restart local v1       #childCount:I
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2554
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2679
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2680
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2681
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2682
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2683
    aget-object v0, v1, v3

    .line 2684
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2685
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2682
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2688
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2651
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2652
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2653
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2654
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2655
    aget-object v0, v1, v3

    .line 2656
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2657
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2654
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2660
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .parameter "screenState"

    .prologue
    .line 2520
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2522
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2523
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2524
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2525
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2527
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .parameter "activated"

    .prologue
    .line 3089
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3090
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3091
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3092
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3094
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .parameter "pressed"

    .prologue
    .line 3098
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3099
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3100
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3101
    aget-object v0, v1, v3

    .line 3105
    .local v0, child:Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3106
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 3100
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3109
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 3077
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3078
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3079
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3080
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3079
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3082
    :cond_0
    return-void
.end method

.method public dispatchSmartRoll(ZZ)Z
    .locals 8
    .parameter "newSmartRoll"
    .parameter "isTestOnly"

    .prologue
    const/4 v6, 0x0

    .line 6505
    const/4 v5, 0x0

    .line 6507
    .local v5, isDispatchBySelf:Z
    iget-boolean v7, p0, Landroid/view/View;->mIsSupportSmartRoll:Z

    if-eqz v7, :cond_4

    .line 6508
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onSmartRoll(ZZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6509
    const/4 v5, 0x1

    .line 6515
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6516
    .local v2, childrenCount:I
    const/4 v4, 0x0

    .line 6518
    .local v4, isDispatchByChild:Z
    if-eqz v2, :cond_2

    .line 6521
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6523
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 6524
    aget-object v0, v1, v3

    .line 6527
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->checkIfCertainChildOverlap(Landroid/view/View;Z)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchSmartRoll(ZZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6529
    const/4 v4, 0x1

    .line 6523
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6534
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #i:I
    :cond_2
    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    const/4 v6, 0x1

    .end local v2           #childrenCount:I
    .end local v4           #isDispatchByChild:Z
    :cond_4
    return v6
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 2477
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2478
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2479
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2480
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2481
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2483
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1321
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1323
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1324
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1325
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1326
    aget-object v0, v1, v3

    .line 1327
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1329
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2699
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2700
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "ev"

    .prologue
    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1818
    :cond_0
    const/16 v16, 0x0

    .line 1819
    .local v16, handled:Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 1820
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1821
    .local v4, action:I
    and-int/lit16 v6, v4, 0xff

    .line 1824
    .local v6, actionMasked:I
    if-nez v6, :cond_1

    .line 1828
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 1829
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1834
    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 1836
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    const/high16 v29, 0x8

    and-int v28, v28, v29

    if-eqz v28, :cond_7

    const/4 v15, 0x1

    .line 1837
    .local v15, disallowIntercept:Z
    :goto_0
    if-nez v15, :cond_8

    .line 1838
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 1839
    .local v20, intercepted:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1850
    .end local v15           #disallowIntercept:Z
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v28

    if-nez v28, :cond_3

    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v6, v0, :cond_a

    :cond_3
    const/4 v9, 0x1

    .line 1854
    .local v9, canceled:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    const/high16 v29, 0x20

    and-int v28, v28, v29

    if-eqz v28, :cond_b

    const/16 v24, 0x1

    .line 1862
    .local v24, split:Z
    :goto_3
    const/16 v21, 0x0

    .line 1863
    .local v21, newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 1864
    .local v7, alreadyDispatchedToNewTouchTarget:Z
    if-nez v9, :cond_12

    if-nez v20, :cond_12

    .line 1865
    if-eqz v6, :cond_5

    if-eqz v24, :cond_4

    const/16 v28, 0x5

    move/from16 v0, v28

    if-eq v6, v0, :cond_5

    :cond_4
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v6, v0, :cond_12

    .line 1868
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1869
    .local v5, actionIndex:I
    if-eqz v24, :cond_c

    const/16 v28, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    shl-int v18, v28, v29

    .line 1874
    .local v18, idBitsToAssign:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 1876
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1877
    .local v13, childrenCount:I
    if-eqz v13, :cond_f

    .line 1880
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1881
    .local v12, children:[Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .line 1882
    .local v26, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 1884
    .local v27, y:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    .line 1885
    .local v14, customOrder:Z
    add-int/lit8 v17, v13, -0x1

    .local v17, i:I
    :goto_5
    if-ltz v17, :cond_f

    .line 1886
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v11

    .line 1888
    .local v11, childIndex:I
    :goto_6
    aget-object v10, v12, v11

    .line 1889
    .local v10, child:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v28

    if-nez v28, :cond_e

    .line 1885
    :cond_6
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .line 1836
    .end local v5           #actionIndex:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #children:[Landroid/view/View;
    .end local v13           #childrenCount:I
    .end local v14           #customOrder:Z
    .end local v17           #i:I
    .end local v18           #idBitsToAssign:I
    .end local v20           #intercepted:Z
    .end local v21           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v24           #split:Z
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1841
    .restart local v15       #disallowIntercept:Z
    :cond_8
    const/16 v20, 0x0

    .restart local v20       #intercepted:Z
    goto/16 :goto_1

    .line 1846
    .end local v15           #disallowIntercept:Z
    .end local v20           #intercepted:Z
    :cond_9
    const/16 v20, 0x1

    .restart local v20       #intercepted:Z
    goto/16 :goto_1

    .line 1850
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1854
    .restart local v9       #canceled:Z
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 1869
    .restart local v5       #actionIndex:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v21       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v24       #split:Z
    :cond_c
    const/16 v18, -0x1

    goto :goto_4

    .restart local v12       #children:[Landroid/view/View;
    .restart local v13       #childrenCount:I
    .restart local v14       #customOrder:Z
    .restart local v17       #i:I
    .restart local v18       #idBitsToAssign:I
    .restart local v26       #x:F
    .restart local v27       #y:F
    :cond_d
    move/from16 v11, v17

    .line 1886
    goto :goto_6

    .line 1899
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #childIndex:I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v21

    .line 1907
    if-eqz v21, :cond_10

    .line 1910
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v28, v0

    or-int v28, v28, v18

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1928
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #children:[Landroid/view/View;
    .end local v14           #customOrder:Z
    .end local v17           #i:I
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_f
    :goto_7
    if-nez v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v21, v0

    .line 1932
    :goto_8
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    .line 1933
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v21, v0

    goto :goto_8

    .line 1914
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #childIndex:I
    .restart local v12       #children:[Landroid/view/View;
    .restart local v14       #customOrder:Z
    .restart local v17       #i:I
    .restart local v26       #x:F
    .restart local v27       #y:F
    :cond_10
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1915
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1917
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 1918
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 1919
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 1920
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 1921
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v21

    .line 1922
    const/4 v7, 0x1

    .line 1923
    goto :goto_7

    .line 1935
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #children:[Landroid/view/View;
    .end local v14           #customOrder:Z
    .end local v17           #i:I
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_11
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v28, v0

    or-int v28, v28, v18

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1941
    .end local v5           #actionIndex:I
    .end local v13           #childrenCount:I
    .end local v18           #idBitsToAssign:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-nez v28, :cond_17

    .line 1943
    const/16 v28, 0x0

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v16

    .line 1984
    :cond_13
    if-nez v9, :cond_14

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v6, v0, :cond_14

    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v6, v0, :cond_1e

    .line 1987
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2000
    .end local v4           #action:I
    .end local v6           #actionMasked:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v20           #intercepted:Z
    .end local v21           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v24           #split:Z
    :cond_15
    :goto_9
    if-nez v16, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2003
    :cond_16
    return v16

    .line 1948
    .restart local v4       #action:I
    .restart local v6       #actionMasked:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v9       #canceled:Z
    .restart local v20       #intercepted:Z
    .restart local v21       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v24       #split:Z
    :cond_17
    const/16 v23, 0x0

    .line 1949
    .local v23, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v25, v0

    .line 1950
    .local v25, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_a
    if-eqz v25, :cond_13

    .line 1951
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v22, v0

    .line 1952
    .local v22, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_19

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 1953
    const/16 v16, 0x1

    .line 1978
    :cond_18
    move-object/from16 v23, v25

    .line 1979
    move-object/from16 v25, v22

    .line 1980
    goto :goto_a

    .line 1955
    :cond_19
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v28

    if-nez v28, :cond_1a

    if-eqz v20, :cond_1c

    :cond_1a
    const/4 v8, 0x1

    .line 1957
    .local v8, cancelChild:Z
    :goto_b
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1959
    const/16 v16, 0x1

    .line 1967
    :cond_1b
    if-eqz v8, :cond_18

    .line 1968
    if-nez v23, :cond_1d

    .line 1969
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1973
    :goto_c
    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1974
    move-object/from16 v25, v22

    .line 1975
    goto :goto_a

    .line 1955
    .end local v8           #cancelChild:Z
    :cond_1c
    const/4 v8, 0x0

    goto :goto_b

    .line 1971
    .restart local v8       #cancelChild:Z
    :cond_1d
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_c

    .line 1988
    .end local v8           #cancelChild:Z
    .end local v22           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v25           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_1e
    if-eqz v24, :cond_15

    const/16 v28, 0x6

    move/from16 v0, v28

    if-ne v6, v0, :cond_15

    .line 1989
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1990
    .restart local v5       #actionIndex:I
    const/16 v28, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    shl-int v19, v28, v29

    .line 1991
    .local v19, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_9
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1406
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1407
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1410
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1412
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1425
    :cond_1
    :goto_0
    return v0

    .line 1415
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1417
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1422
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1423
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1425
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 751
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 1038
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1039
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1040
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1041
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1042
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1041
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 942
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 943
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 944
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 945
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 947
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 948
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 945
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    :cond_1
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1309
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1311
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1312
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1313
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1314
    aget-object v0, v1, v3

    .line 1315
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1317
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 1051
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1052
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1053
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1054
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1055
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1057
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3036
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 5253
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 5255
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 5256
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 5257
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5261
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5262
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5264
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 5265
    aget-object v0, v1, v3

    .line 5266
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 5267
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 5264
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5271
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 5140
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 5141
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5142
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5143
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5144
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5145
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5147
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5156
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5159
    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 5149
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 5150
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5152
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 5153
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    .end local p0
    :goto_0
    return-object p0

    .line 838
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 841
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "outLocalPoint"

    .prologue
    .line 1275
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1276
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1277
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1278
    aget-object v0, v1, v3

    .line 1279
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1277
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1283
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1287
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6
    .parameter "accessibilityId"

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 922
    .local v3, foundView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v5, v3

    .line 934
    :goto_0
    return-object v5

    .line 925
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 926
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 927
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 928
    aget-object v0, v1, v4

    .line 929
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 930
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 931
    goto :goto_0

    .line 927
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 934
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3204
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3223
    .end local p0
    :goto_0
    return-object p0

    .line 3208
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3209
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3211
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3212
    aget-object v2, v3, v0

    .line 3214
    .local v2, v:Landroid/view/View;
    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3215
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3217
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3218
    goto :goto_0

    .line 3211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3223
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 3150
    iget v4, p0, Landroid/view/View;->mID:I

    if-ne p1, v4, :cond_0

    .line 3169
    .end local p0
    :goto_0
    return-object p0

    .line 3154
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3155
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3157
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3158
    aget-object v2, v3, v0

    .line 3160
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3161
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3163
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3164
    goto :goto_0

    .line 3157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3169
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 3177
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3196
    .end local p0
    :goto_0
    return-object p0

    .line 3181
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3182
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3184
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3185
    aget-object v2, v3, v0

    .line 3187
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3188
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3190
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3191
    goto :goto_0

    .line 3184
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3196
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter
    .parameter "text"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 908
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 909
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 910
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 911
    aget-object v0, v1, v3

    .line 912
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 914
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 910
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 917
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 5071
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5072
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 5073
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5074
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5076
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5077
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5080
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5081
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5085
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5086
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5089
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 5090
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 5093
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5095
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5097
    :cond_3
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 5227
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5228
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 5229
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5230
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5231
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 5232
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5233
    if-eqz v2, :cond_1

    .line 5238
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 5231
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 655
    :goto_0
    return-object v0

    .line 652
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 608
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 622
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5192
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_0

    move v4, v7

    .line 5193
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 5209
    :goto_1
    return v7

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v6

    .line 5192
    goto :goto_0

    .line 5197
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 5198
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5199
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5200
    .local v2, count:I
    const/4 v5, 0x1

    .line 5201
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 5202
    aget-object v0, v1, v3

    .line 5203
    .local v0, child:Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5204
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5205
    const/4 v5, 0x0

    .line 5201
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5209
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    move v7, v6

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 4803
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4774
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 4792
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 4873
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    .line 4874
    :cond_0
    const/4 v0, 0x0

    .line 4876
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 4862
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 2973
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 3142
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 11
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f00

    .line 4449
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4450
    .local v3, rect:Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4452
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4453
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4456
    :cond_0
    iget v6, p1, Landroid/view/View;->mLeft:I

    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v6, v7

    .line 4457
    .local v0, dx:I
    iget v6, p1, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v6, v7

    .line 4459
    .local v1, dy:I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 4461
    if-eqz p3, :cond_2

    .line 4462
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4463
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v6, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 4465
    .local v2, position:[F
    :goto_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aput v6, v2, v5

    .line 4466
    iget v6, p3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 4467
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4468
    aget v6, v2, v5

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4469
    aget v6, v2, v4

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4471
    .end local v2           #position:[F
    :cond_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4472
    iget v6, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v1

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4475
    :cond_2
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v10, v10, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4476
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_5

    .line 4482
    :goto_2
    return v4

    .line 4449
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #rect:Landroid/graphics/RectF;
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 4463
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    .restart local v3       #rect:Landroid/graphics/RectF;
    :cond_4
    const/4 v6, 0x2

    new-array v2, v6, [F

    goto :goto_1

    .line 4477
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4479
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v5

    .line 4482
    goto :goto_2
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 540
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 4559
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 5248
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 1

    .prologue
    .line 4743
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 3790
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4714
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 570
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 574
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 575
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 849
    iget v7, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v5

    .line 853
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 854
    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 858
    .local v3, descendantFocusability:I
    const/high16 v7, 0x6

    if-eq v3, v7, :cond_0

    .line 859
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 860
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 862
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 863
    aget-object v0, v1, v4

    .line 864
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 865
    goto :goto_0

    .line 862
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransientState()Z
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 4845
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4846
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4847
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4848
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 4852
    .end local v2           #i:I
    :goto_1
    return v2

    .line 4847
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4852
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected internalSetPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2637
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 2639
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2640
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2644
    :goto_0
    return-void

    .line 2642
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 23
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 4114
    move-object/from16 v13, p0

    .line 4116
    .local v13, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4117
    .local v5, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v5, :cond_9

    .line 4121
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x40

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/4 v8, 0x1

    .line 4127
    .local v8, drawAnimation:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 4128
    .local v7, childMatrix:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v8, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v18

    if-nez v18, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_b

    const/4 v9, 0x1

    .line 4132
    .local v9, isOpaque:Z
    :goto_1
    if-eqz v9, :cond_c

    const/high16 v12, 0x40

    .line 4134
    .local v12, opaqueFlag:I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 4135
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, -0x8000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4136
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x8001

    and-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4137
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4140
    :cond_0
    iget-object v10, v5, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4141
    .local v10, location:[I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 4142
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 4143
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 4145
    :cond_1
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4146
    .local v6, boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 4149
    iget-object v14, v5, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 4150
    .local v14, t:Landroid/view/animation/Transformation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v16

    .line 4151
    .local v16, transformed:Z
    if-eqz v16, :cond_d

    .line 4152
    iget-object v15, v5, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 4153
    .local v15, transformMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v14}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4154
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_2

    .line 4155
    invoke-virtual {v15, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4163
    .end local v14           #t:Landroid/view/animation/Transformation;
    .end local v16           #transformed:Z
    :cond_2
    :goto_3
    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4164
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4171
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    .end local v15           #transformMatrix:Landroid/graphics/Matrix;
    :cond_3
    const/16 v17, 0x0

    .line 4172
    .local v17, view:Landroid/view/View;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, v13

    .line 4173
    check-cast v17, Landroid/view/View;

    .line 4176
    :cond_4
    if-eqz v8, :cond_5

    .line 4177
    if-eqz v17, :cond_f

    .line 4178
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4186
    :cond_5
    :goto_4
    if-eqz v17, :cond_7

    .line 4187
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x3000

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getSolidColor()I

    move-result v18

    if-nez v18, :cond_6

    .line 4189
    const/high16 v12, 0x20

    .line 4191
    :cond_6
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x60

    and-int v18, v18, v19

    const/high16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 4192
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x600001

    and-int v18, v18, v19

    or-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4196
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v13, v10, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v13

    .line 4197
    if-eqz v17, :cond_8

    .line 4199
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 4200
    .local v11, m:Landroid/graphics/Matrix;
    invoke-virtual {v11}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_8

    .line 4201
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4202
    .restart local v6       #boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4203
    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4204
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4210
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    .end local v11           #m:Landroid/graphics/Matrix;
    :cond_8
    if-nez v13, :cond_3

    .line 4212
    .end local v7           #childMatrix:Landroid/graphics/Matrix;
    .end local v8           #drawAnimation:Z
    .end local v9           #isOpaque:Z
    .end local v10           #location:[I
    .end local v12           #opaqueFlag:I
    .end local v17           #view:Landroid/view/View;
    :cond_9
    return-void

    .line 4121
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4128
    .restart local v7       #childMatrix:Landroid/graphics/Matrix;
    .restart local v8       #drawAnimation:Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 4132
    .restart local v9       #isOpaque:Z
    :cond_c
    const/high16 v12, 0x20

    goto/16 :goto_2

    .line 4158
    .restart local v6       #boundingRect:Landroid/graphics/RectF;
    .restart local v10       #location:[I
    .restart local v12       #opaqueFlag:I
    .restart local v14       #t:Landroid/view/animation/Transformation;
    .restart local v16       #transformed:Z
    :cond_d
    move-object v15, v7

    .restart local v15       #transformMatrix:Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 4161
    .end local v14           #t:Landroid/view/animation/Transformation;
    .end local v15           #transformMatrix:Landroid/graphics/Matrix;
    .end local v16           #transformed:Z
    :cond_e
    move-object v15, v7

    .restart local v15       #transformMatrix:Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 4179
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    .end local v15           #transformMatrix:Landroid/graphics/Matrix;
    .restart local v17       #view:Landroid/view/View;
    :cond_f
    instance-of v0, v13, Landroid/view/ViewRootImpl;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v13

    .line 4180
    check-cast v18, Landroid/view/ViewRootImpl;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto/16 :goto_4
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 4282
    move-object v3, p0

    .line 4284
    .local v3, parent:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4285
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_2

    .line 4286
    iget v6, p1, Landroid/view/View;->mLayerType:I

    if-eqz v6, :cond_0

    .line 4287
    iget-object v6, p1, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4290
    :cond_0
    iget v1, p1, Landroid/view/View;->mLeft:I

    .line 4291
    .local v1, left:I
    iget v5, p1, Landroid/view/View;->mTop:I

    .line 4292
    .local v5, top:I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4293
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    .line 4297
    :cond_1
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v4, v3

    .line 4298
    check-cast v4, Landroid/view/ViewGroup;

    .line 4299
    .local v4, parentVG:Landroid/view/ViewGroup;
    iget v6, v4, Landroid/view/View;->mLayerType:I

    if-eqz v6, :cond_3

    .line 4301
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 4302
    const/4 v3, 0x0

    .line 4316
    .end local v4           #parentVG:Landroid/view/ViewGroup;
    :goto_0
    if-nez v3, :cond_1

    .line 4318
    .end local v1           #left:I
    .end local v5           #top:I
    :cond_2
    return-void

    .line 4304
    .restart local v1       #left:I
    .restart local v4       #parentVG:Landroid/view/ViewGroup;
    .restart local v5       #top:I
    :cond_3
    invoke-direct {v4, v1, v5, p2}, Landroid/view/ViewGroup;->invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    .line 4305
    iget v1, v4, Landroid/view/View;->mLeft:I

    .line 4306
    iget v5, v4, Landroid/view/View;->mTop:I

    goto :goto_0

    .line 4311
    .end local v4           #parentVG:Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4312
    .local v2, location:[I
    const/4 v6, 0x0

    aput v1, v2, v6

    .line 4313
    const/4 v6, 0x1

    aput v5, v2, v6

    .line 4314
    invoke-interface {v3, v2, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 8
    .parameter "location"
    .parameter "dirty"

    .prologue
    const v4, 0x8000

    const/high16 v7, -0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4223
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 4225
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    .line 4227
    aget v2, p1, v5

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4230
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 4231
    .local v0, left:I
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 4233
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_1

    .line 4234
    iget v2, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4235
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 4238
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4240
    aput v0, p1, v5

    .line 4241
    aput v1, p1, v6

    .line 4243
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_2

    .line 4244
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4245
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4248
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4271
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 4251
    :cond_3
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4253
    iget v2, p0, Landroid/view/View;->mLeft:I

    aput v2, p1, v5

    .line 4254
    iget v2, p0, Landroid/view/View;->mTop:I

    aput v2, p1, v6

    .line 4255
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_5

    .line 4256
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4262
    :goto_1
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_4

    .line 4263
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4264
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4267
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 4259
    :cond_5
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_1

    .line 4271
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4605
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4575
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4672
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 4640
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 2325
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2167
    iget v4, p0, Landroid/view/View;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, p3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 2168
    .local v1, localX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iget v5, p3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 2169
    .local v3, localY:F
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 2170
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 2171
    .local v2, localXY:[F
    aput v1, v2, v6

    .line 2172
    aput v3, v2, v7

    .line 2173
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2174
    aget v1, v2, v6

    .line 2175
    aget v3, v2, v7

    .line 2177
    .end local v2           #localXY:[F
    :cond_0
    invoke-virtual {p3, v1, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 2178
    .local v0, isInView:Z
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 2179
    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2190
    :cond_1
    return v0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5105
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    .line 5275
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5276
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5277
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5278
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5279
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5281
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4490
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4491
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 4492
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 4494
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4499
    :goto_0
    return-void

    .line 4497
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .prologue
    .line 977
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 978
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 979
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 980
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 981
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 980
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 4910
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4912
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4914
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4917
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4918
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 4937
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4939
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4942
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4946
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4947
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 4889
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4890
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4891
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4892
    aget-object v0, v1, v2

    .line 4893
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 4894
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4891
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4897
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 1295
    const/4 v0, 0x0

    .line 1296
    .local v0, canAccept:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1297
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1298
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1299
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1300
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1301
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1304
    :cond_0
    return v0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 4428
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4429
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4431
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4432
    aget-object v3, v0, v2

    .line 4433
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 4434
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 4435
    iget-object v4, v3, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_0

    .line 4436
    iget-object v4, v3, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4, p1}, Landroid/view/DisplayList;->offsetTopBottom(I)V

    .line 4437
    invoke-virtual {p0, v5, v5}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 4431
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4440
    .end local v3           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 4353
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4354
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v5, 0x0

    .line 4374
    if-ne p1, p0, :cond_0

    .line 4418
    :goto_0
    return-void

    .line 4378
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4383
    .local v1, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    if-eq v1, p0, :cond_4

    .line 4385
    if-eqz p3, :cond_2

    .line 4386
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4388
    if-eqz p4, :cond_1

    move-object v0, v1

    .line 4389
    check-cast v0, Landroid/view/View;

    .line 4390
    .local v0, p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .end local v0           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object p1, v1

    .line 4401
    check-cast p1, Landroid/view/View;

    .line 4402
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 4393
    :cond_2
    if-eqz p4, :cond_3

    move-object v0, v1

    .line 4394
    check-cast v0, Landroid/view/View;

    .line 4395
    .restart local v0       #p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4397
    .end local v0           #p:Landroid/view/View;
    :cond_3
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 4407
    :cond_4
    if-ne v1, p0, :cond_6

    .line 4408
    if-eqz p3, :cond_5

    .line 4409
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4412
    :cond_5
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4416
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 4363
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4364
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2743
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2746
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 2747
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2749
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2750
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2753
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2719
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2722
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    .line 2723
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2724
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2725
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 2727
    .local v0, buildCache:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 2728
    aget-object v1, v2, v4

    .line 2729
    .local v1, child:Landroid/view/View;
    iget v6, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 2730
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2731
    if-eqz v0, :cond_0

    .line 2732
    invoke-virtual {v1, v5}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2727
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2725
    .end local v0           #buildCache:Z
    .end local v1           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2737
    .restart local v0       #buildCache:Z
    .restart local v4       #i:I
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2739
    .end local v0           #buildCache:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_3
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .parameter "child"
    .parameter "oldVisibility"
    .parameter "newVisibility"

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 1009
    if-nez p3, :cond_2

    .line 1010
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1026
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_1

    .line 1027
    if-nez p3, :cond_1

    .line 1028
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 1031
    :cond_1
    return-void

    .line 1012
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1013
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1019
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 5285
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_1

    .line 5286
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5309
    :cond_0
    return-object v4

    .line 5289
    :cond_1
    const/4 v3, 0x0

    .line 5290
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5291
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 5292
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5294
    .local v0, childState:[I
    if-eqz v0, :cond_2

    .line 5295
    array-length v5, v0

    add-int/2addr v3, v5

    .line 5291
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5299
    .end local v0           #childState:[I
    :cond_3
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5301
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 5302
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5304
    .restart local v0       #childState:[I
    if-eqz v0, :cond_4

    .line 5305
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 5301
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 2804
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2805
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 2806
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2807
    .local v6, c:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    .line 2808
    .local v8, insets:Landroid/graphics/Insets;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v8, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, v8, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, v8, Landroid/graphics/Insets;->right:I

    sub-int v3, v0, v3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, v8, Landroid/graphics/Insets;->bottom:I

    sub-int v4, v0, v4

    const/high16 v5, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    .line 2805
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2817
    .end local v6           #c:Landroid/view/View;
    .end local v7           #i:I
    .end local v8           #insets:Landroid/graphics/Insets;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;)V

    .line 2820
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 2821
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2822
    .restart local v6       #c:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    const v5, -0xffff01

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    .line 2820
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2824
    .end local v6           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 2793
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2794
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2795
    .local v0, c:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 2793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2797
    .end local v0           #c:Landroid/view/View;
    :cond_0
    return-void
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2575
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2576
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2577
    return-void
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 2559
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2560
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_1

    .line 2561
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v4, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 2562
    .local v1, childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2563
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 2564
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2565
    .local v2, childrenForAccessibilityCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2566
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2567
    .local v0, child:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 2565
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2569
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2571
    .end local v1           #childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2           #childrenForAccessibilityCount:I
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1720
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2388
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2448
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2449
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2450
    const/4 v6, 0x0

    .line 2451
    .local v6, index:I
    const/4 v5, 0x1

    .line 2452
    .local v5, increment:I
    move v3, v2

    .line 2458
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2459
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2460
    aget-object v0, v1, v4

    .line 2461
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 2462
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2463
    const/4 v7, 0x1

    .line 2467
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 2454
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 2455
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2456
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 2459
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 2467
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 698
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 701
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "layoutParams"

    .prologue
    .line 5585
    return-void
.end method

.method protected onSmartRoll(ZZ)Z
    .locals 12
    .parameter "newSmartRoll"
    .parameter "isTestOnly"

    .prologue
    const/4 v9, 0x0

    .line 6545
    iget-boolean v10, p0, Landroid/view/View;->mIsViewSmartRolled:Z

    if-ne v10, p1, :cond_0

    move v5, v9

    .line 6605
    :goto_0
    return v5

    .line 6549
    :cond_0
    if-nez p2, :cond_1

    .line 6550
    iput-boolean p1, p0, Landroid/view/View;->mIsViewSmartRolled:Z

    .line 6553
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6554
    .local v3, childrenCount:I
    const/4 v5, 0x0

    .line 6555
    .local v5, isAnyViewChanged:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 6557
    .local v8, width:I
    if-lez v3, :cond_3

    invoke-direct {p0}, Landroid/view/ViewGroup;->getScreenWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-lt v8, v10, :cond_3

    iget-boolean v10, p0, Landroid/view/View;->mIsChildrenClickable:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Landroid/view/View;->mIsParentClickable:Z

    if-eqz v10, :cond_3

    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->checkIfChildrenOverlap(Z)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->checkIfAnyChildrenXOutside(Z)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    move v5, v9

    .line 6563
    goto :goto_0

    .line 6566
    :cond_4
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6568
    .local v2, children:[Landroid/view/View;
    add-int/lit8 v4, v3, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_7

    .line 6569
    aget-object v0, v2, v4

    .line 6573
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mLeft:I

    .line 6574
    .local v6, left:I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 6577
    .local v1, childWidth:I
    sub-int v9, v8, v1

    sub-int/2addr v9, v6

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v10, v11

    sub-int v7, v9, v10

    .line 6580
    .local v7, newLeft:I
    if-eq v6, v7, :cond_6

    .line 6582
    if-nez p2, :cond_5

    .line 6583
    sub-int v9, v7, v6

    invoke-virtual {v0, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 6588
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 6589
    const/4 v5, 0x1

    .line 6568
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 6602
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    .end local v6           #left:I
    .end local v7           #newLeft:I
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3391
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3392
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3394
    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3400
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3401
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3403
    :cond_0
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1076
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_0

    .line 1077
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1078
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1080
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 3851
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 3852
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3853
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3854
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 3870
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3871
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 3922
    :cond_0
    :goto_0
    return-void

    .line 3875
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3876
    .local v0, children:[Landroid/view/View;
    iput v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3878
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3879
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_7

    const/4 v3, 0x1

    .line 3880
    .local v3, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 3882
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3884
    add-int/lit8 v5, v2, -0x1

    .local v5, i:I
    :goto_2
    if-ltz v5, :cond_9

    .line 3885
    aget-object v6, v0, v5

    .line 3887
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    .line 3888
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3891
    :cond_2
    if-ne v6, v4, :cond_3

    .line 3892
    invoke-virtual {v6}, Landroid/view/View;->unFocus()V

    .line 3893
    move-object v1, v6

    .line 3896
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3898
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3899
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3901
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3903
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3908
    :cond_5
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3909
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3912
    :cond_6
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3914
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3915
    aput-object v9, v0, v5

    .line 3884
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_7
    move v3, v7

    .line 3879
    goto :goto_1

    .line 3904
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_8
    if-eqz v3, :cond_5

    .line 3905
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 3918
    .end local v6           #view:Landroid/view/View;
    :cond_9
    if-eqz v1, :cond_0

    .line 3919
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3920
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 3945
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3946
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3949
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 3950
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 3953
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3955
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3956
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3958
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3960
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3965
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3969
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3970
    return-void

    .line 3961
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    .line 3962
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3644
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3645
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3647
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3688
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3691
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3660
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3661
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3704
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3706
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3707
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3675
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3676
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 592
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 593
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 597
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 599
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 2333
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 2348
    :cond_0
    :goto_1
    return-void

    .line 2333
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2338
    :cond_2
    if-eqz p1, :cond_3

    .line 2339
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2345
    :goto_2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 2341
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2413
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 2425
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2415
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2422
    :cond_0
    :goto_0
    return v1

    .line 2417
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2418
    .local v1, took:Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2421
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2422
    .restart local v1       #took:Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2413
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 671
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v2

    .line 674
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 675
    .local v1, propagate:Z
    if-eqz v1, :cond_0

    .line 678
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 5372
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5373
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5374
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 5376
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5216
    if-eqz p1, :cond_0

    .line 5217
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5218
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 5219
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 5222
    :cond_0
    return-void
.end method

.method public resetAccessibilityStateChanged()V
    .locals 4

    .prologue
    .line 2584
    invoke-super {p0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 2585
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2586
    .local v2, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2587
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2588
    aget-object v0, v2, v3

    .line 2589
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 2587
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2591
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    .prologue
    .line 5559
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 5561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5562
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5563
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5564
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5565
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 5562
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5568
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    .prologue
    .line 5495
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5497
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5498
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5499
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5500
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5501
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5498
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5504
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    .prologue
    .line 5543
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 5545
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5546
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5547
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5548
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5549
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    .line 5546
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5552
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    .prologue
    .line 5527
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 5529
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5530
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5531
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5532
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5533
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 5530
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5536
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    .prologue
    .line 5511
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5513
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5514
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5515
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5516
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5517
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5514
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5520
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    .prologue
    .line 5467
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 5468
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5469
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5470
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5471
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5472
    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    .line 5469
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5475
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .prologue
    .line 5398
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v3

    .line 5399
    .local v3, result:Z
    if-eqz v3, :cond_1

    .line 5400
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5401
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5402
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5403
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5404
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 5401
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5408
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return v3
.end method

.method public resolveLayoutParams()V
    .locals 3

    .prologue
    .line 5482
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 5483
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5484
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5485
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5486
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    .line 5484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5488
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    .prologue
    .line 5452
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 5453
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5454
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5455
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5456
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5457
    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    .line 5454
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5460
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()V
    .locals 4

    .prologue
    .line 5383
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()V

    .line 5384
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5385
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5386
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5387
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5388
    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()V

    .line 5385
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5391
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveTextAlignment()Z
    .locals 5

    .prologue
    .line 5434
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v3

    .line 5435
    .local v3, result:Z
    if-eqz v3, :cond_1

    .line 5436
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5437
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5438
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5439
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5440
    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 5437
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5444
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return v3
.end method

.method public resolveTextDirection()Z
    .locals 5

    .prologue
    .line 5416
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v3

    .line 5417
    .local v3, result:Z
    if-eqz v3, :cond_1

    .line 5418
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5419
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5420
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5421
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5422
    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    .line 5419
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5426
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return v3
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 4536
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4537
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 5319
    if-eqz p1, :cond_0

    .line 5320
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5325
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5326
    return-void

    .line 5322
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 4626
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4627
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4590
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4591
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 2708
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 2709
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2710
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2711
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2712
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2711
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2715
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4686
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4687
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4657
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4658
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .parameter "clipChildren"

    .prologue
    const/4 v3, 0x1

    .line 3048
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 3049
    .local v2, previousValue:Z
    :goto_0
    if-eq p1, v2, :cond_2

    .line 3050
    invoke-direct {p0, v3, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3051
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v3, :cond_2

    .line 3052
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3053
    .local v0, child:Landroid/view/View;
    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_0

    .line 3054
    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v3, p1}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 3051
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3048
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #previousValue:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3058
    .restart local v2       #previousValue:Z
    :cond_2
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 3069
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3070
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 552
    sparse-switch p1, :sswitch_data_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 562
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 563
    return-void

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 4546
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4547
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4548
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4550
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 5359
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5360
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .parameter "layoutMode"

    .prologue
    .line 4759
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_0

    .line 4760
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 4761
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4763
    :cond_0
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2
    .parameter "transition"

    .prologue
    .line 3771
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3772
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3774
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 3775
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 3776
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3778
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 2313
    if-eqz p1, :cond_0

    .line 2314
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2318
    :goto_0
    return-void

    .line 2316
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3384
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3385
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 4729
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4730
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3126
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3127
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 5580
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 628
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 635
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 4523
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4524
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4525
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4527
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 5121
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 5122
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5125
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5127
    :cond_1
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 795
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 800
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 1333
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1335
    .local v0, changed:Z
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1336
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1337
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1338
    aget-object v1, v2, v4

    .line 1339
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1337
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1341
    .end local v1           #child:Landroid/view/View;
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3338
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3341
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 3342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3344
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3345
    return-void
.end method
