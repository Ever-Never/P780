.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field private final mAppWidgetServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mLocale:Ljava/util/Locale;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mSafeMode:Z

.field private final mSaveStateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 385
    new-instance v2, Lcom/android/server/AppWidgetService$2;

    invoke-direct {v2, p0}, Lcom/android/server/AppWidgetService$2;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v2, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AppWidgetService -- Save state"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/AppWidgetService;->mSaveStateHandler:Landroid/os/Handler;

    .line 72
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    .line 73
    new-instance v1, Lcom/android/server/AppWidgetServiceImpl;

    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mSaveStateHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v4, v2}, Lcom/android/server/AppWidgetServiceImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 74
    .local v1, primary:Lcom/android/server/AppWidgetServiceImpl;
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetService;I)Lcom/android/server/AppWidgetServiceImpl;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getCallingOrCurrentUserId()I
    .locals 4

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 143
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 146
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return v2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, re:Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    goto :goto_0

    .line 151
    .end local v1           #re:Landroid/os/RemoteException;
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    goto :goto_0
.end method

.method private getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;
    .locals 6
    .parameter "userId"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, sendInitial:Z
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v3

    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl;

    .line 269
    .local v1, service:Lcom/android/server/AppWidgetServiceImpl;
    if-nez v1, :cond_0

    .line 270
    const-string v2, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find AppWidgetServiceImpl for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Lcom/android/server/AppWidgetServiceImpl;

    .end local v1           #service:Lcom/android/server/AppWidgetServiceImpl;
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mSaveStateHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v4}, Lcom/android/server/AppWidgetServiceImpl;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 273
    .restart local v1       #service:Lcom/android/server/AppWidgetServiceImpl;
    iget-boolean v2, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V

    .line 275
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 276
    const/4 v0, 0x1

    .line 278
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v1}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V

    .line 282
    :cond_1
    return-object v1

    .line 278
    .end local v1           #service:Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 1
    .parameter "packageName"
    .parameter "hostId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 1
    .parameter "appWidgetId"
    .parameter "provider"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "packageName"
    .parameter "appWidgetId"
    .parameter "provider"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "connection"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from non-system process. Calling uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 219
    return-void
.end method

.method public deleteAllHosts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->deleteAllHosts()V

    .line 179
    return-void
.end method

.method public deleteAppWidgetId(I)V
    .locals 1
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetId(I)V

    .line 169
    return-void
.end method

.method public deleteHost(I)V
    .locals 1
    .parameter "hostId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHost(I)V

    .line 174
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 370
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "AppWidgetService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v4

    .line 374
    :try_start_0
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v1, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 375
    .local v1, ipw:Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 378
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl;

    .line 379
    .local v2, service:Lcom/android/server/AppWidgetServiceImpl;
    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/AppWidgetServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v2           #service:Lcom/android/server/AppWidgetServiceImpl;
    :cond_0
    monitor-exit v4

    .line 383
    return-void

    .line 382
    .end local v0           #i:I
    .end local v1           #ipw:Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 1
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetIdsForHost(I)[I
    .locals 1
    .parameter "hostId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIdsForHost(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .locals 1
    .parameter "categoryFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 1
    .parameter "appWidgetIds"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChanged([II)V

    .line 321
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 240
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl;

    .line 243
    .local v0, impl:Lcom/android/server/AppWidgetServiceImpl;
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 245
    if-nez v0, :cond_1

    .line 246
    invoke-static {p1}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 250
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #impl:Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 248
    .restart local v0       #impl:Lcom/android/server/AppWidgetServiceImpl;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->onUserRemoved()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onUserStopping(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 254
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl;

    .line 257
    .local v0, impl:Lcom/android/server/AppWidgetServiceImpl;
    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 259
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->onUserStopping()V

    .line 261
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #impl:Lcom/android/server/AppWidgetServiceImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 1
    .parameter "appWidgetIds"
    .parameter "views"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 328
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 207
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .locals 1
    .parameter "host"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public startListeningAsUser(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;I)[I
    .locals 3
    .parameter "host"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from non-system process. Calling uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-direct {p0, p5}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public stopListening(I)V
    .locals 1
    .parameter "hostId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->stopListening(I)V

    .line 333
    return-void
.end method

.method public stopListeningAsUser(II)V
    .locals 3
    .parameter "hostId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from non-system process. Calling uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->stopListening(I)V

    .line 343
    return-void
.end method

.method public systemReady(Z)V
    .locals 17
    .parameter "safeMode"

    .prologue
    .line 78
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v5, ipoFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v2, "package"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v13, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v16, userFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.intent.action.USER_STOPPING"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/AppWidgetService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;I)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from non-system process. Calling uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 1
    .parameter "appWidgetIds"
    .parameter "views"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 360
    return-void
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "appWidgetId"
    .parameter "options"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 303
    return-void
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "provider"
    .parameter "views"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getCallingOrCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 366
    return-void
.end method
