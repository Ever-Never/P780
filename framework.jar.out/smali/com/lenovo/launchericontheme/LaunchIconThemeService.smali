.class public Lcom/lenovo/launchericontheme/LaunchIconThemeService;
.super Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;
.source "LaunchIconThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;,
        Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final DEBUG_LOADERS:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "LaunchIconThemeService"

.field static final TAG:Ljava/lang/String; = "LaunchIconThemeService"

.field public static final THEME_FIELD_NAME:Ljava/lang/String; = "lenovo_desktop_theme"


# instance fields
.field public final DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String;

.field mComponent2Iconid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDesktopThemeObserver:Landroid/database/ContentObserver;

.field mIconIDSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLock:Ljava/lang/Object;

.field mSystemReady:Z

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field mThemePackageName:Ljava/lang/String;

.field mThemeResource:Landroid/content/res/Resources;

.field sWorker:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;-><init>()V

    .line 45
    const-string v0, "com.lenovo.launcher.theme.classic"

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mIconIDSet:Ljava/util/HashSet;

    .line 64
    new-instance v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    .line 166
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    .line 167
    return-void
.end method

.method private add(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->findActivity(Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addIconResNameForPackage(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method private addIconResNameForPackage(Landroid/content/pm/ActivityInfo;)V
    .locals 16
    .parameter "activityInfo"

    .prologue
    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 371
    .local v2, iconId:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 372
    .local v8, pkg:Ljava/lang/String;
    const/4 v10, 0x0

    .line 376
    .local v10, res:Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 384
    if-nez v2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Ljava/lang/Exception;
    const-string v13, "LaunchIconThemeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResourcesForApplication failed, packagename="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 388
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v12, 0x0

    .line 392
    .local v12, s:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 400
    if-eqz v12, :cond_0

    .line 403
    new-instance v3, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    invoke-direct {v3}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;-><init>()V

    .line 404
    .local v3, iconItem:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v13, v3, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mClass:Ljava/lang/String;

    .line 405
    iput v2, v3, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mIconId:I

    .line 407
    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 408
    .local v4, indexColon:I
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 409
    .local v5, indexSeperator:I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_2

    const/4 v13, -0x1

    if-eq v5, v13, :cond_2

    .line 410
    const/4 v13, 0x0

    invoke-virtual {v12, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v9, 0x1

    .line 413
    .local v9, pkgNotEquals:Z
    :goto_1
    const-string v13, "."

    const-string v14, "_"

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 414
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 416
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "__"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 417
    .local v11, resName:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName1:Ljava/lang/String;

    .line 419
    if-eqz v9, :cond_2

    .line 420
    move-object v7, v8

    .line 421
    const-string v13, "."

    const-string v14, "_"

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 422
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "__"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 423
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName2:Ljava/lang/String;

    .line 427
    .end local v7           #packageName:Ljava/lang/String;
    .end local v9           #pkgNotEquals:Z
    .end local v11           #resName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mIconIDSet:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    const/4 v6, 0x0

    .line 431
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    check-cast v6, Ljava/util/ArrayList;

    .line 434
    .restart local v6       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    :cond_3
    if-nez v6, :cond_4

    .line 435
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    const/4 v13, 0x1

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .restart local v6       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 394
    .end local v3           #iconItem:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .end local v4           #indexColon:I
    .end local v5           #indexSeperator:I
    .end local v6           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    :catch_1
    move-exception v1

    .line 396
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v13, "LaunchIconThemeService"

    const-string v14, "getResourceName failed!"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 411
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #iconItem:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .restart local v4       #indexColon:I
    .restart local v5       #indexSeperator:I
    .restart local v7       #packageName:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 334
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 335
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static findActivity(Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Z
    .locals 9
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;",
            ">;>;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, apps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;"
    const/4 v7, 0x0

    .line 346
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 348
    .local v1, entrysets:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 365
    :goto_0
    return v6

    .line 351
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 354
    .local v4, iconItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 356
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    .line 358
    .local v5, item:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    iget-object v6, v5, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mClass:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 359
    const/4 v6, 0x1

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iconItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    .end local v5           #item:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    :cond_4
    move v6, v7

    .line 365
    goto :goto_0
.end method

.method private loadLaunchIconId(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v7, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 262
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 265
    .local v5, manager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 267
    .local v1, activityCount:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 268
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 269
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v6}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addIconResNameForPackage(Landroid/content/pm/ActivityInfo;)V

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    .end local v1           #activityCount:I
    .end local v2           #i:I
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 271
    .restart local v1       #activityCount:I
    .restart local v2       #i:I
    :cond_1
    monitor-exit v7

    .line 272
    return-void

    .line 271
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #activityCount:I
    .end local v2           #i:I
    .end local v4           #mainIntent:Landroid/content/Intent;
    .end local v5           #manager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 279
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 281
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 283
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "LaunchIconThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackage: packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", matches = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 287
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->add(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 290
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    return-void
.end method

.method createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .parameter "themePackageName"

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 239
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 251
    :cond_0
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeService"

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

    .line 247
    const/4 v2, 0x0

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public getDrawableIconIDFromThemePackage(Ljava/lang/String;I)I
    .locals 9
    .parameter "packageName"
    .parameter "iconID"

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-boolean v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    if-nez v5, :cond_0

    move v3, v4

    .line 479
    :goto_0
    return v3

    .line 447
    :cond_0
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    if-nez v5, :cond_2

    :cond_1
    move v3, v4

    .line 448
    goto :goto_0

    .line 450
    :cond_2
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 452
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mIconIDSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 453
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 455
    :cond_3
    iget-object v6, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 456
    .local v2, iconItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 457
    :cond_4
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 459
    :cond_5
    const/4 v3, 0x0

    .line 461
    .local v3, resID:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    .line 463
    .local v1, iconItem:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    iget v6, v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mIconId:I

    if-ne v6, p2, :cond_6

    .line 465
    iget-object v4, v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName1:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 466
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    iget-object v6, v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName1:Ljava/lang/String;

    const-string v7, "drawable"

    iget-object v8, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 468
    :cond_7
    if-eqz v3, :cond_8

    .line 469
    monitor-exit v5

    goto :goto_0

    .line 477
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #iconItem:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .end local v2           #iconItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    .end local v3           #resID:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 471
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #iconItem:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .restart local v2       #iconItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    .restart local v3       #resID:I
    :cond_8
    :try_start_1
    iget-object v4, v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName2:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 472
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    iget-object v6, v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName2:Ljava/lang/String;

    const-string v7, "drawable"

    iget-object v8, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 474
    :cond_9
    monitor-exit v5

    goto :goto_0

    .line 477
    .end local v1           #iconItem:Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    :cond_a
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 479
    goto :goto_0
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 298
    const-string v0, "LaunchIconThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackage: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSystemTheme(Ljava/lang/String;)V
    .locals 4
    .parameter "themePackageName"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    if-eqz p1, :cond_3

    const-string v1, ">DEFAULT THEME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    :cond_0
    const-string v1, "com.lenovo.launcher"

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    .line 210
    :goto_0
    const-string v1, "LaunchIconThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSystemTheme mThemePackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 212
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    .line 233
    :cond_2
    :goto_1
    return-void

    .line 206
    :cond_3
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_4
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    .line 220
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v1, :cond_5

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 224
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    if-nez v1, :cond_2

    .line 230
    const-string v1, "LaunchIconThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to createThemeResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 171
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->loadLaunchIconId(Landroid/content/Context;)V

    .line 173
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lenovo_desktop_theme"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lenovo_desktop_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, themePackageName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->setSystemTheme(Ljava/lang/String;)V

    .line 181
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->sWorker:Landroid/os/Handler;

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    .line 197
    return-void
.end method

.method updatePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 311
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->removePackage(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addPackage(Ljava/lang/String;)V

    .line 315
    monitor-exit v1

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
