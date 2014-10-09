.class Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LaunchIconThemeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/launchericontheme/LaunchIconThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;


# direct methods
.method public constructor <init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mOp:I

    .line 124
    iput-object p3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 129
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 130
    .local v2, packages:[Ljava/lang/String;
    array-length v0, v2

    .line 131
    .local v0, N:I
    iget v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mOp:I

    packed-switch v3, :pswitch_data_0

    .line 152
    :cond_0
    return-void

    .line 133
    :pswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 134
    const-string v3, "LaunchIconThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllAppsList.addPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addPackage(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1           #i:I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 140
    const-string v3, "LaunchIconThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllAppsList.updatePackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->updatePackage(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    .end local v1           #i:I
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 147
    const-string v3, "LaunchIconThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllAppsList.removePackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->removePackage(Ljava/lang/String;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
