.class final Lcom/android/server/power/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    .line 1900
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1901
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 1905
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$300(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$1800(Lcom/android/server/power/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1907
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    const-string v3, "smart_brightness_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    #setter for: Lcom/android/server/power/DisplayPowerController;->mScreenSmartBrightnessModeSetting:I
    invoke-static {v1, v3}, Lcom/android/server/power/DisplayPowerController;->access$1902(Lcom/android/server/power/DisplayPowerController;I)I

    .line 1911
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mScreenSmartBrightnessModeSetting:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1900(Lcom/android/server/power/DisplayPowerController;)I

    move-result v3

    #calls: Lcom/android/server/power/DisplayPowerController;->setSmartBrightnessMode(I)V
    invoke-static {v1, v3}, Lcom/android/server/power/DisplayPowerController;->access$2000(Lcom/android/server/power/DisplayPowerController;I)V

    .line 1912
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessLevels:[I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$2200(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLcdBacklightValues:[I
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$2300(Lcom/android/server/power/DisplayPowerController;)[I

    move-result-object v4

    #calls: Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$2400([I[I)Landroid/util/Spline;

    move-result-object v3

    #setter for: Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;
    invoke-static {v1, v3}, Lcom/android/server/power/DisplayPowerController;->access$2102(Lcom/android/server/power/DisplayPowerController;Landroid/util/Spline;)Landroid/util/Spline;

    .line 1927
    monitor-exit v2

    .line 1928
    return-void

    .line 1927
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
