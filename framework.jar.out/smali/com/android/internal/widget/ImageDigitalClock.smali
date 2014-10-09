.class public Lcom/android/internal/widget/ImageDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/ImageDigitalClock$AmPm;,
        Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "ImageDigitalClock"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

.field private mAmPmDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPmTextColor:I

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinute01:Landroid/widget/ImageView;

.field private mMinute02:Landroid/widget/ImageView;

.field private mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeDisplayColon:Landroid/widget/ImageView;

.field private mTimeDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 91
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    .line 228
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput v9, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 77
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    .line 83
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 230
    .local v6, res:Landroid/content/res/Resources;
    sget-object v8, Lcom/android/internal/R$styleable;->ImageDigitalClock:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 233
    .local v5, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 234
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 235
    .local v1, array:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 236
    .local v2, count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v7, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 238
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 239
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    iput-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    .line 244
    .end local v1           #array:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v7           #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_3

    .line 245
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "The Illegal time drawables count!!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 248
    :cond_3
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 249
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 250
    .restart local v1       #array:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 251
    .restart local v2       #count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .restart local v7       #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 253
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 254
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 258
    iput-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    .line 261
    .end local v1           #array:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v7           #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_5
    const-string v8, "ImageDigitalClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAmPmDrawables = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_6

    .line 263
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "The Illegal ampm drawables count!!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 266
    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    const-string v8, "ImageDigitalClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTimeColonDrawable = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmTextColor:I

    .line 270
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/ImageDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ImageDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ImageDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->setDateFormat()V

    return-void
.end method

.method private getAmPm()Lcom/android/internal/widget/ImageDigitalClock$AmPm;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    return-object v0
.end method

.method private getImageResId(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "index"

    .prologue
    .line 386
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 389
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 396
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 399
    :cond_0
    return v0
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 379
    return-void

    .line 377
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 300
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 302
    iget v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/ImageDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 315
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/ImageDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->updateTime()V

    .line 322
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 328
    iget v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    :cond_1
    iput-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 339
    iput-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 275
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "hour01_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour01:Landroid/widget/ImageView;

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "hour02_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour02:Landroid/widget/ImageView;

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "minute01_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute01:Landroid/widget/ImageView;

    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "minute02_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute02:Landroid/widget/ImageView;

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "colon_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "am_pm"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 292
    .local v5, id:I
    new-instance v0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmTextColor:I

    iget-object v4, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;ILjava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    .line 293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 295
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->setDateFormat()V

    .line 296
    return-void
.end method

.method public updateTime()V
    .locals 10

    .prologue
    .line 348
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 356
    .local v3, is24Format:Z
    if-nez v3, :cond_1

    .line 357
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 358
    .local v0, hour:I
    if-nez v0, :cond_0

    .line 359
    const/16 v0, 0xc

    .line 364
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 365
    .local v4, minute:I
    div-int/lit8 v1, v0, 0xa

    .line 366
    .local v1, hour01:I
    rem-int/lit8 v2, v0, 0xa

    .line 367
    .local v2, hour02:I
    div-int/lit8 v5, v4, 0xa

    .line 368
    .local v5, minute01:I
    rem-int/lit8 v6, v4, 0xa

    .line 369
    .local v6, minute02:I
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour01:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour02:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute01:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute02:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->setIsMorning(Z)V

    .line 374
    return-void

    .line 362
    .end local v0           #hour:I
    .end local v1           #hour01:I
    .end local v2           #hour02:I
    .end local v4           #minute:I
    .end local v5           #minute01:I
    .end local v6           #minute02:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .restart local v0       #hour:I
    goto :goto_0

    .line 373
    .restart local v1       #hour01:I
    .restart local v2       #hour02:I
    .restart local v4       #minute:I
    .restart local v5       #minute01:I
    .restart local v6       #minute02:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->updateTime()V

    .line 345
    return-void
.end method
