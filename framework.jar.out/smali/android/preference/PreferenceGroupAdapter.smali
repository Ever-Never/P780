.class public Landroid/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private hasJudget:Z

.field private isLightPreference:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mIdeaUI_IsFirstItemCategory:Z

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

.field private summarycolor:Landroid/content/res/ColorStateList;

.field private titlecolor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter "preferenceGroup"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->hasJudget:Z

    .line 76
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->isLightPreference:Z

    .line 77
    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->titlecolor:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->summarycolor:Landroid/content/res/ColorStateList;

    .line 81
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    .line 105
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0, v2}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$1;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 110
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 112
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter$1;-><init>(Landroid/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 148
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 153
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 154
    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Landroid/preference/Preference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 281
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 282
    .local v1, pl:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 285
    .local v0, insertPos:I
    if-gez v0, :cond_0

    .line 287
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 288
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 290
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .parameter "preference"
    .parameter "in"

    .prologue
    .line 273
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 274
    .local v0, pl:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v1

    #setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 276
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    #setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$402(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 277
    return-object v0

    .line 273
    .end local v0           #pl:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 10
    .parameter
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, preferences:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 179
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->sortPreferences()V

    .line 181
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 182
    .local v0, groupSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 183
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 185
    .local v5, preference:Landroid/preference/Preference;
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-boolean v7, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/preference/Preference;->hasSpecifiedLayout()Z

    move-result v7

    if-nez v7, :cond_0

    .line 188
    invoke-direct {p0, v5}, Landroid/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/preference/Preference;)V

    .line 191
    :cond_0
    instance-of v7, v5, Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_1

    move-object v6, v5

    .line 192
    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 193
    .local v6, preferenceAsGroup:Landroid/preference/PreferenceGroup;
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 194
    invoke-direct {p0, p1, v6}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 198
    .end local v6           #preferenceAsGroup:Landroid/preference/PreferenceGroup;
    :cond_1
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v5           #preference:Landroid/preference/Preference;
    :cond_2
    if-ne v0, v8, :cond_4

    .line 203
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 205
    .restart local v5       #preference:Landroid/preference/Preference;
    invoke-virtual {v5, v8, v8}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 255
    .end local v5           #preference:Landroid/preference/Preference;
    :cond_3
    :goto_1
    return-void

    .line 206
    :cond_4
    if-le v0, v8, :cond_3

    .line 207
    const/4 v3, 0x1

    .line 208
    .local v3, isAtCategoryTop:Z
    const/4 v2, 0x0

    .line 209
    .local v2, isAtCategoryBottom:Z
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 211
    .local v4, lastPreference:Landroid/preference/Preference;
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_7

    .line 212
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 214
    .restart local v5       #preference:Landroid/preference/Preference;
    instance-of v7, v5, Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_5

    .line 215
    const/4 v2, 0x1

    .line 218
    invoke-virtual {v4, v3, v2}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 220
    const/4 v3, 0x1

    .line 221
    const/4 v2, 0x0

    .line 235
    :goto_3
    move-object v4, v5

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    :cond_5
    const/4 v2, 0x0

    .line 226
    invoke-virtual {v4, v3, v2}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 228
    instance-of v7, v4, Landroid/preference/PreferenceCategory;

    if-nez v7, :cond_6

    .line 229
    const/4 v3, 0x0

    .line 231
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 239
    .end local v5           #preference:Landroid/preference/Preference;
    :cond_7
    const/4 v2, 0x1

    .line 240
    invoke-virtual {v4, v3, v2}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 243
    if-lt v0, v8, :cond_3

    .line 244
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 246
    .restart local v5       #preference:Landroid/preference/Preference;
    instance-of v7, v5, Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_8

    .line 247
    iput-boolean v8, p0, Landroid/preference/PreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    goto :goto_1

    .line 249
    :cond_8
    iput-boolean v9, p0, Landroid/preference/PreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    goto :goto_1
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 159
    monitor-exit p0

    .line 175
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v0, newPreferenceList:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 167
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 169
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 171
    monitor-enter p0

    .line 172
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 163
    .end local v0           #newPreferenceList:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public IdeaUI_IsFirstItemCategory()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    return v0
.end method

.method SearchTextView(Landroid/view/View;Landroid/widget/TextView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "v"
    .parameter "title"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p3, summarys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .local p4, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RadioButton;>;"
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 480
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 482
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    move-object v4, p1

    .line 483
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 484
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/preference/PreferenceGroupAdapter;->SearchTextView(Landroid/view/View;Landroid/widget/TextView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v0           #N:I
    .end local v1           #child:Landroid/view/View;
    .end local v2           #i:I
    :cond_0
    instance-of v4, p1, Landroid/widget/RadioButton;

    if-eqz v4, :cond_2

    .line 487
    check-cast p1, Landroid/widget/RadioButton;

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_1
    :goto_1
    return-void

    .line 488
    .restart local p1
    :cond_2
    instance-of v4, p1, Landroid/widget/Button;

    if-nez v4, :cond_1

    .line 490
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 491
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 492
    .local v3, value:Ljava/lang/CharSequence;
    if-nez p2, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    move-object p2, p1

    .line 493
    check-cast p2, Landroid/widget/TextView;

    goto :goto_1

    .line 494
    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 495
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/preference/Preference;
    .locals 1
    .parameter "position"

    .prologue
    .line 297
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 302
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    .line 303
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 366
    iget-boolean v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_0

    .line 367
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 371
    .local v0, preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/Preference;->hasSpecifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 383
    :cond_1
    :goto_0
    return v1

    .line 375
    :cond_2
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 377
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 378
    .local v1, viewType:I
    if-gez v1, :cond_1

    move v1, v2

    .line 381
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 309
    .local v0, preference:Landroid/preference/Preference;
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 313
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 314
    const/4 p2, 0x0

    .line 321
    :cond_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->isCts()Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 333
    .local v1, retv:Landroid/view/View;
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 389
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 390
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 339
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method isLightPreference(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 397
    iget-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->hasJudget:Z

    if-nez v2, :cond_3

    .line 398
    if-eqz p1, :cond_3

    .line 399
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 400
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 401
    .local v0, currentTheme:Landroid/content/res/Resources$Theme;
    const v2, #android:attr@textColorPrimary#t

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 402
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    const v3, #android:color@primary_text_light#t

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    const v3, #android:color@primary_text_holo_light#t

    if-ne v2, v3, :cond_1

    .line 404
    :cond_0
    iput-boolean v4, p0, Landroid/preference/PreferenceGroupAdapter;->isLightPreference:Z

    .line 406
    :cond_1
    const-string v2, "com.lenovo.powersaving"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->isLightPreference:Z

    .line 409
    :cond_2
    iput-boolean v4, p0, Landroid/preference/PreferenceGroupAdapter;->hasJudget:Z

    .line 412
    .end local v0           #currentTheme:Landroid/content/res/Resources$Theme;
    .end local v1           #outValue:Landroid/util/TypedValue;
    :cond_3
    iget-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->isLightPreference:Z

    return v2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 352
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 355
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method setTextColor(Landroid/preference/Preference;Landroid/view/View;)V
    .locals 13
    .parameter "pref"
    .parameter "v"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 418
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceGroupAdapter;->isLightPreference(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 419
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getThemePreferenceTextColor(Landroid/content/Context;Z)[Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 420
    .local v2, colors:[Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    array-length v8, v2

    if-le v8, v12, :cond_1

    .line 421
    aget-object v8, v2, v12

    iput-object v8, p0, Landroid/preference/PreferenceGroupAdapter;->summarycolor:Landroid/content/res/ColorStateList;

    .line 425
    :goto_0
    instance-of v4, p1, Landroid/preference/PreferenceCategory;

    .line 426
    .local v4, isCategory:Z
    if-eqz p2, :cond_0

    if-nez v4, :cond_2

    instance-of v8, p2, Landroid/view/ViewGroup;

    if-nez v8, :cond_2

    .line 475
    .end local v2           #colors:[Landroid/content/res/ColorStateList;
    .end local v4           #isCategory:Z
    :cond_0
    return-void

    .line 423
    .restart local v2       #colors:[Landroid/content/res/ColorStateList;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:color@secondary_text_holo_light#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Landroid/preference/PreferenceGroupAdapter;->summarycolor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 430
    .restart local v4       #isCategory:Z
    :cond_2
    const/4 v7, 0x0

    .line 431
    .local v7, title:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 432
    .local v5, summary:Landroid/widget/TextView;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .local v6, summarys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .local v1, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RadioButton;>;"
    const v8, #android:id@title#t

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #title:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 436
    .restart local v7       #title:Landroid/widget/TextView;
    const v8, #android:id@summary#t

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #summary:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 437
    .restart local v5       #summary:Landroid/widget/TextView;
    if-eqz v5, :cond_3

    .line 438
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_3
    if-eqz v4, :cond_7

    if-eqz v7, :cond_7

    .line 450
    :cond_4
    :goto_1
    iget-object v8, p0, Landroid/preference/PreferenceGroupAdapter;->titlecolor:Landroid/content/res/ColorStateList;

    if-nez v8, :cond_5

    .line 451
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x306001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Landroid/preference/PreferenceGroupAdapter;->titlecolor:Landroid/content/res/ColorStateList;

    .line 455
    :cond_5
    if-eqz v4, :cond_9

    .line 461
    :cond_6
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 462
    .local v0, N:I
    if-lez v0, :cond_0

    iget-object v8, p0, Landroid/preference/PreferenceGroupAdapter;->summarycolor:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_0

    .line 463
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v0, :cond_0

    .line 464
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Landroid/preference/PreferenceGroupAdapter;->summarycolor:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 442
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_7
    if-nez v4, :cond_8

    if-eqz v7, :cond_8

    if-nez v5, :cond_4

    .line 445
    :cond_8
    if-nez v5, :cond_4

    .line 446
    invoke-virtual {p0, p2, v7, v6, v1}, Landroid/preference/PreferenceGroupAdapter;->SearchTextView(Landroid/view/View;Landroid/widget/TextView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 457
    :cond_9
    iget-object v8, p0, Landroid/preference/PreferenceGroupAdapter;->titlecolor:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    .line 458
    iget-object v8, p0, Landroid/preference/PreferenceGroupAdapter;->titlecolor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method
