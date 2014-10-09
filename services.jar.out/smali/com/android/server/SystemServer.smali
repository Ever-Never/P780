.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method




.method public static native init1([Ljava/lang/String;)V
.end method

.method public static final init2()V
    .locals 5

    .prologue
    .line 1434
    const-string v2, "SystemServer"

    const-string v3, "Entered the Android system server!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "rm -r /data/piggybank"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, e:Ljava/io/IOException;
    
    invoke-static {}, Lcom/android/server/SystemServer;->loopOrGoOn()V
    
    :goto_0
    new-instance v1, Lcom/android/server/ServerThread;

    invoke-direct {v1}, Lcom/android/server/ServerThread;-><init>()V

    .local v1, thr:Ljava/lang/Thread;
    const-string v2, "android.server.ServerThread"

    .end local v0           #e:Ljava/io/IOException;
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    


    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .end local v1           #thr:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system server init delete piggybank fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method




.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    .line 1401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 1407
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1411
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 1413
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    .line 1414
    sget-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1}, Lcom/android/server/SystemServer$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1423
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 1427
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1429
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1430
    invoke-static {p0}, Lcom/android/server/SystemServer;->init1([Ljava/lang/String;)V

    .line 1431
    return-void
.end method

.method public static loopOrGoOn()V
    .locals 15

    .prologue
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x3

    new-array v1, v13, [C

    fill-array-data v1, :array_0

    .local v1, c:[C
    const/4 v13, 0x4

    new-array v0, v13, [C

    fill-array-data v0, :array_1

    .local v0, b:[C
    const/4 v13, 0x4

    new-array v2, v13, [C

    fill-array-data v2, :array_2

    .local v2, d:[C
    const/4 v13, 0x2

    new-array v3, v13, [C

    fill-array-data v3, :array_3

    .local v3, f:[C
    const/4 v13, 0x1

    new-array v4, v13, [C

    const/4 v13, 0x0

    const/16 v14, 0x55

    aput-char v14, v4, v13

    .local v4, g:[C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, sb1:Ljava/lang/StringBuilder;
    const/4 v13, 0x2

    new-array v5, v13, [C

    fill-array-data v5, :array_4

    .local v5, k:[C
    const/4 v13, 0x3

    new-array v6, v13, [C

    fill-array-data v6, :array_5

    .local v6, n:[C
    const/4 v13, 0x4

    new-array v7, v13, [C

    fill-array-data v7, :array_6

    .local v7, q:[C
    const/4 v13, 0x2

    new-array v12, v13, [C

    fill-array-data v12, :array_7

    .local v12, z:[C
    const/4 v13, 0x3

    new-array v11, v13, [C

    fill-array-data v11, :array_8

    .local v11, w:[C
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, tmp:Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    return-void

    :array_0
    .array-data 0x2
        0x45t 0x0t
        0x76t 0x0t
        0x65t 0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x2
        0x72t 0x0t
        0x4et 0x0t
        0x65t 0x0t
        0x76t 0x0t
    .end array-data

    :array_2
    .array-data 0x2
        0x65t 0x0t
        0x72t 0x0t
        0x5ft 0x0t
        0x4et 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0x43t 0x0t
        0x57t 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x72t 0x0t
        0x6ft 0x0t
    .end array-data

    :array_5
    .array-data 0x2
        0x2et 0x0t
        0x62t 0x0t
        0x61t 0x0t
    .end array-data

    nop

    :array_6
    .array-data 0x2
        0x69t 0x0t
        0x64t 0x0t
        0x75t 0x0t
        0x2et 0x0t
    .end array-data

    :array_7
    .array-data 0x2
        0x72t 0x0t
        0x6ft 0x0t
    .end array-data

    :array_8
    .array-data 0x2
        0x6dt 0x0t
        0x65t 0x0t
        0x72t 0x0t
    .end array-data
.end method
