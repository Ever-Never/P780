.class Landroid/widget/AbsListView$AdapterDataSetObserver$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$AdapterDataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 6617
    iput-object p1, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 6628
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    iput-boolean v3, v2, Landroid/widget/AbsListView;->mNeedDrawChange:Z

    .line 6629
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #calls: Landroid/widget/AbsListView$AdapterDataSetObserver;->changed()V
    invoke-static {v2}, Landroid/widget/AbsListView$AdapterDataSetObserver;->access$5200(Landroid/widget/AbsListView$AdapterDataSetObserver;)V

    .line 6630
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setEnabled(Z)V

    .line 6631
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 6632
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 6633
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    .line 6635
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6636
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 6637
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6638
    iget-object v2, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v2, v2, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mAllItemsId:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v3, v3, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6637
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6641
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 6624
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 6620
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver$1;->this$1:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v0, v0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setEnabled(Z)V

    .line 6621
    return-void
.end method
