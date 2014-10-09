.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private final mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "checkedItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2856
    .local p3, itemsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2857
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 2858
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 2859
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 2860
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2863
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->c:Landroid/content/Context;

    .line 2865
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2869
    if-eqz p2, :cond_1

    move-object v8, p2

    .line 2871
    .local v8, view:Landroid/view/View;
    :goto_0
    if-ltz p1, :cond_0

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt p1, v9, :cond_2

    .line 2895
    :cond_0
    :goto_1
    return-object v8

    .line 2869
    .end local v8           #view:Landroid/view/View;
    :cond_1
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_0

    .line 2872
    .restart local v8       #view:Landroid/view/View;
    :cond_2
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 2873
    .local v2, item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v1, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 2874
    .local v1, imeName:Ljava/lang/CharSequence;
    iget-object v6, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 2875
    .local v6, subtypeName:Ljava/lang/CharSequence;
    const v9, #android:id@text1#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2876
    .local v0, firstTextView:Landroid/widget/TextView;
    const v9, #android:id@text2#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2877
    .local v5, secondTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2878
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2879
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2892
    :goto_2
    const v9, #android:id@radio#t

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 2894
    .local v3, radioButton:Landroid/widget/RadioButton;
    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v9, :cond_4

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 2881
    .end local v3           #radioButton:Landroid/widget/RadioButton;
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2882
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2885
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2886
    .local v4, res:Landroid/content/res/Resources;
    const v9, #android:color@background_dark#t

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 2887
    .local v7, textColor:I
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2888
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2890
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2894
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v7           #textColor:I
    .restart local v3       #radioButton:Landroid/widget/RadioButton;
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method
