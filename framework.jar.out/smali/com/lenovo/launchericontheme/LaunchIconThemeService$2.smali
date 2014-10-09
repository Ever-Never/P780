.class Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;
.super Landroid/database/ContentObserver;
.source "LaunchIconThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/launchericontheme/LaunchIconThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;


# direct methods
.method constructor <init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 158
    const-string v1, "LaunchIconThemeService"

    const-string/jumbo v2, "mDesktopThemeObserver omChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    iget-object v1, v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lenovo_desktop_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, themeName:Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    invoke-virtual {v1, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->setSystemTheme(Ljava/lang/String;)V

    .line 161
    return-void
.end method
