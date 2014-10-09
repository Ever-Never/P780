.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$ThemeElement;,
        Landroid/content/res/Resources$TabRes;,
        Landroid/content/res/Resources$SwitchRes;,
        Landroid/content/res/Resources$TitleColor;,
        Landroid/content/res/Resources$SeekBarRes;,
        Landroid/content/res/Resources$DialogRes;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;
    }
.end annotation


# static fields
.field public static final CHECKBOX_RES:I = 0x0

.field private static final DEBUG_ATTRIBUTES_CACHE:Z = false

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final DEBUG_THEME:Z = false

.field private static final DEFAULT_THEME_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final ID_OTHER:I = 0x1000004

.field public static final MAX_ELEMENT_COUNT:I = 0x5

.field public static final RADIOBUTTON_RES:I = 0x1

.field public static final SEEKBAR_RES:I = 0x2

.field private static final STR_COLOR:Ljava/lang/String; = "color"

.field private static final STR_TYPE_THEME_PREVIEW:Ljava/lang/String; = "previewtheme"

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final THEME_COLOR_PATH:Ljava/lang/String; = "assets/color/colors.xml"

.field private static final TRACE_FOR_MISS_PRELOAD:Z

.field private static final TRACE_FOR_PRELOAD:Z

.field private static mLaunchIconThemeLock:Ljava/lang/Object;

.field private static mLaunchIconThemeResource:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

.field private static mMtkColorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreferenceColor:[Landroid/content/res/ColorStateList;

.field private static final mSync:Ljava/lang/Object;

.field static mSystem:Landroid/content/res/Resources;

.field private static mSystemThemeLock:Ljava/lang/Object;

.field private static mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I

.field private static final sPreloadedDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static themeRes:Landroid/content/res/Resources;


# instance fields
.field public isThemeRes:Z

.field final mAssets:Landroid/content/res/AssetManager;

.field mCachedStyledAttributes:Landroid/content/res/TypedArray;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorStateListCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsSystemThemeRes:Z

.field private mLastCachedXmlBlockIndex:I

.field mLastRetrievedAttrs:Ljava/lang/RuntimeException;

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mPackageNameLM:Ljava/lang/String;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field final mTmpConfig:Landroid/content/res/Configuration;

.field final mTmpValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    .line 107
    sput-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 112
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    .line 114
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    .line 116
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 135
    sput-object v1, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    .line 148
    sput-object v1, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    .line 161
    sput-object v1, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    .line 170
    sput-object v1, Landroid/content/res/Resources;->mLaunchIconThemeResource:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mLaunchIconThemeLock:Ljava/lang/Object;

    .line 3287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3044
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 125
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 127
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 129
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 147
    iput-boolean v1, p0, Landroid/content/res/Resources;->isThemeRes:Z

    .line 156
    iput-boolean v1, p0, Landroid/content/res/Resources;->mIsSystemThemeRes:Z

    .line 175
    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 176
    iput-object v2, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 179
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 180
    new-array v0, v3, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 183
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 184
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 3045
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 3049
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3050
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 3052
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getFontPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    .line 3054
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 3055
    invoke-virtual {p0, v2, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3056
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 3057
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3058
    return-void

    .line 179
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 688
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 689
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 4
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 704
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 125
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 127
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 129
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 147
    iput-boolean v1, p0, Landroid/content/res/Resources;->isThemeRes:Z

    .line 156
    iput-boolean v1, p0, Landroid/content/res/Resources;->mIsSystemThemeRes:Z

    .line 175
    iput-object v3, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 176
    iput-object v3, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 179
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 180
    new-array v0, v2, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 183
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 184
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 705
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 706
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 707
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 708
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 709
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 710
    return-void

    .line 179
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 798
    packed-switch p0, :pswitch_data_0

    .line 804
    const v0, 0x1000004

    :goto_0
    return v0

    .line 799
    :pswitch_0
    const v0, 0x1000005

    goto :goto_0

    .line 800
    :pswitch_1
    const v0, 0x1000006

    goto :goto_0

    .line 801
    :pswitch_2
    const v0, 0x1000007

    goto :goto_0

    .line 802
    :pswitch_3
    const v0, 0x1000008

    goto :goto_0

    .line 803
    :pswitch_4
    const v0, 0x1000009

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private clearDrawableCache(Landroid/util/LongSparseArray;I)V
    .locals 5
    .parameter
    .parameter "configChanges"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 2312
    .local p1, cache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2317
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2318
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 2319
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_0

    .line 2320
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2321
    .local v1, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 2322
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2330
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2317
    .end local v1           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2341
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    return-void
.end method

.method public static createLaunchIconThemeIfNeeded(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 4029
    sget-object v2, Landroid/content/res/Resources;->mLaunchIconThemeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4030
    :try_start_0
    sget-object v1, Landroid/content/res/Resources;->mLaunchIconThemeResource:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    if-eqz v1, :cond_0

    .line 4031
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4041
    :goto_0
    return-void

    .line 4035
    :cond_0
    :try_start_1
    new-instance v1, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    invoke-direct {v1, p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/content/res/Resources;->mLaunchIconThemeResource:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4040
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4036
    :catch_0
    move-exception v0

    .line 4037
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SystemTheme/Resources"

    const-string v3, "createLaunchIconThemeIfNeeded: new LaunchIconThemeResource failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4038
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/Resources;->mLaunchIconThemeResource:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static createSystemThemeIfNeeded(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3970
    sget-object v2, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3971
    :try_start_0
    sget-object v1, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    if-eqz v1, :cond_0

    .line 3972
    monitor-exit v2

    .line 3988
    :goto_0
    return-void

    .line 3975
    :cond_0
    const-string v1, "SystemTheme/Resources"

    const-string v3, "createSystemThemeIfNeeded"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3978
    :try_start_1
    new-instance v1, Lcom/lenovo/systemtheme/SystemThemeResource;

    invoke-direct {v1, p0}, Lcom/lenovo/systemtheme/SystemThemeResource;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3987
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3979
    :catch_0
    move-exception v0

    .line 3980
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SystemTheme/Resources"

    const-string v3, "createSystemThemeIfNeeded: new SystemThemeResource fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3984
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    .line 3985
    invoke-static {}, Lcom/lenovo/systemtheme/SystemThemeResource;->resetSystemThemeToLenovoDefault()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1
    .parameter "context"

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forceSystemThemeToBeRecreated()V
    .locals 3

    .prologue
    .line 3996
    sget-object v1, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3998
    :try_start_0
    const-string v0, "SystemTheme/Resources"

    const-string v2, "forceSystemThemeToBeRecreated"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    .line 4001
    monitor-exit v1

    .line 4002
    return-void

    .line 4001
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private generateCurrentDensitySuffix()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0xf0

    const/16 v5, 0xa0

    .line 3263
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3264
    .local v0, density:I
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeManager density= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    const-string/jumbo v1, "mdpi/"

    .line 3266
    .local v1, densityString:Ljava/lang/String;
    const/16 v2, 0x78

    if-lt v0, v2, :cond_1

    if-ge v0, v5, :cond_1

    .line 3267
    const-string/jumbo v1, "ldpi/"

    .line 3275
    :cond_0
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeManager densityString= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    return-object v1

    .line 3268
    :cond_1
    if-lt v0, v5, :cond_2

    if-ge v0, v6, :cond_2

    .line 3269
    const-string/jumbo v1, "mdpi/"

    goto :goto_0

    .line 3270
    :cond_2
    if-lt v0, v6, :cond_3

    if-ge v0, v7, :cond_3

    .line 3271
    const-string v1, "hdpi/"

    goto :goto_0

    .line 3272
    :cond_3
    if-lt v0, v7, :cond_0

    .line 3273
    const-string/jumbo v1, "xhdpi/"

    goto :goto_0
.end method

.method private getCachedColorStateList(J)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter "key"

    .prologue
    .line 2929
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2930
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2931
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v1, :cond_1

    .line 2932
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2933
    .local v0, entry:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 2937
    monitor-exit v3

    .line 2943
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .line 2939
    .restart local v0       #entry:Landroid/content/res/ColorStateList;
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2942
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :cond_1
    monitor-exit v3

    .line 2943
    const/4 v0, 0x0

    goto :goto_0

    .line 2942
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2824
    .local p1, drawableCache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2825
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2826
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 2827
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2828
    .local v0, entry:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 2832
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 2839
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 2835
    .restart local v0       #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2838
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 2839
    const/4 v2, 0x0

    goto :goto_0

    .line 2838
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "len"

    .prologue
    .line 3011
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 3012
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 3013
    .local v0, attrs:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 3014
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 3020
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 3021
    mul-int/lit8 v1, p1, 0x6

    .line 3022
    .local v1, fullLen:I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 3023
    monitor-exit v3

    .line 3038
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :goto_0
    return-object v0

    .line 3025
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    .restart local v1       #fullLen:I
    :cond_0
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 3026
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 3027
    monitor-exit v3

    goto :goto_0

    .line 3041
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3038
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/res/TypedArray;

    .end local v0           #attrs:Landroid/content/res/TypedArray;
    mul-int/lit8 v2, p1, 0x6

    new-array v2, v2, [I

    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    invoke-direct {v0, p0, v2, v4, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getElementElements(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources$ThemeElement;I)V
    .locals 17
    .parameter "context"
    .parameter "strPackageName"
    .parameter "element"
    .parameter "themeNameId"

    .prologue
    .line 3291
    if-eqz p3, :cond_14

    if-eqz p2, :cond_14

    if-eqz p1, :cond_14

    .line 3292
    const-string v14, "android"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 3293
    new-instance v9, Landroid/content/res/Resources$TitleColor;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/content/res/Resources$TitleColor;-><init>(Landroid/content/res/Resources;)V

    .line 3294
    .local v9, default_titlecolor:Landroid/content/res/Resources$TitleColor;
    const v14, #android:color@primary_text_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->title:Landroid/content/res/ColorStateList;

    .line 3295
    const v14, #android:color@secondary_text_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->categroy:Landroid/content/res/ColorStateList;

    .line 3296
    const v14, #android:color@primary_text_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->preference:Landroid/content/res/ColorStateList;

    .line 3297
    const v14, #android:color@secondary_text_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->summary:Landroid/content/res/ColorStateList;

    .line 3298
    const v14, 0x30b0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Landroid/content/res/Resources$TitleColor;->strName:Ljava/lang/String;

    .line 3299
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3301
    const/4 v8, 0x0

    .line 3302
    .local v8, default_temp:Landroid/graphics/drawable/Drawable;
    const v14, 0x3080046

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3303
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3304
    const v14, 0x3080024

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3305
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mCheckBoxList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3306
    const v14, 0x308004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3307
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mRadioButonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3309
    new-instance v6, Landroid/content/res/Resources$SwitchRes;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/content/res/Resources$SwitchRes;-><init>(Landroid/content/res/Resources;)V

    .line 3310
    .local v6, default_switchbtn:Landroid/content/res/Resources$SwitchRes;
    const v14, #android:drawable@switch_track_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v6, Landroid/content/res/Resources$SwitchRes;->track:Landroid/graphics/drawable/Drawable;

    .line 3311
    const v14, #android:drawable@switch_inner_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v6, Landroid/content/res/Resources$SwitchRes;->inner:Landroid/graphics/drawable/Drawable;

    .line 3312
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3314
    new-instance v5, Landroid/content/res/Resources$SeekBarRes;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/content/res/Resources$SeekBarRes;-><init>(Landroid/content/res/Resources;)V

    .line 3315
    .local v5, default_seekbar:Landroid/content/res/Resources$SeekBarRes;
    const v14, #android:drawable@scrubber_progress_horizontal_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v5, Landroid/content/res/Resources$SeekBarRes;->progressbackground:Landroid/graphics/drawable/Drawable;

    .line 3316
    const v14, #android:drawable@scrubber_progress_horizontal_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v5, Landroid/content/res/Resources$SeekBarRes;->indeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 3317
    const v14, #android:drawable@scrubber_control_selector_holo#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v5, Landroid/content/res/Resources$SeekBarRes;->thumb:Landroid/graphics/drawable/Drawable;

    .line 3318
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3320
    const v14, 0x3080010

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3321
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitleBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3323
    const v14, 0x3080135

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3324
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSectionLine:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3326
    new-instance v7, Landroid/content/res/Resources$TabRes;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/content/res/Resources$TabRes;-><init>(Landroid/content/res/Resources;)V

    .line 3327
    .local v7, default_tab:Landroid/content/res/Resources$TabRes;
    const/4 v14, 0x0

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->strip_left:Landroid/graphics/drawable/Drawable;

    .line 3328
    const/4 v14, 0x0

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->strip_right:Landroid/graphics/drawable/Drawable;

    .line 3329
    const v14, 0x30801ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->tab_indicator:Landroid/graphics/drawable/Drawable;

    .line 3330
    const v14, 0x3080065

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v7, Landroid/content/res/Resources$TabRes;->preview:Landroid/graphics/drawable/Drawable;

    .line 3331
    const/4 v14, 0x0

    iput v14, v7, Landroid/content/res/Resources$TabRes;->resid:I

    .line 3332
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTabBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3334
    new-instance v4, Landroid/content/res/Resources$DialogRes;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/content/res/Resources$DialogRes;-><init>(Landroid/content/res/Resources;)V

    .line 3335
    .local v4, default_dialog:Landroid/content/res/Resources$DialogRes;
    const v14, 0x3080070

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->top:Landroid/graphics/drawable/Drawable;

    .line 3336
    const v14, 0x308006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->center:Landroid/graphics/drawable/Drawable;

    .line 3337
    const v14, 0x3080067

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->bottom:Landroid/graphics/drawable/Drawable;

    .line 3338
    const v14, 0x3080069

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->full:Landroid/graphics/drawable/Drawable;

    .line 3339
    const v14, 0x308006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v4, Landroid/content/res/Resources$DialogRes;->preview:Landroid/graphics/drawable/Drawable;

    .line 3340
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3343
    .local v1, Pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_14

    .line 3345
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 3346
    .local v12, r:Landroid/content/res/Resources;
    if-eqz v12, :cond_14

    .line 3347
    move-object/from16 v0, p3

    iput-object v12, v0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    .line 3348
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->strThemeName:Ljava/lang/String;

    .line 3349
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 3350
    .local v11, info:Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_13

    .line 3351
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlecolors:[I

    if-eqz v14, :cond_1

    .line 3352
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlecolors:[I

    array-length v14, v14

    if-ge v10, v14, :cond_1

    .line 3353
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlecolors:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getTitleColors(I)Landroid/content/res/Resources$TitleColor;

    move-result-object v2

    .line 3354
    .local v2, color:Landroid/content/res/Resources$TitleColor;
    if-eqz v2, :cond_0

    .line 3355
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3352
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3360
    .end local v2           #color:Landroid/content/res/Resources$TitleColor;
    .end local v10           #i:I
    :cond_1
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    if-eqz v14, :cond_3

    .line 3361
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    .line 3362
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3363
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    array-length v14, v14

    if-ge v10, v14, :cond_3

    .line 3364
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    aget v14, v14, v10

    if-lez v14, :cond_2

    .line 3365
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3366
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 3367
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->buttonbackground:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3368
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3363
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3374
    .end local v10           #i:I
    :cond_3
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    if-eqz v14, :cond_5

    .line 3375
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_5

    .line 3376
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    aget v14, v14, v10

    if-lez v14, :cond_4

    .line 3377
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->dialogres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDialogRes(I)Landroid/content/res/Resources$DialogRes;

    move-result-object v3

    .line 3378
    .local v3, d:Landroid/content/res/Resources$DialogRes;
    if-eqz v3, :cond_4

    .line 3379
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3375
    .end local v3           #d:Landroid/content/res/Resources$DialogRes;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3385
    .end local v10           #i:I
    :cond_5
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    if-eqz v14, :cond_7

    .line 3386
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_7

    .line 3387
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    aget v14, v14, v10

    if-lez v14, :cond_6

    .line 3388
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->seekbarres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getSeekBar(I)Landroid/content/res/Resources$SeekBarRes;

    move-result-object v3

    .line 3389
    .local v3, d:Landroid/content/res/Resources$SeekBarRes;
    if-eqz v3, :cond_6

    .line 3390
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3386
    .end local v3           #d:Landroid/content/res/Resources$SeekBarRes;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3396
    .end local v10           #i:I
    :cond_7
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    if-eqz v14, :cond_9

    .line 3397
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_9

    .line 3398
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    aget v14, v14, v10

    if-lez v14, :cond_8

    .line 3399
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->switchres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getSwitchRes(I)Landroid/content/res/Resources$SwitchRes;

    move-result-object v3

    .line 3400
    .local v3, d:Landroid/content/res/Resources$SwitchRes;
    if-eqz v3, :cond_8

    .line 3401
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3397
    .end local v3           #d:Landroid/content/res/Resources$SwitchRes;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 3407
    .end local v10           #i:I
    :cond_9
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    if-eqz v14, :cond_b

    .line 3408
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    .line 3409
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3410
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_b

    .line 3411
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    aget v14, v14, v10

    if-lez v14, :cond_a

    .line 3412
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3413
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_a

    .line 3414
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->checkboxres:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3415
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mCheckBoxList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3410
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3421
    .end local v10           #i:I
    :cond_b
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    if-eqz v14, :cond_d

    .line 3422
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    .line 3423
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3424
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_6
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_d

    .line 3425
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    aget v14, v14, v10

    if-lez v14, :cond_c

    .line 3426
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3427
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_c

    .line 3428
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->radiobuttonres:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3429
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mRadioButonList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3424
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 3435
    .end local v10           #i:I
    :cond_d
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    if-eqz v14, :cond_f

    .line 3436
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    .line 3437
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3438
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_7
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    array-length v14, v14

    if-ge v10, v14, :cond_f

    .line 3439
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    aget v14, v14, v10

    if-lez v14, :cond_e

    .line 3440
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3441
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_e

    .line 3442
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->titlebackground:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3443
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTitleBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3438
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 3449
    .end local v10           #i:I
    :cond_f
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    if-eqz v14, :cond_11

    .line 3450
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    array-length v14, v14

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    .line 3451
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 3452
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_8
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    array-length v14, v14

    if-ge v10, v14, :cond_11

    .line 3453
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    aget v14, v14, v10

    if-lez v14, :cond_10

    .line 3454
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3455
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_10

    .line 3456
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    add-int/lit8 v15, v10, 0x1

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->sectionlineres:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v14, v15

    .line 3457
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mSectionLine:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3452
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 3463
    .end local v10           #i:I
    :cond_11
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    if-eqz v14, :cond_13

    .line 3464
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_9
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    array-length v14, v14

    if-ge v10, v14, :cond_13

    .line 3465
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    aget v14, v14, v10

    if-lez v14, :cond_12

    .line 3466
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->tabbackground:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getTabRes(I)Landroid/content/res/Resources$TabRes;

    move-result-object v13

    .line 3467
    .local v13, tab:Landroid/content/res/Resources$TabRes;
    if-eqz v13, :cond_12

    .line 3468
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mTabBackground:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3464
    .end local v13           #tab:Landroid/content/res/Resources$TabRes;
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 3475
    .end local v10           #i:I
    :cond_13
    const v14, #android:drawable@divider_horizontal_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3476
    const/4 v14, 0x0

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 3477
    const v14, #android:color@primary_text_holo_light#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->ButonColor:Landroid/content/res/ColorStateList;

    .line 3478
    const/4 v14, 0x0

    move-object/from16 v0, p3

    iput-object v14, v0, Landroid/content/res/Resources$ThemeElement;->mBottomBar:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3485
    .end local v1           #Pm:Landroid/content/pm/PackageManager;
    .end local v4           #default_dialog:Landroid/content/res/Resources$DialogRes;
    .end local v5           #default_seekbar:Landroid/content/res/Resources$SeekBarRes;
    .end local v6           #default_switchbtn:Landroid/content/res/Resources$SwitchRes;
    .end local v7           #default_tab:Landroid/content/res/Resources$TabRes;
    .end local v8           #default_temp:Landroid/graphics/drawable/Drawable;
    .end local v9           #default_titlecolor:Landroid/content/res/Resources$TitleColor;
    .end local v11           #info:Landroid/content/pm/PackageInfo;
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_14
    :goto_a
    return-void

    .line 3480
    .restart local v1       #Pm:Landroid/content/pm/PackageManager;
    .restart local v4       #default_dialog:Landroid/content/res/Resources$DialogRes;
    .restart local v5       #default_seekbar:Landroid/content/res/Resources$SeekBarRes;
    .restart local v6       #default_switchbtn:Landroid/content/res/Resources$SwitchRes;
    .restart local v7       #default_tab:Landroid/content/res/Resources$TabRes;
    .restart local v8       #default_temp:Landroid/graphics/drawable/Drawable;
    .restart local v9       #default_titlecolor:Landroid/content/res/Resources$TitleColor;
    :catch_0
    move-exception v14

    goto :goto_a
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    .prologue
    .line 789
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 793
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    monitor-exit v1

    return-object v0

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    sget-object v2, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .local v0, ret:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/BaiduResources;

    .end local v0           #ret:Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/BaiduResources;-><init>()V

    .restart local v0       #ret:Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getThemeButtonUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 613
    .local v0, nret:I
    return v0
.end method

.method public static getThemeListUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 585
    .local v0, nret:I
    return v0
.end method

.method public static getThemeMenuUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 599
    .local v0, nret:I
    return v0
.end method

.method public static getThemePanelUiResource(Landroid/content/Context;Z)I
    .locals 1
    .parameter "context"
    .parameter "bdark"

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 630
    .local v0, nret:I
    return v0
.end method

.method public static getThemeToastUiResource(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 645
    .local v0, nret:I
    return v0
.end method

.method private loadPreloadedColorResources()V
    .locals 8

    .prologue
    .line 3172
    const/4 v5, 0x0

    :try_start_0
    sput-boolean v5, Landroid/content/res/Resources;->sPreloaded:Z

    .line 3173
    invoke-virtual {p0}, Landroid/content/res/Resources;->startPreloading()V

    .line 3174
    const v5, #android:array@preloaded_color_state_lists#t

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3175
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3176
    .local v0, N:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3177
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3178
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3179
    .local v4, id:I
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preloading resource #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    if-eqz v4, :cond_0

    .line 3181
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 3177
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3184
    .end local v4           #id:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3188
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v3           #i:I
    :goto_1
    return-void

    .line 3185
    :catch_0
    move-exception v2

    .line 3186
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v5, "Resources"

    const-string v6, "Failure loading preloaded resources."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadPreloadedDrawableResources()V
    .locals 9

    .prologue
    .line 3146
    const/4 v6, 0x0

    :try_start_0
    sput-boolean v6, Landroid/content/res/Resources;->sPreloaded:Z

    .line 3147
    invoke-virtual {p0}, Landroid/content/res/Resources;->startPreloading()V

    .line 3148
    const v6, #android:array@preloaded_drawables#t

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3149
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3150
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3151
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 3152
    .local v5, id:I
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloading resource #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    if-eqz v5, :cond_0

    .line 3154
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3155
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    const v7, -0x40000001

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 3156
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloaded drawable resource #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") that varies with configuration!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3161
    .end local v5           #id:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3165
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #i:I
    :goto_1
    return-void

    .line 3162
    :catch_0
    move-exception v3

    .line 3163
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "Resources"

    const-string v7, "Failure loading preloaded resources."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static selectDefaultTheme(II)I
    .locals 3
    .parameter "curTheme"
    .parameter "targetSdkVersion"

    .prologue
    .line 191
    const v0, #android:style@Theme#t

    const v1, #android:style@Theme.Holo#t

    const v2, #android:style@Theme.DeviceDefault#t

    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIII)I
    .locals 1
    .parameter "curTheme"
    .parameter "targetSdkVersion"
    .parameter "orig"
    .parameter "holo"
    .parameter "deviceDefault"

    .prologue
    .line 652
    if-eqz p0, :cond_0

    .line 661
    .end local p0
    :goto_0
    return p0

    .line 655
    .restart local p0
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    move p0, p2

    .line 656
    goto :goto_0

    .line 658
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    move p0, p3

    .line 659
    goto :goto_0

    :cond_2
    move p0, p4

    .line 661
    goto :goto_0
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 809
    packed-switch p0, :pswitch_data_0

    .line 815
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 810
    :pswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 811
    :pswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 812
    :pswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 813
    :pswitch_3
    const-string v0, "few"

    goto :goto_0

    .line 814
    :pswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 2362
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2363
    return-void
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 2351
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 2352
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2356
    :cond_0
    return-void
.end method

.method private verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z
    .locals 5
    .parameter "value"
    .parameter "name"

    .prologue
    .line 2684
    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const v3, -0x40001001

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2688
    :try_start_0
    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2692
    .local v1, resName:Ljava/lang/String;
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") that varies with configuration!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    const/4 v2, 0x0

    .line 2697
    .end local v1           #resName:Ljava/lang/String;
    :goto_1
    return v2

    .line 2689
    :catch_0
    move-exception v0

    .line 2690
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    .restart local v1       #resName:Ljava/lang/String;
    goto :goto_0

    .line 2697
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #resName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 2677
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 2678
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 2679
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 2681
    :cond_0
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 6

    .prologue
    .line 2640
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 2642
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 2643
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2644
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 2645
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 2646
    .local v2, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    .line 2647
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 2649
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 2643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2651
    .end local v2           #oldBlock:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    .line 2652
    return-void

    .line 2651
    .end local v0           #i:I
    .end local v1           #num:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAndroidDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1276
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v1, :cond_0

    .line 1277
    const-string v1, "Resources"

    const-string/jumbo v2, "sPreloadedDrawables size is 0, reload preloaded resources."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedDrawableResources()V

    .line 1281
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1282
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1283
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1284
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1285
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1617
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1534
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1535
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1536
    .local v0, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1537
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    .line 1539
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1541
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1544
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColor(I)I
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1458
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 2395
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    goto :goto_0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDialogRes(I)Landroid/content/res/Resources$DialogRes;
    .locals 8
    .parameter "dialog_resid"

    .prologue
    .line 3569
    if-lez p1, :cond_3

    .line 3570
    const/4 v3, 0x0

    .line 3571
    .local v3, dialog_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3572
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3573
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3574
    .local v0, N:I
    new-array v3, v0, [I

    .line 3575
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3576
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 3577
    .local v5, id:I
    if-eqz v5, :cond_0

    .line 3578
    aput v5, v3, v4

    .line 3575
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3582
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    :cond_1
    if-eqz v3, :cond_3

    .line 3583
    new-instance v6, Landroid/content/res/Resources$DialogRes;

    invoke-direct {v6, p0}, Landroid/content/res/Resources$DialogRes;-><init>(Landroid/content/res/Resources;)V

    .line 3584
    .local v6, res:Landroid/content/res/Resources$DialogRes;
    iput p1, v6, Landroid/content/res/Resources$DialogRes;->resid:I

    .line 3585
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_4

    .line 3586
    aget v7, v3, v4

    if-lez v7, :cond_2

    .line 3587
    aget v7, v3, v4

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3588
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 3589
    packed-switch v4, :pswitch_data_0

    .line 3585
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3591
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->top:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3594
    :pswitch_1
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->center:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3597
    :pswitch_2
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->bottom:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3600
    :pswitch_3
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->full:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3603
    :pswitch_4
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->bottomMedium:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3606
    :pswitch_5
    iput-object v2, v6, Landroid/content/res/Resources$DialogRes;->preview:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3615
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #dialog_ids:[I
    .end local v4           #i:I
    .end local v6           #res:Landroid/content/res/Resources$DialogRes;
    :cond_3
    const/4 v6, 0x0

    :cond_4
    return-object v6

    .line 3589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDimension(I)F
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1041
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1042
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1043
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1044
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1046
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1072
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1073
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1074
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1075
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1076
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1079
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1082
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1107
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1108
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1109
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1110
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1113
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1116
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "id"
    .parameter "density"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1188
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/util/TypedValue;->density:I

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->density:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v1, v3

    div-int/2addr v1, p2

    iput v1, v0, Landroid/util/TypedValue;->density:I

    goto :goto_0

    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFraction(III)F
    .locals 5
    .parameter "id"
    .parameter "base"
    .parameter "pbase"

    .prologue
    .line 1137
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1138
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1139
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1140
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 1141
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1143
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1146
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    .line 2430
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2434
    :goto_0
    return v0

    .line 2431
    :catch_0
    move-exception v0

    .line 2434
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getIntArray(I)[I
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 987
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v0

    .line 988
    .local v0, res:[I
    if-eqz v0, :cond_0

    .line 989
    return-object v0

    .line 991
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1559
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1560
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1561
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1562
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_0

    .line 1564
    iget v1, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v2

    return v1

    .line 1566
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1569
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1593
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getLenovoDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1322
    const/4 v0, 0x0

    .line 1324
    .local v0, ret:Landroid/graphics/drawable/Drawable;
    sget-object v1, Landroid/content/res/Resources;->mLaunchIconThemeResource:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mPackageNameLM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1326
    sget-object v1, Landroid/content/res/Resources;->mLaunchIconThemeResource:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    iget-object v2, p0, Landroid/content/res/Resources;->mPackageNameLM:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1329
    :cond_0
    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1396
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 1398
    .local v1, movie:Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_0
    return-object v1

    .line 1400
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "quantity"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 773
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v2

    .line 774
    .local v2, rule:Llibcore/icu/NativePluralRules;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 776
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 781
    .end local v0           #res:Ljava/lang/CharSequence;
    .local v1, res:Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 779
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const v4, 0x1000004

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 781
    .end local v0           #res:Ljava/lang/CharSequence;
    .restart local v1       #res:Ljava/lang/CharSequence;
    goto :goto_0

    .line 783
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plural resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " quantity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2525
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 2526
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2527
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2452
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 2453
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2454
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2487
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2488
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2489
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2506
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 2507
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2508
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSeekBar(I)Landroid/content/res/Resources$SeekBarRes;
    .locals 8
    .parameter "seekbar_resid"

    .prologue
    .line 3619
    if-lez p1, :cond_3

    .line 3620
    const/4 v6, 0x0

    .line 3621
    .local v6, seekbar_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3622
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3623
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3624
    .local v0, N:I
    new-array v6, v0, [I

    .line 3625
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3626
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3627
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 3628
    aput v4, v6, v3

    .line 3625
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3632
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_1
    if-eqz v6, :cond_3

    .line 3633
    new-instance v5, Landroid/content/res/Resources$SeekBarRes;

    invoke-direct {v5, p0}, Landroid/content/res/Resources$SeekBarRes;-><init>(Landroid/content/res/Resources;)V

    .line 3634
    .local v5, res:Landroid/content/res/Resources$SeekBarRes;
    iput p1, v5, Landroid/content/res/Resources$SeekBarRes;->resid:I

    .line 3635
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 3636
    aget v7, v6, v3

    if-lez v7, :cond_2

    .line 3637
    aget v7, v6, v3

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3638
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 3639
    packed-switch v3, :pswitch_data_0

    .line 3635
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3641
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iput-object v2, v5, Landroid/content/res/Resources$SeekBarRes;->progressbackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3644
    :pswitch_1
    iput-object v2, v5, Landroid/content/res/Resources$SeekBarRes;->indeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3647
    :pswitch_2
    iput-object v2, v5, Landroid/content/res/Resources$SeekBarRes;->thumb:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3656
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i:I
    .end local v5           #res:Landroid/content/res/Resources$SeekBarRes;
    .end local v6           #seekbar_ids:[I
    :cond_3
    const/4 v5, 0x0

    :cond_4
    return-object v5

    .line 3639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 835
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 838
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 967
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, res:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 969
    return-object v0

    .line 971
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSwitchRes(I)Landroid/content/res/Resources$SwitchRes;
    .locals 8
    .parameter "switch_resid"

    .prologue
    .line 3660
    if-lez p1, :cond_3

    .line 3661
    const/4 v6, 0x0

    .line 3662
    .local v6, switch_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3663
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3664
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3665
    .local v0, N:I
    new-array v6, v0, [I

    .line 3666
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3667
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3668
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 3669
    aput v4, v6, v3

    .line 3666
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3674
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_1
    if-eqz v6, :cond_3

    .line 3675
    new-instance v5, Landroid/content/res/Resources$SwitchRes;

    invoke-direct {v5, p0}, Landroid/content/res/Resources$SwitchRes;-><init>(Landroid/content/res/Resources;)V

    .line 3676
    .local v5, res:Landroid/content/res/Resources$SwitchRes;
    iput p1, v5, Landroid/content/res/Resources$SwitchRes;->resid:I

    .line 3677
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 3678
    aget v7, v6, v3

    if-lez v7, :cond_2

    .line 3679
    aget v7, v6, v3

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3680
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 3681
    packed-switch v3, :pswitch_data_0

    .line 3677
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3683
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iput-object v2, v5, Landroid/content/res/Resources$SwitchRes;->track:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3686
    :pswitch_1
    iput-object v2, v5, Landroid/content/res/Resources$SwitchRes;->inner:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3695
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i:I
    .end local v5           #res:Landroid/content/res/Resources$SwitchRes;
    .end local v6           #switch_ids:[I
    :cond_3
    const/4 v5, 0x0

    :cond_4
    return-object v5

    .line 3681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSystemTheme()Lcom/lenovo/systemtheme/SystemThemeResource;
    .locals 3

    .prologue
    .line 3955
    sget-object v1, Landroid/content/res/Resources;->mSystemThemeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3956
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    if-nez v0, :cond_0

    .line 3957
    const-string v0, "SystemTheme/Resources"

    const-string v2, "getSystemTheme: mSystemThemeResource is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    :cond_0
    sget-object v0, Landroid/content/res/Resources;->mSystemThemeResource:Lcom/lenovo/systemtheme/SystemThemeResource;

    monitor-exit v1

    return-object v0

    .line 3961
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTabRes(I)Landroid/content/res/Resources$TabRes;
    .locals 8
    .parameter "tab_resid"

    .prologue
    .line 3531
    if-lez p1, :cond_6

    .line 3532
    const/4 v6, 0x0

    .line 3533
    .local v6, tab_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3534
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3535
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3536
    .local v0, N:I
    new-array v6, v0, [I

    .line 3537
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3538
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3539
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 3540
    aput v4, v6, v3

    .line 3537
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3545
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_1
    if-eqz v6, :cond_6

    .line 3546
    new-instance v5, Landroid/content/res/Resources$TabRes;

    invoke-direct {v5, p0}, Landroid/content/res/Resources$TabRes;-><init>(Landroid/content/res/Resources;)V

    .line 3547
    .local v5, ret:Landroid/content/res/Resources$TabRes;
    iput p1, v5, Landroid/content/res/Resources$TabRes;->resid:I

    .line 3548
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_7

    .line 3549
    aget v7, v6, v3

    if-lez v7, :cond_2

    .line 3550
    aget v7, v6, v3

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3551
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 3552
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->strip_left:Landroid/graphics/drawable/Drawable;

    .line 3548
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3553
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    if-eqz v2, :cond_4

    .line 3554
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->strip_right:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3555
    :cond_4
    const/4 v7, 0x2

    if-ne v3, v7, :cond_5

    if-eqz v2, :cond_5

    .line 3556
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->tab_indicator:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3557
    :cond_5
    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    if-eqz v2, :cond_2

    .line 3558
    iput-object v2, v5, Landroid/content/res/Resources$TabRes;->preview:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 3565
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i:I
    .end local v5           #ret:Landroid/content/res/Resources$TabRes;
    .end local v6           #tab_ids:[I
    :cond_6
    const/4 v5, 0x0

    :cond_7
    return-object v5
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 746
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 747
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 748
    return-object v0

    .line 750
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .parameter "def"

    .prologue
    .line 931
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 932
    .local v0, res:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0           #res:Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 931
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    .line 932
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 947
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 948
    .local v0, res:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 949
    return-object v0

    .line 951
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getThemeButtonBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "isdark"

    .prologue
    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, ret:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 305
    .local v3, themeRes:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 306
    if-nez p2, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Landroid/content/res/ThemeProperties;->getCurrentThemeButtonIndex(Z)I

    move-result v1

    .line 307
    .local v1, res_id:I
    if-lez v1, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 316
    .end local v1           #res_id:I
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 317
    if-nez p2, :cond_3

    .line 318
    const v4, 0x3080046

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 324
    :cond_1
    :goto_2
    return-object v2

    .line 306
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 310
    .restart local v1       #res_id:I
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 320
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #res_id:I
    :cond_3
    const v4, 0x3080045

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2
.end method

.method public getThemeColor(Ljava/lang/String;)I
    .locals 14
    .parameter "colorName"

    .prologue
    const/4 v10, 0x0

    .line 3069
    const/4 v7, 0x0

    .line 3070
    .local v7, raw:Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 3071
    .local v0, am:Landroid/content/res/AssetManager;
    const-string/jumbo v11, "persist.sys.skin"

    const-string v12, "/system/framework/framework-res.apk"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3073
    .local v9, themepath:Ljava/lang/String;
    const-string v11, "/system/framework/framework-res.apk"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3124
    :cond_0
    :goto_0
    return v10

    .line 3077
    :cond_1
    sget-object v11, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3078
    .local v8, themeColor:Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 3079
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_0

    .line 3082
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    .line 3083
    .local v2, cookie:I
    if-eqz v2, :cond_0

    .line 3090
    :try_start_0
    const-string v11, "assets/color/colors.xml"

    const/4 v12, 0x2

    invoke-virtual {v0, v2, v11, v12}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 3092
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 3093
    .local v5, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 3094
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 3095
    .local v6, myxml:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3096
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 3097
    .local v4, eventType:I
    :goto_1
    const/4 v11, 0x1

    if-eq v4, v11, :cond_0

    .line 3098
    packed-switch v4, :pswitch_data_0

    .line 3116
    :cond_3
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 3102
    :pswitch_1
    const-string v11, "color"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3103
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3104
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 3105
    .local v1, colorStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3106
    sget-object v11, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    goto :goto_0

    .line 3118
    .end local v1           #colorStr:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #myxml:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 3119
    .local v3, e:Ljava/io/IOException;
    const-string v11, "Resources"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException happened when getThemeColor, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3120
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 3121
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "Resources"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XmlPullParserException happened when getThemeColor, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3098
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getThemeCpmpoundButtonDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "nType"
    .parameter "isLightRes"

    .prologue
    const/4 v5, 0x1

    .line 441
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, drawable_id:I
    if-nez p2, :cond_1

    .line 444
    invoke-static {p3}, Landroid/content/res/ThemeProperties;->getCurrentThemeCheckBoxIndex(Z)I

    move-result v3

    .line 449
    :cond_0
    :goto_0
    if-lez v3, :cond_2

    .line 451
    :try_start_0
    sget-object v4, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 481
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #drawable_id:I
    .local v1, d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 445
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #drawable_id:I
    :cond_1
    if-ne p2, v5, :cond_0

    .line 446
    invoke-static {p3}, Landroid/content/res/ThemeProperties;->getCurrentThemeRadioIndex(Z)I

    move-result v3

    goto :goto_0

    .line 455
    :catch_0
    move-exception v4

    .line 460
    .end local v3           #drawable_id:I
    :cond_2
    const/4 v2, 0x0

    .line 461
    .local v2, defaultid:I
    const/4 v0, 0x0

    .line 462
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_6

    .line 463
    if-eqz p3, :cond_5

    .line 464
    const v2, 0x3080024

    .line 475
    :cond_3
    :goto_2
    if-lez v2, :cond_4

    .line 476
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    move-object v1, v0

    .line 481
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 466
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    const v2, 0x3080023

    goto :goto_2

    .line 468
    :cond_6
    if-ne p2, v5, :cond_3

    .line 469
    if-eqz p3, :cond_7

    .line 470
    const v2, 0x308004c

    goto :goto_2

    .line 472
    :cond_7
    const v2, 0x308004b

    goto :goto_2
.end method

.method public getThemeDialogBackground(Landroid/content/Context;Z)[I
    .locals 13
    .parameter "context"
    .parameter "islight"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 203
    const/4 v5, 0x0

    .line 204
    .local v5, ret:[I
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    .line 205
    .local v6, themeRes:Landroid/content/res/Resources;
    if-eqz v6, :cond_1

    .line 207
    :try_start_0
    invoke-static {p2}, Landroid/content/res/ThemeProperties;->getCurrentThemeDialogIndex(Z)I

    move-result v2

    .line 208
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 209
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 210
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 212
    .local v0, N:I
    new-array v5, v0, [I

    .line 213
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 214
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 215
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 216
    aput v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v3           #i:I
    .end local v4           #id:I
    :catch_0
    move-exception v7

    .line 225
    :cond_1
    if-nez v5, :cond_2

    .line 226
    const/4 v0, 0x6

    .line 227
    .restart local v0       #N:I
    new-array v5, v0, [I

    .line 228
    if-eqz p2, :cond_3

    .line 229
    const v7, 0x3080070

    aput v7, v5, v8

    .line 230
    const v7, 0x308006d

    aput v7, v5, v9

    .line 231
    const v7, 0x3080067

    aput v7, v5, v10

    .line 232
    const v7, 0x3080069

    aput v7, v5, v11

    .line 233
    const v7, 0x3080067

    aput v7, v5, v12

    .line 234
    const/4 v7, 0x5

    const v8, 0x308006e

    aput v8, v5, v7

    .line 244
    .end local v0           #N:I
    :cond_2
    :goto_1
    return-object v5

    .line 236
    .restart local v0       #N:I
    :cond_3
    const v7, 0x308006f

    aput v7, v5, v8

    .line 237
    const v7, 0x308006c

    aput v7, v5, v9

    .line 238
    const v7, 0x3080066

    aput v7, v5, v10

    .line 239
    const v7, 0x3080068

    aput v7, v5, v11

    .line 240
    const v7, 0x3080066

    aput v7, v5, v12

    .line 241
    const/4 v7, 0x5

    const v8, 0x308006e

    aput v8, v5, v7

    goto :goto_1
.end method

.method public getThemeElement(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources$ThemeElement;
    .locals 1
    .parameter "context"
    .parameter "strPackageName"
    .parameter "themeNameId"

    .prologue
    .line 3702
    new-instance v0, Landroid/content/res/Resources$ThemeElement;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$ThemeElement;-><init>(Landroid/content/res/Resources;)V

    .line 3703
    .local v0, element:Landroid/content/res/Resources$ThemeElement;
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/res/Resources;->getElementElements(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources$ThemeElement;I)V

    .line 3704
    return-object v0
.end method

.method public getThemeHighlightColor()I
    .locals 1

    .prologue
    .line 3139
    const-string/jumbo v0, "theme_highlight_color"

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "themePackagePath"
    .parameter "itemType"

    .prologue
    .line 3225
    const/4 v0, 0x0

    .line 3226
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 3228
    .local v1, cookie:I
    if-eqz p1, :cond_1

    const-string v5, "/system/framework/framework-res.apk"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3230
    :cond_0
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current theme is the default theme, themePackagePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/4 v5, 0x0

    .line 3254
    :goto_0
    return-object v5

    .line 3234
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v1

    .line 3240
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "res/drawable-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3241
    .local v4, themeDrawablePath:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/content/res/Resources;->generateCurrentDensitySuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3248
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 3249
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    move-object v5, v0

    .line 3254
    goto :goto_0

    .line 3250
    :catch_0
    move-exception v2

    .line 3251
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException happend when getThemeImage cookie = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getThemeMainColor()I
    .locals 1

    .prologue
    .line 3131
    const-string/jumbo v0, "theme_main_color"

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemePreferenceTextColor(Landroid/content/Context;Z)[Landroid/content/res/ColorStateList;
    .locals 11
    .parameter "context"
    .parameter "isdark"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 401
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 402
    sget-object v10, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_0

    .line 403
    sget-object v7, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    .line 431
    :goto_0
    return-object v7

    .line 405
    :cond_0
    if-nez p2, :cond_1

    const/4 v8, 0x1

    :cond_1
    invoke-static {v8}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleColorIndex(Z)I

    move-result v2

    .line 406
    .local v2, array_id:I
    if-lez v2, :cond_3

    .line 408
    :try_start_0
    sget-object v8, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 409
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_3

    .line 410
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 411
    .local v0, N:I
    add-int/lit8 v8, v0, -0x1

    new-array v7, v8, [Landroid/content/res/ColorStateList;

    .line 412
    .local v7, ret:[Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    add-int/lit8 v8, v0, -0x1

    if-ge v5, v8, :cond_4

    .line 413
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 414
    .local v6, id:I
    if-eqz v6, :cond_2

    .line 416
    :try_start_1
    sget-object v8, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 417
    .local v3, color:Landroid/content/res/ColorStateList;
    aput-object v3, v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 412
    .end local v3           #color:Landroid/content/res/ColorStateList;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 418
    :catch_0
    move-exception v4

    .line 419
    .local v4, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    :try_start_2
    aput-object v8, v7, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 426
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v6           #id:I
    .end local v7           #ret:[Landroid/content/res/ColorStateList;
    :catch_1
    move-exception v8

    .line 430
    .end local v2           #array_id:I
    :cond_3
    sput-object v9, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;

    move-object v7, v9

    .line 431
    goto :goto_0

    .line 423
    .restart local v0       #N:I
    .restart local v1       #ar:Landroid/content/res/TypedArray;
    .restart local v2       #array_id:I
    .restart local v5       #i:I
    .restart local v7       #ret:[Landroid/content/res/ColorStateList;
    :cond_4
    :try_start_3
    sput-object v7, Landroid/content/res/Resources;->mPreferenceColor:[Landroid/content/res/ColorStateList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public getThemePreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pkgPath"

    .prologue
    .line 3213
    const-string/jumbo v0, "previewtheme"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getThemeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThemeProgressBar(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "isLight"

    .prologue
    .line 491
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 492
    invoke-static {p2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSeekbarIndex(Z)I

    move-result v2

    .line 494
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 496
    :try_start_0
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 497
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 499
    .local v0, N:I
    if-lez v0, :cond_1

    .line 500
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 501
    .local v5, id:I
    if-lez v5, :cond_1

    .line 502
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 503
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 524
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v5           #id:I
    :cond_0
    :goto_0
    return-object v3

    .line 509
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #array_id:I
    :catch_0
    move-exception v6

    .line 514
    .end local v2           #array_id:I
    :cond_1
    const/4 v4, 0x0

    .line 515
    .local v4, defaultid:I
    const/4 v3, 0x0

    .line 516
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 517
    const v4, 0x3080188

    .line 521
    :goto_1
    if-lez v4, :cond_0

    .line 522
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 519
    :cond_2
    const v4, 0x3080187

    goto :goto_1
.end method

.method public getThemeSectionBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "isdark"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    if-nez p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSectionLineIndex(Z)I

    move-result v1

    .line 382
    .local v1, res_id:I
    if-lez v1, :cond_1

    .line 384
    :try_start_0
    sget-object v2, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 393
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #res_id:I
    :goto_1
    return-object v0

    .line 381
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 388
    .restart local v1       #res_id:I
    :catch_0
    move-exception v2

    .line 393
    .end local v1           #res_id:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getThemeSeekBar(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "isLight"

    .prologue
    const/4 v7, 0x1

    .line 534
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 535
    invoke-static {p2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSeekbarIndex(Z)I

    move-result v2

    .line 537
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 539
    :try_start_0
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 540
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 542
    .local v0, N:I
    if-le v0, v7, :cond_1

    .line 543
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 544
    .local v5, id:I
    if-lez v5, :cond_1

    .line 545
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 546
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 570
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v5           #id:I
    :cond_0
    :goto_0
    return-object v3

    .line 552
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #array_id:I
    :catch_0
    move-exception v6

    .line 557
    .end local v2           #array_id:I
    :cond_1
    const/4 v4, 0x0

    .line 558
    .local v4, defaultid:I
    const/4 v3, 0x0

    .line 559
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 560
    const v4, 0x3080185

    .line 564
    :goto_1
    if-lez v4, :cond_0

    .line 565
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 562
    :cond_2
    const v4, 0x3080185

    goto :goto_1
.end method

.method public getThemeTabBackground(Landroid/content/Context;Z)[I
    .locals 10
    .parameter "context"
    .parameter "is_dark"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 335
    const/4 v5, 0x0

    .line 338
    .local v5, ret:[I
    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 339
    if-nez p2, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Landroid/content/res/ThemeProperties;->getCurrentThemeTabBackgroundIndex(Z)I

    move-result v2

    .line 340
    .local v2, array_id:I
    if-lez v2, :cond_1

    .line 342
    :try_start_0
    sget-object v6, Landroid/content/res/Resources;->themeRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 343
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 345
    .local v0, N:I
    new-array v5, v0, [I

    .line 346
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 347
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 348
    .local v4, id:I
    aput v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #array_id:I
    .end local v3           #i:I
    .end local v4           #id:I
    :cond_0
    move v6, v8

    .line 339
    goto :goto_0

    .line 351
    .restart local v2       #array_id:I
    :catch_0
    move-exception v6

    .line 357
    .end local v2           #array_id:I
    :cond_1
    if-nez v5, :cond_2

    .line 358
    const/4 v6, 0x3

    new-array v5, v6, [I

    .line 359
    if-eqz p2, :cond_3

    .line 360
    const v6, 0x30801fe

    aput v6, v5, v8

    .line 361
    const v6, 0x3080203

    aput v6, v5, v7

    .line 362
    const v6, 0x30801fd

    aput v6, v5, v9

    .line 370
    :cond_2
    :goto_2
    return-object v5

    .line 364
    :cond_3
    const v6, 0x3080201

    aput v6, v5, v8

    .line 365
    const v6, 0x3080202

    aput v6, v5, v7

    .line 366
    const v6, 0x3080200

    aput v6, v5, v9

    goto :goto_2
.end method

.method public getThemeTitleBackground(Landroid/content/Context;Z)I
    .locals 4
    .parameter "context"
    .parameter "isdark"

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, ret:I
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->createThemeResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 284
    .local v2, themeRes:Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 285
    if-nez p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleBackgroundIndex(Z)I

    move-result v0

    .line 286
    .local v0, res_id:I
    if-lez v0, :cond_1

    .line 291
    .end local v0           #res_id:I
    :goto_1
    return v0

    .line 285
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 291
    goto :goto_1
.end method

.method getTitleColors(I)Landroid/content/res/Resources$TitleColor;
    .locals 8
    .parameter "title_resid"

    .prologue
    .line 3489
    if-lez p1, :cond_7

    .line 3490
    const/4 v3, 0x0

    .line 3491
    .local v3, color_ids:[I
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3492
    .local v1, ar:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 3493
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3494
    .local v0, N:I
    new-array v3, v0, [I

    .line 3495
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3496
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 3497
    .local v5, id:I
    if-eqz v5, :cond_0

    .line 3498
    aput v5, v3, v4

    .line 3495
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3503
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    :cond_1
    if-eqz v3, :cond_7

    .line 3504
    new-instance v6, Landroid/content/res/Resources$TitleColor;

    invoke-direct {v6, p0}, Landroid/content/res/Resources$TitleColor;-><init>(Landroid/content/res/Resources;)V

    .line 3505
    .local v6, ret:Landroid/content/res/Resources$TitleColor;
    iput p1, v6, Landroid/content/res/Resources$TitleColor;->resid:I

    .line 3506
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_8

    .line 3507
    aget v7, v3, v4

    if-lez v7, :cond_2

    .line 3508
    const/4 v7, 0x4

    if-ne v4, v7, :cond_3

    .line 3509
    aget v7, v3, v4

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/res/Resources$TitleColor;->strName:Ljava/lang/String;

    .line 3506
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3512
    :cond_3
    aget v7, v3, v4

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 3513
    .local v2, color:Landroid/content/res/ColorStateList;
    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 3514
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->title:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3515
    :cond_4
    const/4 v7, 0x1

    if-ne v4, v7, :cond_5

    if-eqz v2, :cond_5

    .line 3516
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->categroy:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3517
    :cond_5
    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    if-eqz v2, :cond_6

    .line 3518
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->preference:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3519
    :cond_6
    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    if-eqz v2, :cond_2

    .line 3520
    iput-object v2, v6, Landroid/content/res/Resources$TitleColor;->summary:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 3527
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v2           #color:Landroid/content/res/ColorStateList;
    .end local v3           #color_ids:[I
    .end local v4           #i:I
    .end local v6           #ret:Landroid/content/res/Resources$TitleColor;
    :cond_7
    const/4 v6, 0x0

    :cond_8
    return-object v6
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1750
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1751
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1752
    return-void

    .line 1757
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .parameter "name"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1816
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1817
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1818
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1819
    return-void

    .line 1821
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "density"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1787
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1788
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1789
    return-void

    .line 1791
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1642
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public ideaui_getResourceName(I)Ljava/lang/String;
    .locals 2
    .parameter "resid"

    .prologue
    .line 2468
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 2470
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public isContextPackageNameNull()Z
    .locals 1

    .prologue
    .line 4022
    iget-object v0, p0, Landroid/content/res/Resources;->mPackageNameLM:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 12
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2852
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    iget v10, p1, Landroid/util/TypedValue;->data:I

    int-to-long v10, v10

    or-long v4, v8, v10

    .line 2856
    .local v4, key:J
    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_2

    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_2

    .line 2859
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2860
    .local v0, csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2925
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .local v1, csl:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1

    .line 2864
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_0
    iget v8, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2865
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_1

    .line 2866
    const-string v8, "color"

    invoke-direct {p0, p1, v8}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2867
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 2871
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2874
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    :cond_2
    invoke-direct {p0, v4, v5}, Landroid/content/res/Resources;->getCachedColorStateList(J)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2875
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 2876
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2879
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_3
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2880
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 2881
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2884
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    .line 2885
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resource is not a ColorStateList (color or path): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2889
    :cond_5
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2891
    .local v3, file:Ljava/lang/String;
    const-string v8, ".xml"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2893
    :try_start_0
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v9, "colorstatelist"

    invoke-virtual {p0, v3, p2, v8, v9}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 2895
    .local v7, rp:Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v7}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2896
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2910
    if-eqz v0, :cond_6

    .line 2911
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_8

    .line 2912
    const-string v8, "color"

    invoke-direct {p0, p1, v8}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2913
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6
    :goto_1
    move-object v1, v0

    .line 2925
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2897
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .end local v7           #rp:Landroid/content/res/XmlResourceParser;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :catch_0
    move-exception v2

    .line 2898
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from color state list resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2901
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2902
    throw v6

    .line 2905
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_7
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": .xml extension required"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2916
    .restart local v7       #rp:Landroid/content/res/XmlResourceParser;
    :cond_8
    iget-object v9, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v9

    .line 2920
    :try_start_1
    iget-object v8, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2921
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 17
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2711
    const/4 v8, 0x0

    .line 2712
    .local v8, isColorDrawable:Z
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x1f

    if-gt v13, v14, :cond_0

    .line 2714
    const/4 v8, 0x1

    .line 2716
    :cond_0
    if-eqz v8, :cond_1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->data:I

    int-to-long v9, v13

    .line 2719
    .local v9, key:J
    :goto_0
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9, v10}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2721
    .local v3, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 2818
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v4

    .line 2716
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .end local v9           #key:J
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v13, v13

    const/16 v15, 0x20

    shl-long/2addr v13, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/util/TypedValue;->data:I

    int-to-long v15, v15

    or-long v9, v13, v15

    goto :goto_0

    .line 2719
    .restart local v9       #key:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    goto :goto_1

    .line 2725
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v8, :cond_6

    sget-object v13, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v13

    .line 2729
    .local v2, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_3
    if-eqz v2, :cond_8

    .line 2730
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2791
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 2792
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 2793
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 2794
    if-eqz v2, :cond_5

    .line 2795
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v13, :cond_d

    .line 2796
    const-string v13, "drawable"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2797
    if-eqz v8, :cond_c

    .line 2798
    sget-object v13, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_5
    move-object v4, v3

    .line 2818
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 2725
    .end local v2           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_6
    sget v13, Landroid/content/res/Resources;->sPreloadedDensity:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v13, v14, :cond_7

    sget-object v13, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v13

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    move-object v2, v13

    goto :goto_3

    .line 2732
    .restart local v2       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_8
    if-eqz v8, :cond_9

    .line 2733
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2736
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_9
    if-nez v3, :cond_4

    .line 2737
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v13, :cond_a

    .line 2738
    new-instance v13, Landroid/content/res/Resources$NotFoundException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Resource is not a Drawable (color or path): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2742
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2757
    .local v6, file:Ljava/lang/String;
    const-string v13, ".xml"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2759
    :try_start_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string v14, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1, v13, v14}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 2761
    .local v12, rp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2762
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 2763
    .end local v12           #rp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .line 2764
    .local v5, e:Ljava/lang/Exception;
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from drawable resource ID #0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2767
    .local v11, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2768
    throw v11

    .line 2773
    .end local v5           #e:Ljava/lang/Exception;
    .end local v11           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->assetCookie:I

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v6, v15}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 2776
    .local v7, is:Ljava/io/InputStream;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7, v6, v13}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2778
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 2780
    .end local v7           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 2781
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from drawable resource ID #0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2784
    .restart local v11       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2785
    throw v11

    .line 2800
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #file:Ljava/lang/String;
    .end local v11           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    sget-object v13, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_5

    .line 2804
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v14

    .line 2808
    if-eqz v8, :cond_e

    .line 2809
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v9, v10, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2813
    :goto_6
    monitor-exit v14

    goto/16 :goto_5

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 2811
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v9, v10, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .parameter "id"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2948
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 2949
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2950
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2951
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 2952
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2955
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2958
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 10
    .parameter "file"
    .parameter "id"
    .parameter "assetCookie"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2963
    if-eqz p2, :cond_5

    .line 2966
    :try_start_0
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2968
    :try_start_1
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v7

    .line 2969
    .local v3, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2970
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v7, v7, v2

    if-ne v7, p2, :cond_0

    .line 2973
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    .line 2993
    :goto_1
    return-object v7

    .line 2969
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2979
    :cond_1
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v7, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 2981
    .local v0, block:Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_4

    .line 2982
    iget v7, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v7, 0x1

    .line 2983
    .local v5, pos:I
    if-lt v5, v3, :cond_2

    const/4 v5, 0x0

    .line 2984
    :cond_2
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 2985
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v7, v5

    .line 2986
    .local v4, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_3

    .line 2987
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 2989
    :cond_3
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v7, v5

    .line 2990
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v7, v5

    .line 2993
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    goto :goto_1

    .line 2995
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #oldBlock:Landroid/content/res/XmlBlock;
    .end local v5           #pos:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2996
    :catch_0
    move-exception v1

    .line 2997
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from xml type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 3000
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3001
    throw v6

    .line 2995
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #block:Landroid/content/res/XmlBlock;
    .restart local v2       #i:I
    .restart local v3       #num:I
    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3005
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    :cond_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 2118
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 2134
    array-length v1, p2

    .line 2135
    .local v1, len:I
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, array:Landroid/content/res/TypedArray;
    move-object v2, p1

    .line 2141
    check-cast v2, Landroid/content/res/XmlBlock$Parser;

    .line 2142
    .local v2, parser:Landroid/content/res/XmlBlock$Parser;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v3, v4, p2, v5, v6}, Landroid/content/res/AssetManager;->retrieveAttributes(I[I[I[I)Z

    .line 2145
    iput-object p2, v0, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 2146
    iput-object v2, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 2148
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1009
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 1010
    .local v1, len:I
    if-gez v1, :cond_0

    .line 1011
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1015
    :cond_0
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1016
    .local v0, array:Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 1017
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    .line 1019
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1660
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 1661
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1679
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1682
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1688
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1714
    iget-object v4, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    .line 1715
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1716
    .local v2, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v5, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v6, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    monitor-exit v4

    return-object v3

    .line 1721
    :catch_0
    move-exception v0

    .line 1722
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1727
    throw v1

    .line 1730
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #rnf:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .parameter "tagName"
    .parameter "attrs"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2586
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2589
    .local v2, sa:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2591
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2592
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2593
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:name attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2598
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2600
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 2601
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2602
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2603
    .local v0, cs:Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2624
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2625
    return-void

    .line 2604
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 2605
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 2606
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 2608
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2609
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 2610
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 2612
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2613
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2618
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2619
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .parameter "parser"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 2544
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2547
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, type:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 2548
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 2552
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2553
    .local v0, nodeName:Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2554
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2555
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2558
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2561
    .end local v0           #nodeName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public reloadPreloadedResources()V
    .locals 3

    .prologue
    .line 3195
    const-string v0, "Resources"

    const-string v1, "Reload all preloader drawables in Resources.java."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3197
    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3198
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reloadPreloadedResources() mMtkColorCache.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    sget-object v0, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3200
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedDrawableResources()V

    .line 3201
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedColorResources()V

    .line 3202
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter "ci"

    .prologue
    .line 2404
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2405
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2406
    return-void
.end method

.method public setContextPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 4014
    iput-object p1, p0, Landroid/content/res/Resources;->mPackageNameLM:Ljava/lang/String;

    .line 4015
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .prologue
    .line 2660
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2661
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    if-eqz v0, :cond_0

    .line 2662
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2664
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    .line 2665
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 2666
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    .line 2667
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2668
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2669
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2670
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 2156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2157
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 24
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 2171
    if-eqz p3, :cond_0

    .line 2172
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2174
    :cond_0
    if-eqz p2, :cond_1

    .line 2175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2186
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_2

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_2
    const v20, 0xfffffff

    .local v20, configChanges:I
    const/16 v22, 0x0

    .local v22, needClearPreloader:Z
    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2196
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v21, v0

    .line 2197
    .local v21, density:I
    if-nez v21, :cond_3

    .line 2198
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v21, v0

    .line 2200
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_4

    .line 2201
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 2203
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    .line 2204
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2208
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 2209
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 2211
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 2212
    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 2214
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2215
    :cond_8
    const/16 v22, 0x1

    .line 2220
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 2221
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v20

    .end local v21           #density:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2228
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 2240
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v5, 0x0

    .local v5, locale:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_d

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v13, height:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .local v10, keyboardHidden:I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    const/4 v10, 0x3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    if-eqz v22, :cond_f

    const-string v2, "Resources"

    const-string v3, "updateConfiguration from skin change, clear preloaded drawables."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    sget-object v2, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConfiguration() mMtkColorCache.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2243
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v2, :cond_10

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v2

    .line 2244
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 2247
    :cond_10
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .end local v10           #keyboardHidden:I
    .end local v12           #width:I
    .end local v13           #height:I
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2264
    .restart local v12       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13       #height:I
    goto/16 :goto_0

    .line 2301
    .end local v5           #locale:Ljava/lang/String;
    .end local v12           #width:I
    .end local v13           #height:I
    .end local v20           #configChanges:I
    .end local v22           #needClearPreloader:Z
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2306
    .restart local v5       #locale:Ljava/lang/String;
    .restart local v10       #keyboardHidden:I
    .restart local v12       #width:I
    .restart local v13       #height:I
    .restart local v20       #configChanges:I
    .restart local v22       #needClearPreloader:Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static getSpreloadedcolordrawables()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static getSpreloadedcolorstatelists()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static getSpreloadeddrawables()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method getCachedColorStateListBaidu(J)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "key"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/Resources;->getCachedColorStateList(J)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method getCachedDrawableBaidu(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, drawableCache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method getmColorDrawableCache()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method getmColorStateListCache()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method getmConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getmDrawableCache()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method ismPreloading()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    return v0
.end method

.method verifyPreloadConfigBaidu(Landroid/util/TypedValue;Ljava/lang/String;)Z
    .locals 1
    .parameter "value"
    .parameter "name"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
