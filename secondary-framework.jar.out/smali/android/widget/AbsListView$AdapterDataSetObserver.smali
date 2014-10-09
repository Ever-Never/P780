.class Landroid/widget/AbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 6495
    iput-object p1, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsListView$AdapterDataSetObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6495
    invoke-direct {p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->changed()V

    return-void
.end method

.method private changed()V
    .locals 1

    .prologue
    .line 6501
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 6502
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6503
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 6505
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 23

    .prologue
    .line 6515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNotAnim:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 6516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mCurrentAllItemsId:Ljava/util/ArrayList;

    .line 6518
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mRemoveItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mRemoveItemsId:Ljava/util/ArrayList;

    .line 6520
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 6523
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 6525
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    .line 6526
    .local v11, first:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6528
    .local v5, chilCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    if-ge v14, v8, :cond_3

    .line 6529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6528
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 6517
    .end local v5           #chilCount:I
    .end local v8           #count:I
    .end local v11           #first:I
    .end local v14           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 6519
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mRemoveItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 6521
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 6531
    .restart local v5       #chilCount:I
    .restart local v8       #count:I
    .restart local v11       #first:I
    .restart local v14       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 6532
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v8, :cond_5

    .line 6533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 6534
    .local v15, index:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_4

    if-lt v14, v11, :cond_4

    add-int v19, v11, v5

    move/from16 v0, v19

    if-gt v14, v0, :cond_4

    .line 6535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mRemoveItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    sub-int v20, v14, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6532
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 6540
    .end local v15           #index:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/AbsListView;->mDelItemsCount:I

    .line 6543
    .end local v5           #chilCount:I
    .end local v8           #count:I
    .end local v11           #first:I
    .end local v14           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 6544
    .local v7, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNotAnim:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    invoke-virtual {v7}, Landroid/content/Context;->isCts()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v7}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_a

    .line 6545
    :cond_7
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 6546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static/range {v19 .. v19}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 6547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static/range {v19 .. v19}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 6549
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNotAnim:Z

    move/from16 v19, v0

    if-nez v19, :cond_17

    invoke-virtual {v7}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_17

    .line 6550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 6551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    .line 6553
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 6554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 6555
    .restart local v8       #count:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_5
    if-ge v14, v8, :cond_17

    .line 6556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6555
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 6561
    .end local v8           #count:I
    .end local v14           #i:I
    :cond_a
    new-instance v9, Landroid/view/animation/RotateXAnimation;

    const/16 v19, 0x0

    const/high16 v20, -0x3d4c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/view/animation/RotateXAnimation;-><init>(FFFF)V

    .line 6562
    .local v9, delAnimation:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView;->mDelAnimTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v12

    .line 6564
    .local v12, firstIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 6565
    .restart local v8       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 6566
    .local v6, childCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6567
    .local v4, arraysSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveitemsOldCoord:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_d

    .line 6568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mTransMoveitemsOldCoord:Ljava/util/ArrayList;

    .line 6572
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 6573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 6577
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsCoords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 6578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsCoords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 6582
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 6583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 6588
    :goto_9
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_a
    if-ge v14, v4, :cond_14

    .line 6589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 6590
    .restart local v15       #index:I
    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 6591
    .local v10, end:I
    :goto_b
    if-le v10, v8, :cond_b

    move v10, v8

    .line 6592
    :cond_b
    add-int/lit8 v18, v15, 0x1

    .line 6593
    .local v18, start:I
    move/from16 v17, v18

    .local v17, j:I
    :goto_c
    move/from16 v0, v17

    if-ge v0, v10, :cond_12

    .line 6594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6595
    .local v16, item:Landroid/view/View;
    if-eqz v16, :cond_c

    .line 6596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int v21, v12, v17

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveitemsOldCoord:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6593
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 6570
    .end local v10           #end:I
    .end local v14           #i:I
    .end local v15           #index:I
    .end local v16           #item:Landroid/view/View;
    .end local v17           #j:I
    .end local v18           #start:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveitemsOldCoord:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 6575
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mTransMoveItemsIndex:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 6580
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mTransMoveItemsCoords:Ljava/util/ArrayList;

    goto/16 :goto_8

    .line 6585
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/widget/AbsListView;->mTransMoveItemsId:Ljava/util/ArrayList;

    goto/16 :goto_9

    .line 6590
    .restart local v14       #i:I
    .restart local v15       #index:I
    :cond_11
    add-int v19, v6, v14

    add-int/lit8 v10, v19, 0x2

    goto/16 :goto_b

    .line 6601
    .restart local v10       #end:I
    .restart local v17       #j:I
    .restart local v18       #start:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6602
    .restart local v16       #item:Landroid/view/View;
    if-eqz v16, :cond_13

    .line 6603
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6588
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 6606
    .end local v10           #end:I
    .end local v15           #index:I
    .end local v16           #item:Landroid/view/View;
    .end local v17           #j:I
    .end local v18           #start:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 6607
    .local v13, firstRemoveItem:I
    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_16

    .line 6608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6609
    .restart local v16       #item:Landroid/view/View;
    if-eqz v16, :cond_15

    .line 6610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveItemsId:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int v21, v12, v14

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mTransMoveitemsOldCoord:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6607
    :cond_15
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 6616
    .end local v16           #item:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AbsListView;->mCurrentRemoveItemsIndex:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 6617
    new-instance v19, Landroid/widget/AbsListView$AdapterDataSetObserver$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$AdapterDataSetObserver$1;-><init>(Landroid/widget/AbsListView$AdapterDataSetObserver;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6647
    .end local v4           #arraysSize:I
    .end local v6           #childCount:I
    .end local v8           #count:I
    .end local v9           #delAnimation:Landroid/view/animation/Animation;
    .end local v12           #firstIndex:I
    .end local v13           #firstRemoveItem:I
    .end local v14           #i:I
    :cond_17
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 6651
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 6652
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6653
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 6655
    :cond_0
    return-void
.end method
