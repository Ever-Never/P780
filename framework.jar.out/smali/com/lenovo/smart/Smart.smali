.class public Lcom/lenovo/smart/Smart;
.super Ljava/lang/Object;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smart/Smart$ConductionProvider;,
        Lcom/lenovo/smart/Smart$HabitProvider;,
        Lcom/lenovo/smart/Smart$ConductionIntent;,
        Lcom/lenovo/smart/Smart$HabitIntent;,
        Lcom/lenovo/smart/Smart$Extra;
    }
.end annotation


# static fields
.field public static final MO_ENTRANCE_CALL_LOG:I = 0x14

.field public static final MO_ENTRANCE_DIALER_PAD:I = 0xa

.field public static final MO_ENTRANCE_END:I = 0x3c

.field public static final MO_ENTRANCE_PHONE_BOOK:I = 0x1e

.field public static final MO_ENTRANCE_SMS:I = 0x28

.field public static final MO_ENTRANCE_STARRED:I = 0x32

#the value of this static final field might be set in the static constructor
.field public static final SMART_CONFIG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Smart"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string/jumbo v0, "ro.com.lenovo.smart.config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/smart/Smart;->SMART_CONFIG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    return-void
.end method

.method public static addApplicationDurationLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "date"
    .parameter "duration"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v1, "application"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v1, "Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v1, "Package"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "class_name"

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "Time"

    invoke-virtual {v0, v1, p3, p4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    const-string v1, "duration"

    invoke-virtual {v0, v1, p5, p6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    invoke-static {p0, v0}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addApplicationStartLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "startType"

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    .line 120
    .local v0, duration:J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 123
    .local v3, time:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v5, "application"

    invoke-direct {v2, v5}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v5, "Type"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v5, "Package"

    invoke-virtual {v2, v5, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v5, "class_name"

    invoke-virtual {v2, v5, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v5, "Time"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 129
    const-string v5, "duration"

    invoke-virtual {v2, v5, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 130
    const-string/jumbo v5, "parameter"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v5, "Where"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-static {p0, v2}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addApplicationStopLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "endType"

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    .line 145
    .local v0, duration:J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 148
    .local v3, time:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v5, "application"

    invoke-direct {v2, v5}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v5, "Type"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v5, "Package"

    invoke-virtual {v2, v5, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v5, "class_name"

    invoke-virtual {v2, v5, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v5, "Time"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    const-string v5, "duration"

    invoke-virtual {v2, v5, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    const-string/jumbo v5, "parameter"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v5, "Flag"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-static {p0, v2}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "simId"
    .parameter "vtCall"

    .prologue
    .line 32
    new-instance v0, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v1, "telephony"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    if-lez p7, :cond_0

    .line 35
    const-string/jumbo v1, "transaction_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    :goto_0
    const-string/jumbo v1, "transaction_sub_type"

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "date"

    invoke-virtual {v0, v1, p3, p4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    const-string v1, "duration"

    invoke-virtual {v0, v1, p5}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "sim_ID"

    invoke-virtual {v0, v1, p6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    return-void

    .line 37
    :cond_0
    const-string/jumbo v1, "transaction_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static addMoMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public static addMoSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public static addMtMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public static addMtSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public static addStatics_ImportPhoneBook(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "importFrom"

    .prologue
    .line 491
    const/16 v1, 0xa

    .line 492
    .local v1, IMPORT_FROM_INIT:I
    const/16 v4, 0xa

    .line 493
    .local v4, IMPORT_FROM_SIM:I
    const/16 v3, 0x14

    .line 494
    .local v3, IMPORT_FROM_SD:I
    const/16 v0, 0x1e

    .line 495
    .local v0, IMPORT_FROM_CLOUD:I
    const/16 v2, 0x28

    .line 501
    .local v2, IMPORT_FROM_PC_SYNC:I
    sparse-switch p1, :sswitch_data_0

    .line 524
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 525
    .local v5, exception:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    .end local v5           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 503
    :sswitch_0
    const-string v7, "import_from_sim"

    .line 532
    .local v7, paramName:Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v8, "statics"

    invoke-direct {v6, v8}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v6, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v8, "statics_type"

    const-string v9, "import_phone_book"

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string/jumbo v8, "param_name"

    invoke-virtual {v6, v8, v7}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 508
    .end local v6           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_1
    const-string v7, "import_from_sd"

    .line 509
    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 513
    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_2
    const-string v7, "import_from_cloud"

    .line 514
    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 518
    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_3
    const-string v7, "import_from_pc_sync"

    .line 519
    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 501
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public static addStatics_InstallingThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 544
    const-string/jumbo v0, "package:"

    .line 547
    .local v0, PACKAGE_INTENT_PREFIX:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 549
    .local v1, exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    .end local v1           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 554
    :cond_1
    const-string/jumbo v3, "package:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    const-string/jumbo v3, "package:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 559
    :cond_2
    new-instance v2, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v3, "statics"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v2, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v3, "statics_type"

    const-string v4, "installing_third_party_app"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string/jumbo v3, "param_name"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatics_MoCall(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "entrance"

    .prologue
    .line 362
    const-string v3, ""

    .line 363
    .local v3, paramName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 365
    .local v2, isEntranceError:Z
    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    .line 366
    const/4 v2, 0x1

    .line 416
    :goto_0
    if-eqz v2, :cond_b

    .line 417
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 418
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    .end local v0           #exception:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 367
    :cond_0
    const/16 v4, 0x14

    if-ge p1, v4, :cond_2

    .line 369
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0xa

    if-ge p1, v4, :cond_1

    .line 371
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0xa

    aget-object v3, v4, v5

    goto :goto_0

    .line 374
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 376
    :cond_2
    const/16 v4, 0x1e

    if-ge p1, v4, :cond_4

    .line 378
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x14

    if-ge p1, v4, :cond_3

    .line 380
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x14

    aget-object v3, v4, v5

    goto :goto_0

    .line 383
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 385
    :cond_4
    const/16 v4, 0x28

    if-ge p1, v4, :cond_6

    .line 387
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1e

    if-ge p1, v4, :cond_5

    .line 389
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1e

    aget-object v3, v4, v5

    goto :goto_0

    .line 392
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 394
    :cond_6
    const/16 v4, 0x32

    if-ge p1, v4, :cond_8

    .line 396
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x28

    if-ge p1, v4, :cond_7

    .line 398
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x28

    aget-object v3, v4, v5

    goto :goto_0

    .line 401
    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    .line 403
    :cond_8
    const/16 v4, 0x3c

    if-ge p1, v4, :cond_a

    .line 405
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x32

    if-ge p1, v4, :cond_9

    .line 407
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x32

    aget-object v3, v4, v5

    goto :goto_0

    .line 410
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 413
    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    .line 423
    :cond_b
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v4, "statics"

    invoke-direct {v1, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v4, "statics_type"

    const-string/jumbo v5, "mo_call_entrance"

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string/jumbo v4, "param_name"

    invoke-virtual {v1, v4, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public static addStatics_MoCallMistake(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 436
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "statics"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "statics_type"

    const-string/jumbo v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string/jumbo v1, "param_name"

    const-string/jumbo v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    return-void
.end method

.method public static addStatics_SwitchMasterCard(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "entrance"

    .prologue
    .line 449
    const/16 v1, 0xa

    .line 450
    .local v1, SWITCH_ENTRANCE_INIT:I
    const/16 v2, 0xa

    .line 451
    .local v2, SWITCH_ENTRANCE_NOTIFICATION:I
    const/16 v0, 0x14

    .line 457
    .local v0, SWITCH_ENTRANCE_DUAL_SIM_SETTING:I
    sparse-switch p1, :sswitch_data_0

    .line 470
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 471
    .local v3, exception:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    .end local v3           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 459
    :sswitch_0
    const-string/jumbo v5, "switch_master_call_from_notification_bar"

    .line 478
    .local v5, paramName:Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v6, "statics"

    invoke-direct {v4, v6}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v4, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v6, "statics_type"

    const-string/jumbo v7, "switch_master_call"

    invoke-virtual {v4, v6, v7}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string/jumbo v6, "param_name"

    invoke-virtual {v4, v6, v5}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    .end local v4           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v5           #paramName:Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v5, "switch_master_call_from_dual_sim_setting"

    .line 465
    .restart local v5       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 457
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addStatus_CallMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 285
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v1, "param_name"

    const-string v2, "call_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method public static addStatus_ContactsNumber(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "storageType"
    .parameter "number"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    const-string v2, "contacts_number_phone_only"

    .line 316
    .local v2, paramName:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v3, "status"

    invoke-direct {v1, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v3, "status_type"

    const-string v4, "contacts_number"

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v3, "param_name"

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v3, "param_value"

    invoke-virtual {v1, v3, p2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    .end local v1           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v2           #paramName:Ljava/lang/String;
    :goto_1
    return-void

    .line 304
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 305
    const-string v2, "contacts_number_sim_only"

    .restart local v2       #paramName:Ljava/lang/String;
    goto :goto_0

    .line 306
    .end local v2           #paramName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 307
    const-string v2, "contacts_number_all"

    .restart local v2       #paramName:Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v2           #paramName:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 311
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static addStatus_DataMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 346
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string/jumbo v1, "param_name"

    const-string v2, "data_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method public static addStatus_HaveDualSim(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "haveDualSim"

    .prologue
    .line 185
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string v2, "have_dual_sim"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method public static addStatus_IMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "imei"

    .prologue
    .line 199
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public static addStatus_InstalledThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string v2, "installed_third_party_app"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatus_ShowContactsFilter(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "showFilter"

    .prologue
    .line 243
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "show_contacts_filter"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public static addStatus_Slot1SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "simType"

    .prologue
    .line 257
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "slot1_sim_type"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public static addStatus_Slot2SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "simType"

    .prologue
    .line 271
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "slot2_sim_type"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public static addStatus_SmsMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 331
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string/jumbo v1, "param_name"

    const-string/jumbo v2, "sms_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public static addStatus_SwVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "swVersion"

    .prologue
    .line 229
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "sw_version"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private static sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1127
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1132
    :goto_0
    return-void

    .line 1130
    :cond_0
    const-string v0, "Smart"

    const-string/jumbo v1, "sendSmartBroadcast : system not ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
