.class Landroid/net/CaptivePortalTracker$2;
.super Ljava/lang/Object;
.source "CaptivePortalTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/CaptivePortalTracker;->showCaptivePortalDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 956
    const/4 v3, 0x0

    .line 960
    .local v3, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->access$2500(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 962
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 964
    const-string v4, "com.lenovo.browser"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 966
    const-string v3, "com.lenovo.browser"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$2600(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 974
    .local v1, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 976
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    :cond_1
    const/high16 v4, 0x1040

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 979
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->access$2500(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 981
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 982
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v5, 0x0

    #setter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v5}, Landroid/net/CaptivePortalTracker;->access$402(Landroid/net/CaptivePortalTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 984
    return-void

    .line 968
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 970
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CaptivePortalTracker"

    const-string v5, "Lenovo Browser NOT exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v3, 0x0

    goto :goto_0
.end method
