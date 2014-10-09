.class Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;
.super Landroid/database/ContentObserver;
.source "LaunchIconThemeResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/launchericontheme/LaunchIconThemeResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;


# direct methods
.method constructor <init>(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    #getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lenovo_desktop_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, themeName:Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    invoke-virtual {v1, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->setSystemTheme(Ljava/lang/String;)V

    .line 44
    return-void
.end method
