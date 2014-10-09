.class final Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationPackageManager$ResourceName;,
        Landroid/app/ApplicationPackageManager$BaiduInjector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ICONS:Z = false

.field private static final DEFAULT_ICON_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "DEFAULT_ICON_DEFAULT_PACKAGE_NAME"

.field private static final SYSTEM_ICON_TRANSLATE_ICON_ID_LISTS:[I = null

.field private static final SYSTEM_ICON_TRANSLATE_PACKAGE_NAME_LISTS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManager"

.field private static final THEME_ICON_BG_NAME:Ljava/lang/String; = "theme_appbg"

.field private static final THEME_ICON_FG_NAME:Ljava/lang/String; = "theme_appfg"

.field private static final THEME_ICON_MASK_NAME:Ljava/lang/String; = "theme_appmask"

.field private static final TYPE_DEF_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static default_SystemIcon_ResourceName:Landroid/app/ApplicationPackageManager$ResourceName; = null

.field private static sCurrent_Launch_Theme:Ljava/lang/String; = null

.field private static final sDEFAULT_THEME:Ljava/lang/String; = ">DEFAULT THEME"

.field private static final sDEFAULT_THEME_NAME:Ljava/lang/String; = "com.lenovo.launcher"

.field private static sIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static sIconSHeight:I

.field private static sIconSWidth:I

.field private static sIconWidth:I

.field private static sLenovoIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sOldCurrent_Launch_Theme:Ljava/lang/String;

.field private static sStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private hashmap_system_consistent_icon:Ljava/util/HashMap;
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

.field mCachedSafeMode:I

.field private final mContext:Landroid/app/ContextImpl;

.field private final mPM:Landroid/content/pm/IPackageManager;

.field private mThemeBgBitmap:[Landroid/graphics/Bitmap;

.field private final sCanvas:Landroid/graphics/Canvas;

.field private final sIconPaint:Landroid/graphics/Paint;

.field private final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x1b

    const/4 v3, -0x1

    .line 1607
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    .line 1608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    .line 1610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    .line 1614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sLenovoIconCache:Ljava/util/HashMap;

    .line 1623
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ApplicationPackageManager;->default_SystemIcon_ResourceName:Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1636
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.mediatek.bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.providers.telephony"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.providers.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.lenovo.ideawallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.lenovo.bootshut.ThemeRes2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.lenovo.bootshut.ThemeRes1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.lenovo.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.lenovo.lsf.pay.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.lenovo.bootshut.lenovodefault"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.lenovo.ue.service"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.lenovo.rescopy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mediatek.CellConnService"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.provision"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.lenovo.factorymode"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.lenovo.smart"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.lenovo.smartrotation"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.mediatek.apst.target"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.mediatek.thermalmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.lenovo.optimize"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.lenovo.clearBuildInSDcard"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.lenovo.defautpackage"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.lenovo.lenovoweathertheme"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.lenovo.weatherserver"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "android"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/ApplicationPackageManager;->SYSTEM_ICON_TRANSLATE_PACKAGE_NAME_LISTS:[Ljava/lang/String;

    .line 1702
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/ApplicationPackageManager;->SYSTEM_ICON_TRANSLATE_ICON_ID_LISTS:[I

    .line 1773
    sput v3, Landroid/app/ApplicationPackageManager;->sIconWidth:I

    .line 1774
    sput v3, Landroid/app/ApplicationPackageManager;->sIconHeight:I

    .line 1775
    sput v3, Landroid/app/ApplicationPackageManager;->sIconSWidth:I

    .line 1776
    sput v3, Landroid/app/ApplicationPackageManager;->sIconSHeight:I

    .line 1784
    const-string v0, "com.lenovo.launcher"

    sput-object v0, Landroid/app/ApplicationPackageManager;->sCurrent_Launch_Theme:Ljava/lang/String;

    .line 1785
    const-string v0, "com.lenovo.launcher"

    sput-object v0, Landroid/app/ApplicationPackageManager;->sOldCurrent_Launch_Theme:Ljava/lang/String;

    return-void

    .line 1702
    :array_0
    .array-data 0x4
        0x48t 0x2t 0x8t 0x3t
        0x4et 0x2t 0x8t 0x3t
        0x4et 0x2t 0x8t 0x3t
        0x4at 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4bt 0x2t 0x8t 0x3t
        0x4ct 0x2t 0x8t 0x3t
        0x51t 0x2t 0x8t 0x3t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .parameter "context"
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 1002
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 981
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 1630
    iput-object v2, p0, Landroid/app/ApplicationPackageManager;->hashmap_system_consistent_icon:Ljava/util/HashMap;

    .line 1767
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    .line 1768
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->sCanvas:Landroid/graphics/Canvas;

    .line 1769
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->sIconPaint:Landroid/graphics/Paint;

    .line 1770
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->sOldBounds:Landroid/graphics/Rect;

    .line 1003
    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1004
    iput-object p2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1005
    return-void
.end method

.method static configurationChanged()V
    .locals 2

    .prologue
    .line 994
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 995
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 996
    sget-object v0, Landroid/app/ApplicationPackageManager;->sLenovoIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 997
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 998
    monitor-exit v1

    .line 999
    return-void

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;IILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "drawable"
    .parameter "width"
    .parameter "height"
    .parameter "res"

    .prologue
    .line 1950
    iget-object v11, p0, Landroid/app/ApplicationPackageManager;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v11

    .line 1952
    if-nez p1, :cond_0

    .line 1953
    const/4 v2, 0x0

    :try_start_0
    monitor-exit v11

    .line 1993
    :goto_0
    return-object v2

    .line 1956
    :cond_0
    move-object/from16 v0, p1

    instance-of v10, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v10, :cond_4

    .line 1957
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v6, v0

    .line 1958
    .local v6, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1959
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1968
    .end local v6           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 1969
    .local v8, sourceWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 1971
    .local v7, sourceHeight:I
    if-gtz p2, :cond_2

    .line 1972
    move/from16 p2, v8

    .line 1975
    :cond_2
    if-gtz p3, :cond_3

    .line 1976
    move/from16 p3, v7

    .line 1979
    :cond_3
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1981
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->sCanvas:Landroid/graphics/Canvas;

    .line 1982
    .local v4, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1984
    const/4 v5, 0x0

    .line 1985
    .local v5, left:I
    const/4 v9, 0x0

    .line 1987
    .local v9, top:I
    iget-object v10, p0, Landroid/app/ApplicationPackageManager;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1988
    const/4 v10, 0x0

    const/4 v12, 0x0

    add-int/lit8 v13, p2, 0x0

    add-int/lit8 v14, p3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1989
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1990
    iget-object v10, p0, Landroid/app/ApplicationPackageManager;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1991
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1993
    monitor-exit v11

    goto :goto_0

    .line 1994
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #left:I
    .end local v7           #sourceHeight:I
    .end local v8           #sourceWidth:I
    .end local v9           #top:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1960
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    instance-of v10, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_1

    .line 1962
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 1963
    .local v3, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1964
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    if-nez v10, :cond_1

    .line 1965
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "icon"
    .parameter "index"
    .parameter "res"

    .prologue
    const/4 v1, 0x0

    .line 1881
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1882
    invoke-direct {p0, p3}, Landroid/app/ApplicationPackageManager;->getThemeIconBg(Landroid/content/res/Resources;)[Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1883
    .local v6, iconBg:[Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    aget-object v2, v6, v0

    const/4 v0, 0x1

    aget-object v3, v6, v0

    const/4 v0, 0x2

    aget-object v4, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationPackageManager;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1885
    .end local v6           #iconBg:[Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v1, v1, p3}, Landroid/app/ApplicationPackageManager;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "icon"
    .parameter "bg"
    .parameter "fg"
    .parameter "res"

    .prologue
    .line 1890
    iget-object v12, p0, Landroid/app/ApplicationPackageManager;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v12

    .line 1891
    :try_start_0
    sget v11, Landroid/app/ApplicationPackageManager;->sIconWidth:I

    const/4 v13, -0x1

    if-ne v11, v13, :cond_0

    .line 1892
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->initStatics()V

    .line 1895
    :cond_0
    sget v10, Landroid/app/ApplicationPackageManager;->sIconSWidth:I

    .line 1896
    .local v10, width:I
    sget v4, Landroid/app/ApplicationPackageManager;->sIconSHeight:I

    .line 1897
    .local v4, height:I
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1898
    sget v10, Landroid/app/ApplicationPackageManager;->sIconWidth:I

    .line 1899
    sget v4, Landroid/app/ApplicationPackageManager;->sIconHeight:I

    .line 1902
    :cond_1
    move-object/from16 v0, p1

    instance-of v11, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v11, :cond_5

    .line 1903
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v6, v0

    .line 1904
    .local v6, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1905
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1916
    .end local v6           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_0
    sget v8, Landroid/app/ApplicationPackageManager;->sIconWidth:I

    .line 1918
    .local v8, textureWidth:I
    sget v7, Landroid/app/ApplicationPackageManager;->sIconHeight:I

    .line 1921
    .local v7, textureHeight:I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1923
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->sCanvas:Landroid/graphics/Canvas;

    .line 1924
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1926
    sub-int v11, v8, v10

    div-int/lit8 v5, v11, 0x2

    .line 1927
    .local v5, left:I
    sub-int v11, v7, v4

    div-int/lit8 v9, v11, 0x2

    .line 1929
    .local v9, top:I
    if-eqz p2, :cond_3

    .line 1930
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v11, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1933
    :cond_3
    iget-object v11, p0, Landroid/app/ApplicationPackageManager;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1934
    add-int v11, v5, v10

    add-int v13, v9, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9, v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1935
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1936
    iget-object v11, p0, Landroid/app/ApplicationPackageManager;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1938
    if-eqz p3, :cond_4

    .line 1939
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v11, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1942
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1944
    monitor-exit v12

    return-object v1

    .line 1906
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #left:I
    .end local v7           #textureHeight:I
    .end local v8           #textureWidth:I
    .end local v9           #top:I
    :cond_5
    move-object/from16 v0, p1

    instance-of v11, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_2

    .line 1908
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 1909
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1910
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v11

    if-nez v11, :cond_2

    .line 1911
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1945
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #height:I
    .end local v10           #width:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "icon"
    .parameter "bg"
    .parameter "fg"
    .parameter "mask"
    .parameter "res"

    .prologue
    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->sCanvas:Landroid/graphics/Canvas;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1999
    :try_start_0
    sget v21, Landroid/app/ApplicationPackageManager;->sIconWidth:I

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 2000
    invoke-direct/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->initStatics()V

    .line 2003
    :cond_0
    sget v20, Landroid/app/ApplicationPackageManager;->sIconSWidth:I

    .line 2004
    .local v20, width:I
    sget v9, Landroid/app/ApplicationPackageManager;->sIconSHeight:I

    .line 2006
    .local v9, height:I
    if-nez p1, :cond_10

    .line 2007
    const v21, 0x308024b

    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p1

    move-object/from16 v10, p1

    .line 2009
    .end local p1
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    :try_start_1
    instance-of v0, v10, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 2010
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 2011
    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 2012
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 2021
    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 2022
    .local v16, sourceWidth:I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 2023
    .local v15, sourceHeight:I
    if-lez v16, :cond_f

    if-lez v15, :cond_f

    .line 2024
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v23, v0

    div-float v14, v21, v23

    .line 2025
    .local v14, ratio:F
    move/from16 v0, v16

    if-le v0, v15, :cond_d

    .line 2026
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v14

    move/from16 v0, v21

    float-to-int v9, v0

    .line 2030
    :cond_2
    :goto_2
    const/4 v12, 0x0

    .line 2031
    .local v12, lessBitmap:Landroid/graphics/Bitmap;
    instance-of v0, v10, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 2032
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v9, v3}, Landroid/app/ApplicationPackageManager;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2033
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2041
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #lessBitmap:Landroid/graphics/Bitmap;
    .end local v14           #ratio:F
    .restart local p1
    :goto_3
    :try_start_2
    sget v18, Landroid/app/ApplicationPackageManager;->sIconWidth:I

    .line 2043
    .local v18, textureWidth:I
    sget v17, Landroid/app/ApplicationPackageManager;->sIconHeight:I

    .line 2046
    .local v17, textureHeight:I
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2047
    .local v5, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->sCanvas:Landroid/graphics/Canvas;

    .line 2048
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2050
    sub-int v21, v18, v20

    div-int/lit8 v11, v21, 0x2

    .line 2051
    .local v11, left:I
    sub-int v21, v17, v9

    div-int/lit8 v19, v21, 0x2

    .line 2052
    .local v19, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2053
    add-int v21, v11, v20

    add-int v23, v19, v9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2054
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    .line 2055
    .local v4, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2056
    .local v7, bm:Landroid/graphics/Bitmap;
    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v8, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2057
    if-eqz p4, :cond_5

    .line 2058
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 2059
    :cond_3
    const/16 v21, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2061
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2062
    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p4

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2064
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2065
    if-eqz p2, :cond_8

    .line 2066
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 2067
    :cond_6
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2069
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2070
    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2072
    :cond_8
    if-eqz p3, :cond_b

    .line 2073
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2074
    :cond_9
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 2076
    :cond_a
    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2078
    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2080
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v5

    .line 2013
    .end local v4           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v11           #left:I
    .end local v15           #sourceHeight:I
    .end local v16           #sourceWidth:I
    .end local v17           #textureHeight:I
    .end local v18           #textureWidth:I
    .end local v19           #top:I
    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    :cond_c
    :try_start_3
    instance-of v0, v10, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 2015
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 2016
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2017
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    if-nez v21, :cond_1

    .line 2018
    invoke-virtual/range {p5 .. p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2081
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v21

    move-object/from16 p1, v10

    .end local v9           #height:I
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v20           #width:I
    .restart local p1
    :goto_4
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v21

    .line 2027
    .end local p1
    .restart local v9       #height:I
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v14       #ratio:F
    .restart local v15       #sourceHeight:I
    .restart local v16       #sourceWidth:I
    .restart local v20       #width:I
    :cond_d
    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 2028
    int-to-float v0, v9

    move/from16 v21, v0

    mul-float v21, v21, v14

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    goto/16 :goto_2

    .line 2035
    .restart local v12       #lessBitmap:Landroid/graphics/Bitmap;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/app/ApplicationPackageManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v9, v3}, Landroid/app/ApplicationPackageManager;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2036
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_3

    .line 2081
    .end local v9           #height:I
    .end local v12           #lessBitmap:Landroid/graphics/Bitmap;
    .end local v14           #ratio:F
    .end local v15           #sourceHeight:I
    .end local v16           #sourceWidth:I
    .end local v20           #width:I
    :catchall_1
    move-exception v21

    goto :goto_4

    .end local p1
    .restart local v9       #height:I
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v15       #sourceHeight:I
    .restart local v16       #sourceWidth:I
    .restart local v20       #width:I
    :cond_f
    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_3

    .end local v15           #sourceHeight:I
    .end local v16           #sourceWidth:I
    :cond_10
    move-object/from16 v10, p1

    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "drawable"

    .prologue
    .line 2113
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2114
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2116
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ApplicationPackageManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2122
    const/4 v0, 0x0

    .line 2125
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2131
    const/4 v3, 0x1

    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2135
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2137
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2140
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2146
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 2125
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2141
    :catch_0
    move-exception v2

    .line 2143
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private findDrawableByResourceName(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "name"
    .parameter "res"

    .prologue
    const/4 v0, 0x0

    .line 1823
    if-nez p2, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-object v0

    .line 1829
    :cond_1
    :try_start_0
    const-string v3, "drawable"

    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getCurrentLaunchTheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1830
    .local v2, resID:I
    if-eqz v2, :cond_0

    .line 1833
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1834
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1835
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #resID:I
    :catch_0
    move-exception v1

    .line 1836
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1837
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 1838
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private getAndroidNoShapeDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v4, 0x0

    .line 712
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 713
    .local v2, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 714
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 754
    :goto_0
    return-object v4

    .line 717
    :cond_0
    if-nez p3, :cond_1

    .line 719
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 725
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 726
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getAndroidDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move-object v4, v0

    .line 740
    goto :goto_0

    .line 720
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 721
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 741
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 742
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 745
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v1

    .line 750
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving icon 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "name"

    .prologue
    .line 1008
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1009
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1012
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 1013
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1014
    .local v0, state:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 1030
    .end local v0           #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 1027
    .restart local v0       #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .end local v0           #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 1030
    const/4 v2, 0x0

    goto :goto_0

    .line 1029
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "name"

    .prologue
    .line 1181
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1182
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1183
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 1184
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1185
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1186
    monitor-exit v3

    .line 1192
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 1189
    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_1
    monitor-exit v3

    .line 1192
    const/4 v0, 0x0

    goto :goto_0

    .line 1191
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCurrentLaunchTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1799
    sget-object v0, Landroid/app/ApplicationPackageManager;->sCurrent_Launch_Theme:Ljava/lang/String;

    return-object v0
.end method

.method private getHashmapSystemIcon()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->hashmap_system_consistent_icon:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->hashmap_system_consistent_icon:Ljava/util/HashMap;

    .line 838
    :goto_0
    return-object v1

    .line 832
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/ApplicationPackageManager;->hashmap_system_consistent_icon:Ljava/util/HashMap;

    .line 833
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    sget-object v1, Landroid/app/ApplicationPackageManager;->SYSTEM_ICON_TRANSLATE_ICON_ID_LISTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 834
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->hashmap_system_consistent_icon:Ljava/util/HashMap;

    sget-object v2, Landroid/app/ApplicationPackageManager;->SYSTEM_ICON_TRANSLATE_PACKAGE_NAME_LISTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Landroid/app/ApplicationPackageManager;->SYSTEM_ICON_TRANSLATE_ICON_ID_LISTS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    :cond_1
    const-string v1, "jiayh2"

    const-string v2, "getHashmapSystemIcon creat new"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->hashmap_system_consistent_icon:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private getLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "name"

    .prologue
    .line 1042
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1043
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sLenovoIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1046
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 1047
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1048
    .local v0, state:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 1064
    .end local v0           #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 1061
    .restart local v0       #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sLenovoIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    .end local v0           #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 1064
    const/4 v2, 0x0

    goto :goto_0

    .line 1063
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getShapeBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "drawable"
    .parameter "res"

    .prologue
    .line 1818
    const/4 v1, -0x2

    invoke-direct {p0, p1, v1, p2}, Landroid/app/ApplicationPackageManager;->createIconBitmap(Landroid/graphics/drawable/Drawable;ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1819
    .local v0, b:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getShapeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "drawable"
    .parameter "pm"

    .prologue
    .line 1804
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->setCurrentLaunchTheme()V

    .line 1805
    const/4 v3, 0x0

    .line 1807
    .local v3, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getCurrentLaunchTheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1812
    :goto_0
    invoke-direct {p0, p1, v3}, Landroid/app/ApplicationPackageManager;->getShapeBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1813
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1814
    .local v1, db:Landroid/graphics/drawable/BitmapDrawable;
    return-object v1

    .line 1808
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #db:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v2

    .line 1809
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getThemeIconBg(Landroid/content/res/Resources;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"

    .prologue
    .line 1875
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->readyThemeIconBg(Landroid/content/res/Resources;)V

    .line 1876
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .locals 10
    .parameter "cmd"
    .parameter "pkgList"
    .parameter "hasPkgInfo"

    .prologue
    .line 1076
    const/4 v2, 0x0

    .line 1077
    .local v2, immediateGc:Z
    const/4 v8, 0x1

    if-ne p0, v8, :cond_0

    .line 1078
    const/4 v2, 0x1

    .line 1080
    :cond_0
    if-eqz p1, :cond_9

    array-length v8, p1

    if-lez v8, :cond_9

    .line 1081
    const/4 v5, 0x0

    .line 1082
    .local v5, needCleanup:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_7

    aget-object v7, v0, v1

    .line 1083
    .local v7, ssp:Ljava/lang/String;
    sget-object v9, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v9

    .line 1084
    :try_start_0
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1085
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1086
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$ResourceName;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1087
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1088
    .local v6, nm:Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v6, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1090
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1091
    const/4 v5, 0x1

    goto :goto_1

    .line 1096
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$ResourceName;>;"
    .end local v6           #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_2
    sget-object v8, Landroid/app/ApplicationPackageManager;->sLenovoIconCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 1097
    sget-object v8, Landroid/app/ApplicationPackageManager;->sLenovoIconCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1098
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$ResourceName;>;"
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1099
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1100
    .restart local v6       #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v6, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1102
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1103
    const/4 v5, 0x1

    goto :goto_2

    .line 1108
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$ResourceName;>;"
    .end local v6           #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_4
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 1109
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1110
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$ResourceName;>;"
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1112
    .restart local v6       #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v6, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1114
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1115
    const/4 v5, 0x1

    goto :goto_3

    .line 1119
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$ResourceName;>;"
    .end local v6           #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_6
    monitor-exit v9

    .line 1082
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1119
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1121
    .end local v7           #ssp:Ljava/lang/String;
    :cond_7
    if-nez v5, :cond_8

    if-eqz p2, :cond_9

    .line 1122
    :cond_8
    if-eqz v2, :cond_a

    .line 1124
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 1130
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #needCleanup:Z
    :cond_9
    :goto_4
    return-void

    .line 1126
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #needCleanup:Z
    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto :goto_4
.end method

.method private initStatics()V
    .locals 1

    .prologue
    .line 2086
    const/16 v0, 0xb4

    sput v0, Landroid/app/ApplicationPackageManager;->sIconHeight:I

    sput v0, Landroid/app/ApplicationPackageManager;->sIconWidth:I

    .line 2087
    const/16 v0, 0x90

    sput v0, Landroid/app/ApplicationPackageManager;->sIconSHeight:I

    sput v0, Landroid/app/ApplicationPackageManager;->sIconSWidth:I

    .line 2088
    return-void
.end method

.method private lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "needRecycle"

    .prologue
    const/4 v1, 0x0

    .line 2091
    if-nez p1, :cond_1

    .line 2092
    const/4 v7, 0x0

    .line 2109
    :cond_0
    :goto_0
    return-object v7

    .line 2093
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2094
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2096
    .local v4, h:I
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 2097
    .local v9, scaleWidth:F
    int-to-float v0, p3

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 2099
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2100
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2102
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2104
    .local v7, resizeBitmap:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2106
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "name"
    .parameter "dr"

    .prologue
    .line 1034
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1035
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    monitor-exit v1

    .line 1038
    return-void

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "name"
    .parameter "cs"

    .prologue
    .line 1196
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1197
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    monitor-exit v1

    .line 1199
    return-void

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "name"
    .parameter "dr"

    .prologue
    .line 1068
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1069
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sLenovoIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    monitor-exit v1

    .line 1072
    return-void

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readyThemeIconBg(Landroid/content/res/Resources;)V
    .locals 10
    .parameter "res"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1845
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    sget-object v4, Landroid/app/ApplicationPackageManager;->sCurrent_Launch_Theme:Ljava/lang/String;

    sget-object v5, Landroid/app/ApplicationPackageManager;->sOldCurrent_Launch_Theme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1872
    :goto_0
    return-void

    .line 1849
    :cond_0
    if-nez p1, :cond_1

    .line 1850
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v6

    .line 1851
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v8

    .line 1852
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v9

    .line 1854
    :cond_1
    const-string v1, "theme_appbg"

    .line 1855
    .local v1, themeIconBgName:Ljava/lang/String;
    const-string v2, "theme_appfg"

    .line 1856
    .local v2, themeIconFgName:Ljava/lang/String;
    const-string v3, "theme_appmask"

    .line 1858
    .local v3, themeIconMaskName:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Landroid/app/ApplicationPackageManager;->findDrawableByResourceName(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1860
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 1861
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v6

    .line 1862
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v8

    .line 1863
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v9

    .line 1871
    :goto_1
    sget-object v4, Landroid/app/ApplicationPackageManager;->sCurrent_Launch_Theme:Ljava/lang/String;

    sput-object v4, Landroid/app/ApplicationPackageManager;->sOldCurrent_Launch_Theme:Ljava/lang/String;

    goto :goto_0

    .line 1865
    :cond_2
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6, v6, p1}, Landroid/app/ApplicationPackageManager;->createBitmap(Landroid/graphics/drawable/Drawable;IILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1866
    invoke-direct {p0, v2, p1}, Landroid/app/ApplicationPackageManager;->findDrawableByResourceName(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1867
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6, v6, p1}, Landroid/app/ApplicationPackageManager;->createBitmap(Landroid/graphics/drawable/Drawable;IILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1868
    invoke-direct {p0, v3, p1}, Landroid/app/ApplicationPackageManager;->findDrawableByResourceName(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1869
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6, v6, p1}, Landroid/app/ApplicationPackageManager;->createBitmap(Landroid/graphics/drawable/Drawable;IILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v9

    goto :goto_1
.end method

.method private setCurrentLaunchTheme()V
    .locals 2

    .prologue
    .line 1790
    const-string v1, "persist.sys.ideadesk_theme_name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, theme:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/app/ApplicationPackageManager;->sCurrent_Launch_Theme:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1794
    sput-object v0, Landroid/app/ApplicationPackageManager;->sCurrent_Launch_Theme:Ljava/lang/String;

    .line 1796
    :cond_0
    return-void
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1418
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    :goto_0
    return-void

    .line 1419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 1447
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    return-void

    .line 1448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"
    .parameter "userId"

    .prologue
    .line 1457
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :goto_0
    return-void

    .line 1458
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "names"

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkAPKSignatures(Ljava/lang/String;)I
    .locals 2
    .parameter "pkg"

    .prologue
    .line 1541
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->checkAPKSignatures(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1543
    :goto_0
    return v1

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(II)I
    .locals 3
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    .line 385
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 1374
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :goto_0
    return-void

    .line 1375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1476
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "names"

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 1383
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    :goto_0
    return-void

    .line 1384
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 1
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 1365
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_0
    return-void

    .line 1366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 1
    .parameter "id"
    .parameter "verificationCodeAtTimeout"
    .parameter "millisecondsToDelay"

    .prologue
    .line 1327
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_0
    return-void

    .line 1328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .locals 1
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 1400
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorage(JLandroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :goto_0
    return-void

    .line 1401
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .parameter "idealStorageSize"
    .parameter "observer"

    .prologue
    .line 1391
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_0
    return-void

    .line 1392
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 850
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 856
    :goto_0
    return-object v1

    .line 853
    :cond_0
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 855
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 856
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 859
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 238
    return-object v0

    .line 240
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 244
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 899
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 912
    :goto_0
    return-object v1

    .line 909
    :cond_0
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 911
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 912
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 915
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAndroidDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    .line 693
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 694
    .local v2, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 695
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 700
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 698
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ApplicationPackageManager;->getAndroidNoShapeDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, p0}, Landroid/app/ApplicationPackageManager;->getShapeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 699
    invoke-direct {p0, v2, v0}, Landroid/app/ApplicationPackageManager;->putLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    .line 700
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1526
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1530
    :goto_0
    return v0

    .line 1527
    :catch_0
    move-exception v0

    .line 1530
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "info"

    .prologue
    .line 888
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 223
    return-object v0

    .line 225
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 229
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 1262
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "info"

    .prologue
    .line 920
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 2
    .parameter "componentName"

    .prologue
    .line 1506
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1510
    :goto_0
    return v0

    .line 1507
    :catch_0
    move-exception v0

    .line 1510
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 866
    sget-object v2, Landroid/app/ApplicationPackageManager;->default_SystemIcon_ResourceName:Landroid/app/ApplicationPackageManager$ResourceName;

    .line 867
    .local v2, name:Landroid/app/ApplicationPackageManager$ResourceName;
    if-nez v2, :cond_0

    .line 868
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    .end local v2           #name:Landroid/app/ApplicationPackageManager$ResourceName;
    const-string v3, "DEFAULT_ICON_DEFAULT_PACKAGE_NAME"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 869
    .restart local v2       #name:Landroid/app/ApplicationPackageManager$ResourceName;
    sput-object v2, Landroid/app/ApplicationPackageManager;->default_SystemIcon_ResourceName:Landroid/app/ApplicationPackageManager$ResourceName;

    .line 871
    :cond_0
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 872
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 883
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 875
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308024b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_2

    .line 881
    invoke-direct {p0, v2, v0}, Landroid/app/ApplicationPackageManager;->putLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    move-object v1, v0

    .line 883
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v4, 0x0

    .line 642
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 643
    .local v2, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 644
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 684
    :goto_0
    return-object v4

    .line 647
    :cond_0
    if-nez p3, :cond_1

    .line 649
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .local v3, r:Landroid/content/res/Resources;
    invoke-static {p3, p1, p2, v3}, Landroid/app/ApplicationPackageManager$BaiduInjector;->multiTheme_getDrawableLocal(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v0

    .line 670
    goto :goto_0

    .line 650
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 651
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 671
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 672
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 674
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 675
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v1

    .line 680
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving icon 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 8
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v6}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    .line 454
    .local v5, userId:I
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 459
    .local v2, lastItem:Landroid/content/pm/ApplicationInfo;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 460
    .local v3, lastKey:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, p1, v3, v5}, Landroid/content/pm/IPackageManager;->getInstalledApplications(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 461
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 462
    .restart local v2       #lastItem:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 464
    return-object v0

    .line 459
    .end local v3           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 465
    .end local v0           #applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Package manager has died"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 7
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v3, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 438
    .local v1, lastItem:Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 439
    .local v2, lastKey:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 440
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 441
    .restart local v1       #lastItem:Landroid/content/pm/PackageInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 443
    return-object v3

    .line 438
    .end local v2           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 444
    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    .end local v3           #packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Package manager has died"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1355
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1359
    :goto_0
    return-object v0

    .line 1356
    :catch_0
    move-exception v0

    .line 1359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 618
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 620
    .local v1, ii:Landroid/content/pm/InstrumentationInfo;
    if-eqz v1, :cond_0

    .line 621
    return-object v1

    .line 623
    .end local v1           #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 627
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, intentToResolve:Landroid/content/Intent;
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 133
    :cond_0
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 134
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 138
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 139
    :cond_2
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 141
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLenovoDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v6, 0x0

    .line 762
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 764
    .local v2, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 765
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v5, v0

    .line 819
    :goto_0
    return-object v5

    .line 768
    :cond_0
    if-nez p3, :cond_1

    .line 770
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 776
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 778
    .local v3, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getHashmapSystemIcon()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 780
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getHashmapSystemIcon()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 781
    .local v4, saveresid:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 782
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 789
    :goto_1
    if-eqz v0, :cond_3

    .line 790
    invoke-direct {p0, v2, v0}, Landroid/app/ApplicationPackageManager;->putLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v0

    .line 791
    goto :goto_0

    .line 771
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #saveresid:I
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v5, v6

    .line 772
    goto :goto_0

    .line 786
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #saveresid:I
    :cond_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 795
    .end local v4           #saveresid:I
    :cond_3
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getLenovoDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 797
    if-nez v0, :cond_4

    move-object v5, v6

    .line 799
    goto :goto_0

    .line 804
    :cond_4
    invoke-direct {p0, v2, v0}, Landroid/app/ApplicationPackageManager;->putLenovoCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v0

    .line 805
    goto :goto_0

    .line 806
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 807
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure retrieving resources for"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    move-object v5, v6

    .line 819
    goto :goto_0

    .line 809
    :catch_2
    move-exception v1

    .line 810
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure retrieving resources for"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 812
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v1

    .line 815
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure retrieving icon 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 3
    .parameter "uid"

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v1

    .line 153
    .local v1, gids:[I
    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_1

    .line 154
    :cond_0
    return-object v1

    .line 156
    .end local v1           #gids:[I
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #gids:[I
    :cond_1
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .local v1, pi:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 93
    return-object v1

    .line 95
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 99
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 1
    .parameter "packageName"
    .parameter "userHandle"
    .parameter "observer"

    .prologue
    .line 1410
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :goto_0
    return-void

    .line 1411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .parameter "uid"

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 4
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    .local v1, pgi:Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_0

    .line 199
    return-object v1

    .line 201
    .end local v1           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 205
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pgi:Landroid/content/pm/PermissionGroupInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 4
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .local v1, pi:Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    .line 169
    return-object v1

    .line 171
    .end local v1           #pi:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 175
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PermissionInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1486
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1490
    :goto_0
    return v0

    .line 1487
    :catch_0
    move-exception v0

    .line 1490
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1436
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPreferredPackages(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1440
    :goto_0
    return-object v0

    .line 1437
    :catch_0
    move-exception v0

    .line 1440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    .local v1, pi:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 283
    return-object v1

    .line 285
    .end local v1           #pi:Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 289
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/ProviderInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 253
    return-object v0

    .line 255
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 259
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 6
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 937
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v1, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 948
    :goto_0
    return-object v0

    .line 940
    :cond_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v5, v5, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    .line 943
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_2

    .line 946
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setContextPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 940
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_1

    .line 950
    .restart local v0       #r:Landroid/content/res/Resources;
    :cond_2
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .parameter "appPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .parameter "appPackageName"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 963
    if-gez p2, :cond_0

    .line 964
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call does not support special user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 967
    :cond_0
    const-string v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, v2, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 973
    :goto_0
    return-object v2

    .line 971
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 972
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 973
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 975
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 976
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 978
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    .local v1, si:Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 268
    return-object v1

    .line 270
    .end local v1           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 274
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #si:Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 3

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v4, 0x0

    .line 1204
    new-instance v1, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v1, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1205
    .local v1, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1206
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 1231
    :goto_0
    return-object v4

    .line 1209
    :cond_0
    if-nez p3, :cond_1

    .line 1211
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 1217
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1218
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1219
    invoke-direct {p0, v1, v3}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v3

    .line 1220
    goto :goto_0

    .line 1212
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1213
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1221
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1222
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 1227
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving text 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 5
    .parameter "sharedUserName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 413
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 414
    .local v1, uid:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 415
    return v1

    .line 417
    .end local v1           #uid:I
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 420
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #uid:I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No shared userid for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .prologue
    .line 1554
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1558
    :goto_0
    return-object v0

    .line 1555
    :catch_0
    move-exception v0

    .line 1558
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 6
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v2, 0x0

    .line 1237
    if-nez p3, :cond_0

    .line 1239
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 1245
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1246
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1257
    .end local v1           #r:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1247
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1250
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving xml 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1253
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1254
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public grantPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "permissionName"

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public installExistingPackage(Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1303
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->installExistingPackage(Ljava/lang/String;)I

    move-result v1

    .line 1304
    .local v1, res:I
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 1305
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    .end local v1           #res:I
    :catch_0
    move-exception v0

    .line 1310
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1307
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #res:I
    :cond_0
    return v1
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 1
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 1269
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 8
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "verificationURI"
    .parameter "manifestDigest"
    .parameter "encryptionParams"

    .prologue
    .line 1280
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/IPackageManager;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :goto_0
    return-void

    .line 1282
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 7
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "verificationParams"
    .parameter "encryptionParams"

    .prologue
    .line 1292
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isEnabledCustomPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "strPackage"
    .parameter "strPermission"

    .prologue
    .line 1596
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isEnabledCustomPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1600
    :goto_0
    return v0

    .line 1598
    :catch_0
    move-exception v1

    .line 1600
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSafeMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 984
    :try_start_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    if-gez v3, :cond_0

    .line 985
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    iput v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 987
    :cond_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v3, v2

    .line 985
    goto :goto_0

    :cond_2
    move v1, v2

    .line 987
    goto :goto_1

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .locals 1
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 1346
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :goto_0
    return-void

    .line 1347
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 15
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 515
    .local v12, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 516
    .local v4, specificTypes:[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 517
    move-object/from16 v0, p2

    array-length v9, v0

    .line 518
    .local v9, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 519
    aget-object v13, p2, v11

    .line 520
    .local v13, sp:Landroid/content/Intent;
    if-eqz v13, :cond_1

    .line 521
    invoke-virtual {v13, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 522
    .local v14, t:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 523
    if-nez v4, :cond_0

    .line 524
    new-array v4, v9, [Ljava/lang/String;

    .line 526
    :cond_0
    aput-object v14, v4, v11

    .line 518
    .end local v14           #t:Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 533
    .end local v9           #N:I
    .end local v11           #i:I
    .end local v13           #sp:Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 536
    :catch_0
    move-exception v10

    .line 537
    .local v10, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .local v1, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v1, :cond_0

    .line 184
    return-object v1

    .line 186
    .end local v1           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 190
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1427
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :goto_0
    return-void

    .line 1428
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 1467
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    :goto_0
    return-void

    .line 1468
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 472
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"

    .prologue
    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 597
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "permissionName"

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 2
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 1517
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :goto_0
    return-void

    .line 1518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 2
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 1497
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :goto_0
    return-void

    .line 1498
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "targetPackage"
    .parameter "installerPackageName"

    .prologue
    .line 1337
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :goto_0
    return-void

    .line 1338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "strPackage"
    .parameter "strPermission"
    .parameter "enabled"

    .prologue
    .line 1583
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :goto_0
    return-void

    .line 1584
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPackagePermissions(Ljava/lang/String;Ljava/util/List;[Z)V
    .locals 1
    .parameter "strPackage"
    .parameter
    .parameter "eanbleds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[Z)V"
        }
    .end annotation

    .prologue
    .line 1570
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setPackagePermissions(Ljava/lang/String;Ljava/util/List;[Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    :goto_0
    return-void

    .line 1571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public verifyPendingInstall(II)V
    .locals 1
    .parameter "id"
    .parameter "response"

    .prologue
    .line 1317
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :goto_0
    return-void

    .line 1318
    :catch_0
    move-exception v0

    goto :goto_0
.end method
