.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
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
    .line 451
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v9, p2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1

    move-object v8, p2

    .line 452
    check-cast v8, Landroid/view/ViewGroup;

    .line 456
    .local v8, vg:Landroid/view/ViewGroup;
    instance-of v9, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v9, :cond_0

    .line 457
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #vg:Landroid/view/ViewGroup;
    check-cast v8, Landroid/view/ViewGroup;

    .line 459
    .restart local v8       #vg:Landroid/view/ViewGroup;
    :cond_0
    if-nez v8, :cond_2

    .line 487
    .end local v8           #vg:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 461
    .restart local v8       #vg:Landroid/view/ViewGroup;
    :cond_2
    const/4 v2, 0x0

    .line 462
    .local v2, fillInIntent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 463
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 464
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, #android:id@fillInIntent#t

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 465
    .local v7, tag:Ljava/lang/Object;
    instance-of v9, v7, Landroid/content/Intent;

    if-eqz v9, :cond_4

    move-object v2, v7

    .line 466
    check-cast v2, Landroid/content/Intent;

    .line 470
    .end local v7           #tag:Ljava/lang/Object;
    :cond_3
    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 474
    .local v0, appScale:F
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 475
    .local v5, pos:[I
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 477
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 478
    .local v6, rect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 479
    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 480
    const/4 v9, 0x0

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 481
    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 483
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 484
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 485
    iget-object v9, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v10, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v10, v10, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v9, p2, v10, v2}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_0

    .line 463
    .end local v0           #appScale:F
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #pos:[I
    .end local v6           #rect:Landroid/graphics/Rect;
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
