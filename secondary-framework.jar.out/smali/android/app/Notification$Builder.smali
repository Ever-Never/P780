.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mKindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mPriority:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mShowWhen:Z

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mStyle:Landroid/app/Notification$Style;

.field private mSubText:Ljava/lang/CharSequence;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mUseChronometer:Z

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 1080
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 1059
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 1081
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 1085
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 1087
    return-void
.end method

.method static synthetic access$300(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1022
    invoke-direct {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1022
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$702(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1022
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 18
    .parameter "resId"
    .parameter "fitIn1U"

    .prologue
    .line 1508
    new-instance v1, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1509
    .local v1, contentView:Landroid/widget/RemoteViews;
    const/4 v10, 0x0

    .line 1510
    .local v10, showLine3:Z
    const/4 v9, 0x0

    .line 1511
    .local v9, showLine2:Z
    const v11, #android:id@icon#t

    .line 1512
    .local v11, smallIconImageViewId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1513
    const v2, #android:id@icon#t

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1514
    const v11, #android:id@right_icon#t

    .line 1516
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mPriority:I

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1517
    const v2, #android:id@icon#t

    const-string v3, "setBackgroundResource"

    const v4, #android:drawable@notification_template_icon_low_bg#t

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1519
    const v2, #android:id@status_bar_latest_event_content#t

    const-string v3, "setBackgroundResource"

    const v4, #android:drawable@notification_bg_low#t

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1522
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mSmallIcon:I

    if-eqz v2, :cond_6

    .line 1523
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mSmallIcon:I

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1524
    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1528
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 1529
    const v2, #android:id@title#t

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1531
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 1532
    const v2, #android:id@text#t

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1533
    const/4 v10, 0x1

    .line 1535
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 1536
    const v2, #android:id@info#t

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1537
    const v2, #android:id@info#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1538
    const/4 v10, 0x1

    .line 1556
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    .line 1557
    const v2, #android:id@text#t

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    .line 1559
    const v2, #android:id@text2#t

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1560
    const v2, #android:id@text2#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1561
    const/4 v9, 0x1

    .line 1576
    :goto_2
    if-eqz v9, :cond_5

    .line 1577
    if-eqz p2, :cond_4

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1580
    .local v8, res:Landroid/content/res/Resources;
    const v2, #android:dimen@notification_subtext_size#t

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v12, v2

    .line 1582
    .local v12, subTextSize:F
    const v2, #android:id@text#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v12}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 1585
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v12           #subTextSize:F
    :cond_4
    const v2, #android:id@line1#t

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1588
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/app/Notification$Builder;->mShowWhen:Z

    if-eqz v2, :cond_f

    .line 1589
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    if-eqz v2, :cond_e

    .line 1590
    const v2, #android:id@chronometer#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1591
    const v2, #android:id@chronometer#t

    const-string v3, "setBase"

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    add-long/2addr v4, v14

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1593
    const v2, #android:id@chronometer#t

    const-string v3, "setStarted"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1602
    :goto_3
    const v3, #android:id@line3#t

    if-eqz v10, :cond_10

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1603
    const v3, #android:id@overflow_divider#t

    if-eqz v10, :cond_11

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1604
    return-object v1

    .line 1526
    :cond_6
    const/16 v2, 0x8

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 1539
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v2, :cond_9

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:integer@status_bar_notification_info_maxnum#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 1542
    .local v13, tooBig:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v2, v13, :cond_8

    .line 1543
    const v2, #android:id@info#t

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:string@status_bar_notification_info_overflow#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1549
    :goto_6
    const v2, #android:id@info#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1550
    const/4 v10, 0x1

    .line 1551
    goto/16 :goto_1

    .line 1546
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v7

    .line 1547
    .local v7, f:Ljava/text/NumberFormat;
    const v2, #android:id@info#t

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v3, v3

    invoke-virtual {v7, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_6

    .line 1552
    .end local v7           #f:Ljava/text/NumberFormat;
    .end local v13           #tooBig:I
    :cond_9
    const v2, #android:id@info#t

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 1563
    :cond_a
    const v2, #android:id@text2#t

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 1566
    :cond_b
    const v2, #android:id@text2#t

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1567
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v2, :cond_d

    .line 1568
    :cond_c
    const v2, #android:id@progress#t

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/Notification$Builder;->mProgress:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1570
    const v2, #android:id@progress#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1571
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1573
    :cond_d
    const v2, #android:id@progress#t

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 1595
    :cond_e
    const v2, #android:id@time#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1596
    const v2, #android:id@time#t

    const-string v3, "setTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_3

    .line 1599
    :cond_f
    const v2, #android:id@time#t

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 1602
    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 1603
    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_5
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "layoutId"

    .prologue
    const v6, #android:id@actions#t

    const/4 v5, 0x0

    .line 1608
    invoke-direct {p0, p1, v5}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1610
    .local v1, big:Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1611
    .local v0, N:I
    if-lez v0, :cond_1

    .line 1613
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1614
    const v4, #android:id@action_divider#t

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1615
    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    const/4 v0, 0x3

    .line 1616
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1617
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1618
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1620
    .local v2, button:Landroid/widget/RemoteViews;
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1617
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1623
    .end local v2           #button:Landroid/widget/RemoteViews;
    .end local v3           #i:I
    :cond_1
    return-object v1
.end method

.method private buildUnstyled()Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1672
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1673
    .local v0, n:Landroid/app/Notification;
    iget-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 1674
    iget v2, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 1675
    iget v2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v2, v0, Landroid/app/Notification;->iconLevel:I

    .line 1676
    iget v2, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v2, v0, Landroid/app/Notification;->number:I

    .line 1677
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1678
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1679
    iget-object v2, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v2, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1680
    iget-object v2, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1681
    iget-object v2, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1682
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1683
    iget-object v2, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1684
    iget-object v2, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1685
    iget v2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1686
    iget-object v2, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v2, v0, Landroid/app/Notification;->vibrate:[J

    .line 1687
    iget v2, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    .line 1688
    iget v2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1689
    iget v2, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1690
    iget v2, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 1691
    iget v2, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 1692
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1693
    iget v2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v2, :cond_0

    .line 1694
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 1696
    :cond_0
    iget v2, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 1697
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 1699
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1700
    iget-object v2, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 1701
    iget-object v2, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1705
    :goto_0
    iget v2, p0, Landroid/app/Notification$Builder;->mPriority:I

    iput v2, v0, Landroid/app/Notification;->priority:I

    .line 1706
    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_2
    #setter for: Landroid/app/Notification;->extras:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/app/Notification;->access$102(Landroid/app/Notification;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1707
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1708
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    #setter for: Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;
    invoke-static {v0, v1}, Landroid/app/Notification;->access$202(Landroid/app/Notification;[Landroid/app/Notification$Action;)[Landroid/app/Notification$Action;

    .line 1709
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #getter for: Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;
    invoke-static {v0}, Landroid/app/Notification;->access$200(Landroid/app/Notification;)[Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1711
    :cond_3
    return-object v0

    .line 1703
    :cond_4
    iput-object v1, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    goto :goto_0
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "action"

    .prologue
    const v1, #android:id@action0#t

    const/4 v3, 0x0

    .line 1655
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    const/4 v6, 0x1

    .line 1656
    .local v6, tombstone:Z
    :goto_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    const v2, #android:layout@notification_action_tombstone#t

    :goto_1
    invoke-direct {v0, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1659
    .local v0, button:Landroid/widget/RemoteViews;
    iget v2, p1, Landroid/app/Notification$Action;->icon:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 1660
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1661
    if-nez v6, :cond_0

    .line 1662
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1664
    :cond_0
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1665
    return-object v0

    .end local v0           #button:Landroid/widget/RemoteViews;
    .end local v6           #tombstone:Z
    :cond_1
    move v6, v3

    .line 1655
    goto :goto_0

    .line 1656
    .restart local v6       #tombstone:Z
    :cond_2
    const v2, #android:layout@notification_action#t

    goto :goto_1
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1651
    :goto_0
    return-object v0

    :cond_0
    const v0, #android:layout@notification_template_big_base#t

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1630
    :goto_0
    return-object v0

    :cond_0
    const v0, #android:layout@notification_template_base#t

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1643
    :goto_0
    return-object v0

    .line 1638
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 1639
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, #android:layout@status_bar_latest_event_ticker#t

    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, #android:layout@status_bar_latest_event_ticker_large_icon#t

    goto :goto_1

    .line 1643
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 1500
    if-eqz p2, :cond_0

    .line 1501
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 1505
    :goto_0
    return-void

    .line 1503
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 2
    .parameter "icon"
    .parameter "title"
    .parameter "intent"

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    return-object p0
.end method

.method public addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "k"

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1730
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1719
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "autoCancel"

    .prologue
    .line 1414
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1415
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "views"

    .prologue
    .line 1226
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1227
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "info"

    .prologue
    .line 1204
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 1205
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "intent"

    .prologue
    .line 1242
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 1243
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 1174
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 1175
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 1166
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 1167
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "defaults"

    .prologue
    .line 1428
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 1429
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "intent"

    .prologue
    .line 1252
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 1253
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "bag"

    .prologue
    .line 1465
    iput-object p1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 1466
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "intent"
    .parameter "highPriority"

    .prologue
    .line 1272
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 1273
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1274
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "icon"

    .prologue
    .line 1311
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 1312
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "argb"
    .parameter "onMs"
    .parameter "offMs"

    .prologue
    .line 1369
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 1370
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 1371
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 1372
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "number"

    .prologue
    .line 1193
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 1194
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "ongoing"

    .prologue
    .line 1392
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1393
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "onlyAlertOnce"

    .prologue
    .line 1403
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1404
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "pri"

    .prologue
    .line 1438
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 1439
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 1214
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 1215
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 1216
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 1217
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "show"

    .prologue
    .line 1106
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 1107
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "icon"

    .prologue
    .line 1141
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 1142
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "icon"
    .parameter "level"

    .prologue
    .line 1157
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 1158
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 1159
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "sound"

    .prologue
    .line 1323
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 1324
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 1325
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "sound"
    .parameter "streamType"

    .prologue
    .line 1336
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 1337
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 1338
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "style"

    .prologue
    .line 1490
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 1491
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 1492
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 1496
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 1183
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 1184
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "tickerText"

    .prologue
    .line 1284
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 1285
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "tickerText"
    .parameter "views"

    .prologue
    .line 1297
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 1298
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1299
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "b"

    .prologue
    .line 1122
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 1123
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 1352
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 1353
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 0
    .parameter "when"

    .prologue
    .line 1097
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 1098
    return-object p0
.end method
