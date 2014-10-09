.class final Lcom/android/server/LenovoBatteryManagerService$1;
.super Ljava/util/ArrayList;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LenovoBatteryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const-string v0, "com.sina.weibo"

    invoke-virtual {p0, v0}, Lcom/android/server/LenovoBatteryManagerService$1;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v0, "com.iyd.reader.ReadingJoy"

    invoke-virtual {p0, v0}, Lcom/android/server/LenovoBatteryManagerService$1;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v0, "com.UCMobile"

    invoke-virtual {p0, v0}, Lcom/android/server/LenovoBatteryManagerService$1;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v0, "com.snda.inote.lenovo"

    invoke-virtual {p0, v0}, Lcom/android/server/LenovoBatteryManagerService$1;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method
