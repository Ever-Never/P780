.class final Landroid/view/InputEventConsistencyVerifier$KeyState;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEventConsistencyVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyState"
.end annotation


# static fields
.field private static mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private static mRecycledListLock:Ljava/lang/Object;


# instance fields
.field public deviceId:I

.field public keyCode:I

.field public next:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field public source:I

.field public unhandled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 720
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 729
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 730
    return-void
.end method

.method public static obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .locals 3
    .parameter "deviceId"
    .parameter "source"
    .parameter "keyCode"

    .prologue
    .line 734
    sget-object v2, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 735
    :try_start_0
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 736
    .local v0, state:Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v0, :cond_0

    .line 737
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 741
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    iput p0, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    .line 743
    iput p1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    .line 744
    iput p2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    .line 745
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 746
    return-object v0

    .line 739
    :cond_0
    :try_start_1
    new-instance v0, Landroid/view/InputEventConsistencyVerifier$KeyState;

    .end local v0           #state:Landroid/view/InputEventConsistencyVerifier$KeyState;
    invoke-direct {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;-><init>()V

    .restart local v0       #state:Landroid/view/InputEventConsistencyVerifier$KeyState;
    goto :goto_0

    .line 741
    .end local v0           #state:Landroid/view/InputEventConsistencyVerifier$KeyState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 2

    .prologue
    .line 750
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_0
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 752
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 753
    monitor-exit v1

    .line 754
    return-void

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
