.class Landroid/preference/PreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mIdeaUI_preference_background_bottom:I

.field private mIdeaUI_preference_background_middle:I

.field private mIdeaUI_preference_background_single:I

.field private mIdeaUI_preference_background_top:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 271
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const v1, 0x301000f

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 281
    .local v0, res_id:I
    iput v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_top:I

    .line 283
    const v1, 0x3010010

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 285
    iput v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_middle:I

    .line 287
    const v1, 0x3010011

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 289
    iput v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_bottom:I

    .line 291
    const v1, 0x3010012

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 293
    iput v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_single:I

    .line 296
    .end local v0           #res_id:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 303
    if-nez p2, :cond_1

    .line 304
    iget-object v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, #android:layout@preference_header_item#t

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 306
    .local v3, view:Landroid/view/View;
    new-instance v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Landroid/preference/PreferenceActivity$1;)V

    .line 307
    .local v1, holder:Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v4, #android:id@icon#t

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 308
    const v4, #android:id@title#t

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 309
    const v4, #android:id@summary#t

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 310
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 317
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 318
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 321
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 322
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    if-nez p1, :cond_4

    .line 331
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    .line 332
    iget v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_single:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 346
    :cond_0
    :goto_2
    return-object v3

    .line 312
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #holder:Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v2           #summary:Ljava/lang/CharSequence;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p2

    .line 313
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v1       #holder:Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 325
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 334
    :cond_3
    iget v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_top:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 337
    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_5

    .line 338
    iget v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_bottom:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 340
    :cond_5
    iget v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIdeaUI_preference_background_middle:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method
