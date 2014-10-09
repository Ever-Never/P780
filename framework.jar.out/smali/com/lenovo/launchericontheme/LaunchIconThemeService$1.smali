.class Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 68
    const-string v4, "LaunchIconThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, packageName:Ljava/lang/String;
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 78
    .local v3, replacing:Z
    const/4 v1, 0x0

    .line 80
    .local v1, op:I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 105
    .end local v1           #op:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 85
    .restart local v1       #op:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #replacing:Z
    :cond_2
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    const/4 v1, 0x2

    .line 101
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 102
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    new-instance v5, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;

    iget-object v6, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v8

    invoke-direct {v5, v6, v1, v7}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;I[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->enqueuePackageUpdated(Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    if-nez v3, :cond_3

    .line 89
    const/4 v1, 0x3

    goto :goto_1

    .line 93
    :cond_5
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    if-nez v3, :cond_6

    .line 95
    const/4 v1, 0x1

    goto :goto_1

    .line 97
    :cond_6
    const/4 v1, 0x2

    goto :goto_1
.end method
