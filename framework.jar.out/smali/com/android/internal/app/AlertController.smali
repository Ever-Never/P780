.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 106
    iput v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 122
    iput v2, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 132
    new-instance v2, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 186
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 188
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 189
    new-instance v2, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v2, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 191
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v4, #android:attr@alertDialogStyle#t

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, #android:layout@alert_dialog#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 197
    const/16 v2, 0xb

    const v3, #android:layout@select_dialog#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 200
    const/16 v2, 0xc

    const v3, #android:layout@select_dialog_multichoice#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 203
    const/16 v2, 0xd

    const v3, #android:layout@select_dialog_singlechoice#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 206
    const/16 v2, 0xe

    const v3, #android:layout@select_dialog_item#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

  


  

    iget v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    const v3, #android:layout@alert_dialog_holo#t

    if-ne v2, v3, :cond_0

    .line 212
    const v2, #android:layout@lenovo_alert_dialog_holo#t

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 216
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    :goto_0
    return v2

    .line 224
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 225
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 228
    check-cast v1, Landroid/view/ViewGroup;

    .line 229
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 230
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 231
    add-int/lit8 v0, v0, -0x1

    .line 232
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 233
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 238
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 656
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 657
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 658
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 659
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #android:id@leftSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 661
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #android:id@rightSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 665
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 666
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 668
    :cond_1
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 29
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 675
    const/16 v26, 0x0

    const v27, #android:drawable@popup_full_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 677
    .local v11, fullDark:I
    const/16 v26, 0x1

    const v27, #android:drawable@popup_top_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    .line 679
    .local v23, topDark:I
    const/16 v26, 0x2

    const v27, #android:drawable@popup_center_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 681
    .local v8, centerDark:I
    const/16 v26, 0x3

    const v27, #android:drawable@popup_bottom_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 683
    .local v5, bottomDark:I
    const/16 v26, 0x4

    const v27, #android:drawable@popup_full_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 685
    .local v10, fullBright:I
    const/16 v26, 0x5

    const v27, #android:drawable@popup_top_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    .line 687
    .local v22, topBright:I
    const/16 v26, 0x6

    const v27, #android:drawable@popup_center_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 689
    .local v7, centerBright:I
    const/16 v26, 0x7

    const v27, #android:drawable@popup_bottom_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 691
    .local v4, bottomBright:I
    const/16 v26, 0x8

    const v27, #android:drawable@popup_bottom_medium#t

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 695
    .local v6, bottomMedium:I
    const/4 v14, 0x1

    .line 696
    .local v14, islight:Z
    const/4 v13, 0x1

    .line 697
    .local v13, isDefault:Z
    const v26, #android:drawable@dialog_top_holo_dark#t

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 698
    const/4 v14, 0x0

    .line 699
    const/4 v13, 0x0

    .line 704
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 705
    .local v3, bUse_control_theme:Z
    const/16 v18, 0x0

    .line 706
    .local v18, nButtonPanel_background_res:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->isCts()Z

    move-result v26

    if-nez v26, :cond_4

    invoke-static {}, Landroid/content/Context;->supportNonIdeaUITheme()Z

    move-result v26

    if-eqz v26, :cond_4

    if-nez v13, :cond_4

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Landroid/content/res/Resources;->getThemeDialogBackground(Landroid/content/Context;Z)[I

    move-result-object v20

    .line 708
    .local v20, res:[I
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_4

    .line 709
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_4

    .line 710
    aget v26, v20, v12

    if-gtz v26, :cond_3

    .line 709
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 700
    .end local v3           #bUse_control_theme:Z
    .end local v12           #i:I
    .end local v18           #nButtonPanel_background_res:I
    .end local v20           #res:[I
    :cond_2
    const v26, #android:drawable@dialog_top_holo_light#t

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 701
    const/4 v14, 0x1

    .line 702
    const/4 v13, 0x0

    goto :goto_0

    .line 712
    .restart local v3       #bUse_control_theme:Z
    .restart local v12       #i:I
    .restart local v18       #nButtonPanel_background_res:I
    .restart local v20       #res:[I
    :cond_3
    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 714
    :pswitch_0
    aget v23, v20, v12

    .line 715
    aget v22, v20, v12

    .line 716
    const/4 v3, 0x1

    .line 718
    goto :goto_2

    .line 720
    :pswitch_1
    aget v8, v20, v12

    .line 721
    aget v7, v20, v12

    .line 722
    const/4 v3, 0x1

    .line 724
    goto :goto_2

    .line 726
    :pswitch_2
    aget v5, v20, v12

    .line 727
    aget v4, v20, v12

    .line 728
    const/4 v3, 0x1

    .line 730
    goto :goto_2

    .line 732
    :pswitch_3
    aget v11, v20, v12

    .line 733
    aget v10, v20, v12

    .line 734
    const/4 v3, 0x1

    .line 736
    goto :goto_2

    .line 738
    :pswitch_4
    if-eqz v3, :cond_1

    .line 739
    aget v18, v20, v12

    goto :goto_2

    .line 749
    .end local v12           #i:I
    .end local v20           #res:[I
    :cond_4
    if-eqz v3, :cond_6

    .line 750
    const/4 v9, 0x0

    .line 751
    .local v9, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 752
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, #android:id@titleDivider#t

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 757
    :goto_3
    if-eqz v9, :cond_6

    .line 758
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    .end local v9           #divider:Landroid/view/View;
    :cond_6
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v25, v0

    .line 773
    .local v25, views:[Landroid/view/View;
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 774
    .local v17, light:[Z
    const/16 v16, 0x0

    .line 775
    .local v16, lastView:Landroid/view/View;
    const/4 v15, 0x0

    .line 777
    .local v15, lastLight:Z
    const/16 v19, 0x0

    .line 778
    .local v19, pos:I
    if-eqz p6, :cond_7

    .line 779
    aput-object p1, v25, v19

    .line 780
    const/16 v26, 0x0

    aput-boolean v26, v17, v19

    .line 781
    add-int/lit8 v19, v19, 0x1

    .line 789
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    const/16 v26, 0x0

    :goto_4
    aput-object v26, v25, v19

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    const/16 v26, 0x1

    :goto_5
    aput-boolean v26, v17, v19

    .line 792
    add-int/lit8 v19, v19, 0x1

    .line 793
    if-eqz p3, :cond_8

    .line 794
    aput-object p3, v25, v19

    .line 795
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v26, v0

    aput-boolean v26, v17, v19

    .line 796
    add-int/lit8 v19, v19, 0x1

    .line 798
    :cond_8
    if-eqz p4, :cond_9

    .line 799
    aput-object p7, v25, v19

    .line 800
    const/16 v26, 0x1

    aput-boolean v26, v17, v19

    .line 803
    :cond_9
    const/16 v21, 0x0

    .line 804
    .local v21, setView:Z
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 805
    aget-object v24, v25, v19

    .line 806
    .local v24, v:Landroid/view/View;
    if-nez v24, :cond_d

    .line 804
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 754
    .end local v15           #lastLight:Z
    .end local v16           #lastView:Landroid/view/View;
    .end local v17           #light:[Z
    .end local v19           #pos:I
    .end local v21           #setView:Z
    .end local v24           #v:Landroid/view/View;
    .end local v25           #views:[Landroid/view/View;
    .restart local v9       #divider:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, #android:id@titleDividerTop#t

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    .end local v9           #divider:Landroid/view/View;
    .restart local v15       #lastLight:Z
    .restart local v16       #lastView:Landroid/view/View;
    .restart local v17       #light:[Z
    .restart local v19       #pos:I
    .restart local v25       #views:[Landroid/view/View;
    :cond_b
    move-object/from16 v26, p2

    .line 789
    goto :goto_4

    .line 791
    :cond_c
    const/16 v26, 0x0

    goto :goto_5

    .line 809
    .restart local v21       #setView:Z
    .restart local v24       #v:Landroid/view/View;
    :cond_d
    if-eqz v16, :cond_e

    .line 810
    if-nez v21, :cond_10

    .line 811
    if-eqz v15, :cond_f

    move/from16 v26, v22

    :goto_8
    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 815
    :goto_9
    const/16 v21, 0x1

    .line 817
    :cond_e
    move-object/from16 v16, v24

    .line 818
    aget-boolean v15, v17, v19

    goto :goto_7

    :cond_f
    move/from16 v26, v23

    .line 811
    goto :goto_8

    .line 813
    :cond_10
    if-eqz v15, :cond_11

    move/from16 v26, v7

    :goto_a
    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    :cond_11
    move/from16 v26, v8

    goto :goto_a

    .line 821
    .end local v24           #v:Landroid/view/View;
    :cond_12
    if-eqz v16, :cond_13

    .line 822
    if-eqz v21, :cond_19

    .line 827
    if-eqz v15, :cond_18

    if-eqz p4, :cond_17

    .end local v6           #bottomMedium:I
    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 840
    .end local v11           #fullDark:I
    :cond_13
    :goto_c
    if-eqz v3, :cond_14

    if-eqz p7, :cond_14

    if-lez v18, :cond_14

    .line 841
    move-object/from16 v0, p7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 844
    :cond_14
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 848
    if-eqz v21, :cond_1b

    if-eqz v15, :cond_1b

    if-nez p4, :cond_1b

    const v26, 0x30800c6

    move/from16 v0, v26

    if-ne v4, v0, :cond_1b

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ListView;->IdeaUI_SetRounderCorner(ZZ)V

    .line 881
    :cond_15
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_16

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_16

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->setSelection(I)V

    .line 888
    :cond_16
    return-void

    .restart local v6       #bottomMedium:I
    .restart local v11       #fullDark:I
    :cond_17
    move v6, v4

    .line 827
    goto/16 :goto_b

    :cond_18
    move v6, v5

    goto/16 :goto_b

    .line 830
    :cond_19
    if-eqz v15, :cond_1a

    move v11, v10

    .end local v11           #fullDark:I
    :cond_1a
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_c

    .line 852
    .end local v6           #bottomMedium:I
    :cond_1b
    if-nez v21, :cond_15

    if-eqz v15, :cond_15

    const v26, 0x3080069

    move/from16 v0, v26

    if-ne v10, v0, :cond_15

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ListView;->IdeaUI_SetRounderCorner(ZZ)V

    goto :goto_d

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 599
    const/4 v2, 0x1

    .line 600
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 601
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 602
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 603
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, #android:id@button1#t

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 604
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 614
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, #android:id@button2#t

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 615
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 618
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, #android:id@button3#t

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 627
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 630
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 643
    if-ne v3, v2, :cond_4

    .line 644
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 652
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 609
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 611
    or-int/2addr v3, v2

    goto :goto_0

    .line 620
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 623
    or-int/2addr v3, v0

    goto :goto_1

    .line 632
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 635
    or-int/2addr v3, v1

    goto :goto_2

    .line 645
    :cond_4
    if-ne v3, v0, :cond_5

    .line 646
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 647
    :cond_5
    if-ne v3, v1, :cond_0

    .line 648
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 652
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, #android:id@scrollView#t

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 569
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 571
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, #android:id@message#t

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 577
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 596
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 588
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 593
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, #android:id@title_template#t

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 502
    const/4 v1, 0x1

    .line 504
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 506
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 509
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 513
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 565
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 515
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 517
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, #android:id@icon#t

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 518
    if-eqz v0, :cond_5

    .line 520
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, #android:id@alertTitle#t

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 522
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 541
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 543
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 544
    :cond_4
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 549
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 553
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 558
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 559
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@contentPanel#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 438
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 439
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v4

    .line 441
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@topPanel#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 442
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v12, #android:attr@alertDialogStyle#t

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 444
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 446
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@buttonPanel#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 447
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 448
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 452
    :cond_0
    const/4 v3, 0x0

    .line 453
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@customPanel#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 455
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@custom#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 456
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 458
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 471
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 472
    const/4 v9, 0x0

    .line 473
    .local v9, divider:Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@titleDivider#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 492
    :goto_1
    if-eqz v9, :cond_4

    .line 493
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_4
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/AlertController;->setBackgroundBaidu(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@customPanel#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 476
    .restart local v9       #divider:Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, #android:id@titleDividerTop#t

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 179
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 180
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, #android:attr@alertDialogCenterButtons#t

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 182
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 422
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 420
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .parameter "attrId"

    .prologue
    .line 400
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 401
    .local v0, out:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 402
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 243
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 250
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 251
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 310
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 314
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 318
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 334
    :goto_0
    return-void

    .line 322
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 323
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 327
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 328
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 265
    return-void
.end method

.method public setIcon(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/content/Context;->supportNonIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const v1, #android:drawable@ic_dialog_alert#t

    if-eq p1, v1, :cond_2

    const v1, #android:drawable@ic_dialog_alert_holo_dark#t

    if-eq p1, v1, :cond_2

    const v1, #android:drawable@ic_dialog_alert_holo_light#t

    if-ne p1, v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 353
    .local v0, is_warning_icon:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    if-nez v0, :cond_5

    .line 356
    const/4 p1, 0x0

    .line 363
    :cond_3
    :goto_2
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 364
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 365
    if-lez p1, :cond_6

    .line 366
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 349
    .end local v0           #is_warning_icon:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    .restart local v0       #is_warning_icon:Z
    :cond_5
    const p1, 0x30800a1

    goto :goto_2

    .line 367
    :cond_6
    if-nez p1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isCts()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/Context;->supportNonIdeaUITheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 388
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 407
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 269
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 255
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 280
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 289
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 290
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 291
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 292
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 293
    return-void
.end method

.method private correctCustomPanelBackground(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V
    .locals 4
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"

    .prologue
    const v1, #layout@yi_alert_dialog_baidu_light#t

    .local v1, layoutId:I
    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const v0, #drawable@yi_dialog_middle_custom_baidu_light#t

    .local v0, customBackgroundId:I
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .end local v0           #customBackgroundId:I
    :cond_0
    return-void
.end method

.method private setBackgroundBaidu(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 1
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0, p3, p4, p6}, Lcom/android/internal/app/AlertController;->setFilletListViewCornerType(Landroid/widget/ListView;Landroid/view/View;ZZ)V

    :cond_0
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/internal/app/AlertController;->correctCustomPanelBackground(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V

    return-void
.end method

.method private setFilletListViewCornerType(Landroid/widget/ListView;Landroid/view/View;ZZ)V
    .locals 1
    .parameter "listView"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"

    .prologue
    instance-of v0, p1, Lcom/android/internal/widget/RecycleFilletListView;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_3

    if-nez p3, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    :cond_1
    :goto_0
    return-void

    .restart local p1
    :cond_2
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0

    .restart local p1
    :cond_3
    if-nez p3, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0

    .restart local p1
    :cond_5
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0
.end method
