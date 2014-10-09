.class Lcom/lenovo/systemtheme/SystemThemeService$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/systemtheme/SystemThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/systemtheme/SystemThemeService;


# direct methods
.method constructor <init>(Lcom/lenovo/systemtheme/SystemThemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    const-string v4, "action_themecenter_themechange_systemwidget"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const-string/jumbo v4, "theme_packagename"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, packageName:Ljava/lang/String;
    const-string v4, "SystemThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: ACTION_SYSTEM_WIDGET packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    invoke-virtual {v4, v1}, Lcom/lenovo/systemtheme/SystemThemeService;->setSystemTheme(Ljava/lang/String;)Z

    move-result v2

    .line 78
    .local v2, result:Z
    new-instance v3, Landroid/content/Intent;

    const-string v4, "action.systemwidgettheme.appling"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, resultIntent:Landroid/content/Intent;
    const-string/jumbo v4, "theme_value"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v4, "theme_change_result"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v4, "SystemThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #result:Z
    .end local v3           #resultIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1       #packageName:Ljava/lang/String;
    const-string v4, "SystemThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: ACTION_PACKAGE_REMOVED packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    #getter for: Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/systemtheme/SystemThemeService;->access$000(Lcom/lenovo/systemtheme/SystemThemeService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const-string v4, "SystemThemeService"

    const-string/jumbo v5, "onReceive : System Theme is removed, reset to defalut"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    const-string/jumbo v5, "lenovo"

    invoke-virtual {v4, v5}, Lcom/lenovo/systemtheme/SystemThemeService;->setSystemTheme(Ljava/lang/String;)Z

    goto :goto_0
.end method
