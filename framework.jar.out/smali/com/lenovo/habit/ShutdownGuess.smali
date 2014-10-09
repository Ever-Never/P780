.class public Lcom/lenovo/habit/ShutdownGuess;
.super Ljava/lang/Object;
.source "ShutdownGuess.java"


# static fields
.field private static final KEY_CONTINUE_DAY:Ljava/lang/String; = "shutdown_continue_day"

.field private static final KEY_FIRST_DAY:Ljava/lang/String; = "shutdown_first_day"

.field private static final KEY_SECOND_DAY:Ljava/lang/String; = "shutdown_second_day"

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static mInstance:Lcom/lenovo/habit/ShutdownGuess;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContinueDay:I

.field private mFirstDay:J

.field private mSecondDay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/habit/ShutdownGuess;->mInstance:Lcom/lenovo/habit/ShutdownGuess;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    .line 99
    iput-wide v1, p0, Lcom/lenovo/habit/ShutdownGuess;->mFirstDay:J

    .line 100
    iput-wide v1, p0, Lcom/lenovo/habit/ShutdownGuess;->mSecondDay:J

    .line 16
    iput-object p1, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private clearData()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shutdown_continue_day"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    return-void
.end method

.method private deltaTimeCheck()Z
    .locals 24

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 67
    .local v18, time:J
    const-wide/32 v20, 0x5265c00

    div-long v2, v18, v20

    .line 68
    .local v2, curDay:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/habit/ShutdownGuess;->mFirstDay:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    div-long v6, v20, v22

    .line 69
    .local v6, firstDay:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/habit/ShutdownGuess;->mSecondDay:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    div-long v14, v20, v22

    .line 72
    .local v14, secondDay:J
    sub-long v20, v2, v14

    const-wide/16 v22, 0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    sub-long v20, v14, v6

    const-wide/16 v22, 0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1

    :cond_0
    const/16 v20, 0x0

    .line 85
    :goto_0
    return v20

    .line 74
    :cond_1
    const-wide/32 v20, 0x5265c00

    rem-long v4, v18, v20

    .line 75
    .local v4, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/habit/ShutdownGuess;->mFirstDay:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    rem-long v8, v20, v22

    .line 76
    .local v8, firstTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/habit/ShutdownGuess;->mSecondDay:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    rem-long v16, v20, v22

    .line 78
    .local v16, secondTime:J
    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 80
    .local v10, max:J
    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 82
    .local v12, min:J
    sub-long v20, v10, v12

    const-wide/32 v22, 0x36ee80

    cmp-long v20, v20, v22

    if-gez v20, :cond_2

    .line 83
    const/16 v20, 0x1

    goto :goto_0

    .line 85
    :cond_2
    const/16 v20, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/habit/ShutdownGuess;
    .locals 1
    .parameter "context"

    .prologue
    .line 9
    sget-object v0, Lcom/lenovo/habit/ShutdownGuess;->mInstance:Lcom/lenovo/habit/ShutdownGuess;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/lenovo/habit/ShutdownGuess;

    invoke-direct {v0, p0}, Lcom/lenovo/habit/ShutdownGuess;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/habit/ShutdownGuess;->mInstance:Lcom/lenovo/habit/ShutdownGuess;

    .line 12
    :cond_0
    sget-object v0, Lcom/lenovo/habit/ShutdownGuess;->mInstance:Lcom/lenovo/habit/ShutdownGuess;

    return-object v0
.end method

.method private readData()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shutdown_continue_day"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    .line 40
    iget-object v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shutdown_first_day"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mFirstDay:J

    .line 41
    iget-object v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shutdown_second_day"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mSecondDay:J

    .line 42
    return-void
.end method

.method private writeData()V
    .locals 6

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/habit/ShutdownGuess;->readData()V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    .local v0, curTime:J
    iget v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shutdown_first_day"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 49
    iget v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shutdown_continue_day"

    iget v4, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    return-void

    .line 50
    :cond_0
    iget v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 51
    iget-object v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shutdown_second_day"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 52
    iget v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shutdown_first_day"

    iget-wide v4, p0, Lcom/lenovo/habit/ShutdownGuess;->mSecondDay:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 55
    iget-object v2, p0, Lcom/lenovo/habit/ShutdownGuess;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shutdown_second_day"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method


# virtual methods
.method public recommend()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public shouldRecommend()Z
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lenovo/habit/ShutdownGuess;->readData()V

    .line 24
    iget v0, p0, Lcom/lenovo/habit/ShutdownGuess;->mContinueDay:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/habit/ShutdownGuess;->deltaTimeCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/lenovo/habit/ShutdownGuess;->clearData()V

    .line 26
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/habit/ShutdownGuess;->writeData()V

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method
