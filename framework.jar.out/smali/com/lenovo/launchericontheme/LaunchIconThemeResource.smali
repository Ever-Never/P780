.class public Lcom/lenovo/launchericontheme/LaunchIconThemeResource;
.super Ljava/lang/Object;
.source "LaunchIconThemeResource.java"


# static fields
.field private static final DBG:Z = true

.field public static final SUPPORT_LAUNCHICON_THEME:Z = true

.field private static final TAG:Ljava/lang/String; = "LaunchIconThemeResource"

.field public static final sDEFAULT_THEME:Ljava/lang/String; = ">DEFAULT THEME"

.field public static final sDEFAULT_THEME_NAME:Ljava/lang/String; = "com.lenovo.launcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopThemeObserver:Landroid/database/ContentObserver;

.field mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

.field mLock:Ljava/lang/Object;

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    .line 49
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    .line 50
    const-string v1, "LaunchIconThemeService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    .line 51
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lenovo_desktop_theme"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lenovo_desktop_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, themePackageName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->setSystemTheme(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .parameter "themePackageName"

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResourcesForApplication failed, packagename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    const/4 v3, 0x0

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, ret:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 123
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    if-nez v5, :cond_1

    .line 124
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    return-object v3

    .line 128
    :cond_1
    const/4 v2, 0x0

    .line 132
    .local v2, themeIconID:I
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    invoke-interface {v5, p1, p2}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService;->getDrawableIconIDFromThemePackage(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 140
    :goto_1
    if-nez v2, :cond_2

    .line 141
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .line 153
    .end local v2           #themeIconID:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 134
    .restart local v2       #themeIconID:I
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "LaunchIconThemeResource"

    const-string v6, "getDrawableIconIDFromThemePackage failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    const/4 v2, 0x0

    goto :goto_1

    .line 145
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 152
    :goto_2
    :try_start_5
    monitor-exit v4

    move-object v3, v1

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 149
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeResource"

    const-string v5, "getDrawable failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    const/4 v1, 0x0

    goto :goto_2
.end method

.method setSystemTheme(Ljava/lang/String;)V
    .locals 4
    .parameter "themePackageName"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 67
    :cond_1
    monitor-exit v1

    .line 94
    :goto_0
    return-void

    .line 70
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p1, :cond_6

    const-string v0, ">DEFAULT THEME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    :cond_3
    const-string v0, "com.lenovo.launcher"

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 81
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 93
    :cond_5
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    :cond_6
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    goto :goto_1

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 89
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-nez v0, :cond_5

    .line 90
    const-string v0, "LaunchIconThemeResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to createThemeResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
