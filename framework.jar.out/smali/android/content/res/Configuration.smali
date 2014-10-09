.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$BaiduInjector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration; = null

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final LENOVO_DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String; = "lenovo"

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final PERISIST_SYSTEM_THEME_PACKAGENAME:Ljava/lang/String; = "persist.sys.theme.package"

.field public static final PROJECT_DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String; = "lenovo"

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SKIN_UNDEFINED:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final THEME_PACKAGE_UNDEFINED:Ljava/lang/String; = "android"

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public ControlTheme:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public current_theme_id:I

.field public densityDpi:I

.field public fontPath:Ljava/lang/String;

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mSystemThemePackageName:Ljava/lang/String;

.field public mcc:I

.field public mnc:I

.field public nButtonres:I

.field public nCheckboxres:I

.field public nDialogres:I

.field public nRadioButtonres:I

.field public nSectionLineBackground:I

.field public nSeekbarres:I

.field public nSwitchres:I

.field public nTabres:I

.field public nTitleBackground:I

.field public nTitlecolor:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public packagename:Ljava/lang/String;

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public simSetLocale:Z

.field public skin:Ljava/lang/String;

.field public smallestScreenWidthDp:I

.field public themeChanged:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1480
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 674
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    .line 623
    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    .line 628
    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    .line 633
    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    .line 638
    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    .line 643
    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    .line 648
    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    .line 653
    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    .line 658
    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    .line 663
    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    .line 675
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 676
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    .line 623
    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    .line 628
    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    .line 633
    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    .line 638
    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    .line 643
    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    .line 648
    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    .line 653
    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    .line 658
    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    .line 663
    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    .line 682
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 683
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 1494
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    .line 623
    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    .line 628
    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    .line 633
    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    .line 638
    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    .line 643
    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    .line 648
    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    .line 653
    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    .line 658
    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    .line 663
    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    .line 1495
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1496
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getFontPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 908
    const-string/jumbo v1, "persist.sys.skin.fontpath"

    const-string v2, "/system/fonts/FangZhengLTH.ttf"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .parameter "screenLayout"

    .prologue
    .line 1674
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static getSkin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 896
    const-string/jumbo v1, "persist.sys.skin"

    const-string v2, "/system/framework/framework-res.apk"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static getSkinPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 902
    const-string/jumbo v1, "persist.sys.skin.package"

    const-string v2, "android"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static getSystemThemePackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 916
    const-string/jumbo v1, "persist.sys.theme.package"

    const-string/jumbo v2, "lenovo"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static needNewResources(II)Z
    .locals 2
    .parameter "configChanges"
    .parameter "interestingChanges"

    .prologue
    .line 1319
    const/high16 v0, 0x4000

    or-int/2addr v0, p1

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .parameter "curLayout"
    .parameter "longSizeDp"
    .parameter "shortSizeDp"

    .prologue
    .line 210
    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_3

    .line 213
    const/4 v3, 0x1

    .line 214
    .local v3, screenLayoutSize:I
    const/4 v2, 0x0

    .line 215
    .local v2, screenLayoutLong:Z
    const/4 v1, 0x0

    .line 250
    .local v1, screenLayoutCompatNeeded:Z
    :goto_0
    if-nez v2, :cond_0

    .line 251
    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    .line 253
    :cond_0
    if-eqz v1, :cond_1

    .line 254
    const/high16 v4, 0x1000

    or-int/2addr p0, v4

    .line 256
    :cond_1
    and-int/lit8 v0, p0, 0xf

    .line 257
    .local v0, curSize:I
    if-ge v3, v0, :cond_2

    .line 258
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    .line 260
    :cond_2
    return p0

    .line 218
    .end local v0           #curSize:I
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_3
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_5

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_5

    .line 221
    const/4 v3, 0x4

    .line 233
    .restart local v3       #screenLayoutSize:I
    :goto_1
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_7

    .line 234
    :cond_4
    const/4 v1, 0x1

    .line 240
    .restart local v1       #screenLayoutCompatNeeded:Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_8

    .line 242
    const/4 v2, 0x1

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0

    .line 222
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_5
    const/16 v4, 0x280

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_6

    .line 225
    const/4 v3, 0x3

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 227
    .end local v3           #screenLayoutSize:I
    :cond_6
    const/4 v3, 0x2

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 236
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #screenLayoutCompatNeeded:Z
    goto :goto_2

    .line 244
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .parameter "curLayout"

    .prologue
    .line 195
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static setSystemThemePackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 922
    const-string/jumbo v0, "persist.sys.theme.package"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "that"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 1500
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1501
    .local v0, a:F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1502
    .local v1, b:F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    move v2, v3

    .line 1585
    :cond_0
    :goto_0
    return v2

    .line 1503
    :cond_1
    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    move v2, v4

    goto :goto_0

    .line 1504
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mcc:I

    iget v6, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v2, v5, v6

    .line 1505
    .local v2, n:I
    if-nez v2, :cond_0

    .line 1506
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v2, v5, v6

    .line 1507
    if-nez v2, :cond_0

    .line 1508
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_3

    .line 1509
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_5

    move v2, v4

    goto :goto_0

    .line 1510
    :cond_3
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_4

    move v2, v3

    .line 1511
    goto :goto_0

    .line 1513
    :cond_4
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1514
    if-nez v2, :cond_0

    .line 1515
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1516
    if-nez v2, :cond_0

    .line 1517
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1518
    if-nez v2, :cond_0

    .line 1520
    :cond_5
    iget v5, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v2, v5, v6

    .line 1521
    if-nez v2, :cond_0

    .line 1522
    iget v5, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v2, v5, v6

    .line 1523
    if-nez v2, :cond_0

    .line 1524
    iget v5, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v2, v5, v6

    .line 1525
    if-nez v2, :cond_0

    .line 1526
    iget v5, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v2, v5, v6

    .line 1527
    if-nez v2, :cond_0

    .line 1528
    iget v5, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v2, v5, v6

    .line 1529
    if-nez v2, :cond_0

    .line 1530
    iget v5, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v2, v5, v6

    .line 1531
    if-nez v2, :cond_0

    .line 1532
    iget v5, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v2, v5, v6

    .line 1533
    if-nez v2, :cond_0

    .line 1534
    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v2, v5, v6

    .line 1535
    if-nez v2, :cond_0

    .line 1536
    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v2, v5, v6

    .line 1537
    if-nez v2, :cond_0

    .line 1538
    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v2, v5, v6

    .line 1539
    if-nez v2, :cond_0

    .line 1540
    iget v5, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v2, v5, v6

    .line 1541
    if-nez v2, :cond_0

    .line 1542
    iget v5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v2, v5, v6

    .line 1543
    if-nez v2, :cond_0

    .line 1544
    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v2, v5, v6

    .line 1546
    if-nez v2, :cond_0

    .line 1547
    iget-object v5, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 1548
    iget-object v5, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v5, :cond_8

    move v2, v4

    goto/16 :goto_0

    .line 1549
    :cond_6
    iget-object v5, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v5, :cond_7

    move v2, v3

    .line 1550
    goto/16 :goto_0

    .line 1552
    :cond_7
    iget-object v5, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1554
    :cond_8
    if-nez v2, :cond_0

    .line 1555
    iget v5, p0, Landroid/content/res/Configuration;->ControlTheme:I

    iget v6, p1, Landroid/content/res/Configuration;->ControlTheme:I

    if-eq v5, v6, :cond_9

    move v2, v4

    .line 1556
    :goto_1
    if-nez v2, :cond_0

    .line 1557
    iget v5, p0, Landroid/content/res/Configuration;->nButtonres:I

    iget v6, p1, Landroid/content/res/Configuration;->nButtonres:I

    if-eq v5, v6, :cond_a

    move v2, v4

    goto/16 :goto_0

    .line 1555
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 1559
    :cond_a
    iget v5, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v6, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    if-eq v5, v6, :cond_b

    move v2, v4

    goto/16 :goto_0

    .line 1560
    :cond_b
    iget v5, p0, Landroid/content/res/Configuration;->nSwitchres:I

    iget v6, p1, Landroid/content/res/Configuration;->nSwitchres:I

    if-eq v5, v6, :cond_c

    move v2, v4

    goto/16 :goto_0

    .line 1561
    :cond_c
    iget v5, p0, Landroid/content/res/Configuration;->nTabres:I

    iget v6, p1, Landroid/content/res/Configuration;->nTabres:I

    if-eq v5, v6, :cond_d

    move v2, v4

    goto/16 :goto_0

    .line 1562
    :cond_d
    iget v5, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v6, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    if-eq v5, v6, :cond_e

    move v2, v4

    goto/16 :goto_0

    .line 1563
    :cond_e
    iget v5, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v6, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    if-eq v5, v6, :cond_f

    move v2, v4

    goto/16 :goto_0

    .line 1564
    :cond_f
    iget v5, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v6, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-eq v5, v6, :cond_10

    move v2, v4

    goto/16 :goto_0

    .line 1565
    :cond_10
    iget v5, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v6, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-eq v5, v6, :cond_11

    move v2, v4

    goto/16 :goto_0

    .line 1566
    :cond_11
    iget v5, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    iget v6, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    if-eq v5, v6, :cond_12

    move v2, v4

    goto/16 :goto_0

    .line 1568
    :cond_12
    iget-object v5, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    move v2, v4

    .line 1569
    goto/16 :goto_0

    .line 1575
    :cond_13
    iget-object v5, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-nez v5, :cond_14

    .line 1576
    iget-object v3, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v2, v4

    goto/16 :goto_0

    .line 1577
    :cond_14
    iget-object v4, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-nez v4, :cond_15

    move v2, v3

    .line 1578
    goto/16 :goto_0

    .line 1580
    :cond_15
    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, p1, v2}, Landroid/content/res/Configuration$BaiduInjector;->compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v2

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 4
    .parameter "delta"

    .prologue
    const/high16 v3, -0x8000

    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1201
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 1203
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 1204
    or-int/lit8 v0, v0, 0x1

    .line 1206
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 1207
    or-int/lit8 v0, v0, 0x2

    .line 1209
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1211
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 1212
    or-int/lit16 v0, v0, 0x2000

    .line 1214
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_5

    .line 1216
    or-int/lit8 v0, v0, 0x8

    .line 1218
    :cond_5
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_6

    .line 1220
    or-int/lit8 v0, v0, 0x10

    .line 1222
    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_7

    .line 1224
    or-int/lit8 v0, v0, 0x20

    .line 1226
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_8

    .line 1228
    or-int/lit8 v0, v0, 0x20

    .line 1230
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_9

    .line 1232
    or-int/lit8 v0, v0, 0x40

    .line 1234
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_a

    .line 1236
    or-int/lit8 v0, v0, 0x20

    .line 1238
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_b

    .line 1240
    or-int/lit16 v0, v0, 0x80

    .line 1242
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 1246
    or-int/lit16 v0, v0, 0x100

    .line 1248
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_d

    .line 1250
    or-int/lit16 v0, v0, 0x200

    .line 1252
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_e

    .line 1254
    or-int/lit16 v0, v0, 0x400

    .line 1256
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_f

    .line 1258
    or-int/lit16 v0, v0, 0x400

    .line 1260
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_10

    .line 1262
    or-int/lit16 v0, v0, 0x800

    .line 1264
    :cond_10
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_11

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_11

    .line 1266
    or-int/lit16 v0, v0, 0x1000

    .line 1269
    :cond_11
    iget-object v1, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1270
    :cond_12
    or-int/2addr v0, v3

    .line 1273
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->ControlTheme:I

    iget v2, p0, Landroid/content/res/Configuration;->ControlTheme:I

    if-eq v1, v2, :cond_14

    .line 1274
    or-int/2addr v0, v3

    .line 1277
    :cond_14
    iget v1, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iget v2, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nDialogres:I

    iget v2, p0, Landroid/content/res/Configuration;->nDialogres:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nButtonres:I

    iget v2, p0, Landroid/content/res/Configuration;->nButtonres:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v2, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iget v2, p0, Landroid/content/res/Configuration;->nSwitchres:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nTabres:I

    iget v2, p0, Landroid/content/res/Configuration;->nTabres:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v2, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v2, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v2, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-ne v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iget v2, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    if-eq v1, v2, :cond_16

    .line 1287
    :cond_15
    or-int/2addr v0, v3

    .line 1290
    :cond_16
    iget-object v1, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1291
    or-int/2addr v0, v3

    .line 1298
    :cond_17
    iget-object v1, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1300
    :cond_18
    or-int/2addr v0, v3

    .line 1304
    :cond_19
    invoke-static {p0, p1, v0}, Landroid/content/res/Configuration$BaiduInjector;->multiTheme_dealThemeChange2(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v0
    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1589
    if-nez p1, :cond_1

    move v0, v1

    .line 1591
    :cond_0
    :goto_0
    return v0

    .line 1590
    :cond_1
    if-eq p1, p0, :cond_0

    .line 1591
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 1596
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1599
    :goto_0
    return v0

    .line 1597
    :catch_0
    move-exception v0

    .line 1599
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1603
    const/16 v0, 0x11

    .line 1604
    .local v0, result:I
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1605
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v3

    .line 1606
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v3

    .line 1607
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 1608
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v3

    .line 1609
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v3

    .line 1610
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v3

    .line 1611
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v3

    .line 1612
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v3

    .line 1613
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v3

    .line 1614
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v3

    .line 1615
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v3

    .line 1616
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v3

    .line 1617
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v3

    .line 1618
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v3

    .line 1619
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v3

    .line 1620
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v3

    .line 1621
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 1625
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    invoke-static {p0, v0}, Landroid/content/res/Configuration$BaiduInjector;->hashCode(Landroid/content/res/Configuration;I)I

    move-result v0

    .line 1628
    return v0

    :cond_1
    move v1, v2

    .line 1607
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1621
    goto :goto_1
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 274
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 275
    .local v0, cur:I
    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1328
    if-nez p1, :cond_1

    move v1, v2

    .line 1348
    :cond_0
    :goto_0
    return v1

    .line 1332
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1337
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1342
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .line 1343
    .local v0, diff:I
    const/high16 v3, 0x1

    if-le v0, v3, :cond_2

    move v1, v2

    .line 1346
    goto :goto_0

    .line 1348
    :cond_2
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 980
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1428
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1435
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 1668
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1669
    .local v0, layoutDirection:I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1671
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 1639
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1640
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1641
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1642
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 686
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 687
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 688
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 689
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget-boolean v0, p1, Landroid/content/res/Configuration;->simSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    iget v0, p1, Landroid/content/res/Configuration;->ControlTheme:I

    iput v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    iget v0, p1, Landroid/content/res/Configuration;->current_theme_id:I

    iput v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    iget v0, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    iget v0, p1, Landroid/content/res/Configuration;->nDialogres:I

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    iget v0, p1, Landroid/content/res/Configuration;->nButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    iget v0, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v0, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    iget v0, p1, Landroid/content/res/Configuration;->nTabres:I

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    iget v0, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v0, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v0, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v0, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    iget-object v0, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->setThemeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    return-void
.end method

.method public setToDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    iput-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Configuration;->getSkinPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/ThemeProperties;->getCurrentControlTheme()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-static {}, Landroid/content/res/ThemeProperties;->getCurrentThemeIndex()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleColorIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeDialogIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeButtonIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeCheckBoxIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSwitchIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeTabBackgroundIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTabres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeRadioIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeTitleBackgroundIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSectionLineIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    invoke-static {v2}, Landroid/content/res/ThemeProperties;->getCurrentThemeSeekbarIndex(Z)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    iput-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Configuration;->getFontPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/content/res/Configuration$BaiduInjector;->setThemeChangedToDefault(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 740
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 742
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    .line 744
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    .line 750
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :goto_1
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    .line 756
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 761
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    .line 762
    .local v0, layoutDir:I
    sparse-switch v0, :sswitch_data_0

    .line 766
    const-string v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_4

    .line 770
    const-string v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_5

    .line 775
    const-string v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_6

    .line 780
    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_7

    .line 785
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 795
    const-string v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 798
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    .line 802
    const-string v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    .line 809
    const-string v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    .line 818
    const-string v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 820
    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2

    .line 824
    const-string v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 826
    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    .line 831
    const-string v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_4

    .line 838
    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 840
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    .line 845
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 847
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_6

    .line 851
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 853
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    .line 859
    const-string v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_8

    .line 865
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_12
    const-string v2, " skin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_0

    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0, v1}, Landroid/content/res/Configuration$BaiduInjector;->appendToString(Landroid/content/res/Configuration;Ljava/lang/StringBuilder;)V

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " skin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packagename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " controltheme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v2, " current_theme_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget v2, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v2, " fontpath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v2, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 747
    .end local v0           #layoutDir:I
    :cond_1
    const-string v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 753
    :cond_2
    const-string v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 759
    :cond_3
    const-string v2, " ?locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 763
    .restart local v0       #layoutDir:I
    :sswitch_2
    const-string v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 764
    :sswitch_3
    const-string v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 765
    :sswitch_4
    const-string v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 772
    :cond_4
    const-string v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 777
    :cond_5
    const-string v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 782
    :cond_6
    const-string v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 787
    :cond_7
    const-string v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 790
    :pswitch_1
    const-string v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 791
    :pswitch_2
    const-string v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 792
    :pswitch_3
    const-string v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 793
    :pswitch_4
    const-string v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 794
    :pswitch_5
    const-string v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 799
    :sswitch_5
    const-string v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 801
    :sswitch_6
    const-string v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 806
    :pswitch_6
    const-string v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 807
    :pswitch_7
    const-string v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 808
    :pswitch_8
    const-string v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 812
    :pswitch_9
    const-string v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 814
    :pswitch_a
    const-string v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 815
    :pswitch_b
    const-string v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 816
    :pswitch_c
    const-string v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 817
    :pswitch_d
    const-string v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 821
    :sswitch_7
    const-string v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 823
    :sswitch_8
    const-string v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 827
    :pswitch_e
    const-string v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 828
    :pswitch_f
    const-string v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 829
    :pswitch_10
    const-string v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 830
    :pswitch_11
    const-string v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 834
    :pswitch_12
    const-string v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 835
    :pswitch_13
    const-string v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 836
    :pswitch_14
    const-string v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 837
    :pswitch_15
    const-string v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 841
    :pswitch_16
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 842
    :pswitch_17
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 843
    :pswitch_18
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 844
    :pswitch_19
    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 848
    :pswitch_1a
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 849
    :pswitch_1b
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 850
    :pswitch_1c
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 854
    :pswitch_1d
    const-string v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 855
    :pswitch_1e
    const-string v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 856
    :pswitch_1f
    const-string v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 857
    :pswitch_20
    const-string v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 858
    :pswitch_21
    const-string v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 862
    :pswitch_22
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 863
    :pswitch_23
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 864
    :pswitch_24
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 762
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 798
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 805
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 811
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 820
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    .line 826
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 833
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 840
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 847
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 853
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 861
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 5
    .parameter "delta"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x8000

    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 993
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 994
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 996
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 997
    or-int/lit8 v0, v0, 0x1

    .line 998
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1000
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 1001
    or-int/lit8 v0, v0, 0x2

    .line 1002
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1004
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1006
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 1007
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_22

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    :goto_0
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1010
    or-int/lit16 v0, v0, 0x2000

    .line 1013
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1015
    :cond_4
    iget-boolean v1, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    .line 1017
    :cond_5
    iput-boolean v4, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1018
    or-int/lit8 v0, v0, 0x4

    .line 1021
    :cond_6
    iget-boolean v1, p1, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v1, :cond_7

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_8

    .line 1022
    :cond_7
    iput-boolean v4, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    .line 1023
    or-int/lit8 v0, v0, 0x4

    .line 1026
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_9

    .line 1028
    or-int/lit8 v0, v0, 0x8

    .line 1029
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1031
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_a

    .line 1033
    or-int/lit8 v0, v0, 0x10

    .line 1034
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1036
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_b

    .line 1038
    or-int/lit8 v0, v0, 0x20

    .line 1039
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1041
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_c

    .line 1043
    or-int/lit8 v0, v0, 0x20

    .line 1044
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1046
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_d

    .line 1048
    or-int/lit8 v0, v0, 0x40

    .line 1049
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1051
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_e

    .line 1053
    or-int/lit8 v0, v0, 0x20

    .line 1054
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1056
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_f

    .line 1058
    or-int/lit16 v0, v0, 0x80

    .line 1059
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1061
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v1, v2, :cond_10

    .line 1065
    or-int/lit16 v0, v0, 0x100

    .line 1067
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    if-nez v1, :cond_23

    .line 1068
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1073
    :cond_10
    :goto_1
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_12

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_12

    .line 1075
    or-int/lit16 v0, v0, 0x200

    .line 1076
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_11

    .line 1077
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x10

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1080
    :cond_11
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_12

    .line 1081
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1085
    :cond_12
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_13

    .line 1087
    or-int/lit16 v0, v0, 0x400

    .line 1088
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1090
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_14

    .line 1092
    or-int/lit16 v0, v0, 0x400

    .line 1093
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1095
    :cond_14
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_15

    .line 1096
    or-int/lit16 v0, v0, 0x400

    .line 1097
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1099
    :cond_15
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_16

    .line 1100
    or-int/lit16 v0, v0, 0x1000

    .line 1101
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1103
    :cond_16
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v1, :cond_17

    .line 1104
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1106
    :cond_17
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v1, :cond_18

    .line 1107
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1109
    :cond_18
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v1, :cond_19

    .line 1110
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1112
    :cond_19
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_1a

    .line 1113
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 1117
    :cond_1a
    invoke-static {p0, p1, v0}, Landroid/content/res/Configuration$BaiduInjector;->multiTheme_dealThemeChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1118
    :cond_1b
    or-int/2addr v0, v3

    .line 1119
    iget-object v1, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 1125
    :cond_1c
    iget v1, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iget v2, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nDialogres:I

    iget v2, p0, Landroid/content/res/Configuration;->nDialogres:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nButtonres:I

    iget v2, p0, Landroid/content/res/Configuration;->nButtonres:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iget v2, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iget v2, p0, Landroid/content/res/Configuration;->nSwitchres:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nTabres:I

    iget v2, p0, Landroid/content/res/Configuration;->nTabres:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iget v2, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iget v2, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iget v2, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    if-ne v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iget v2, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    if-eq v1, v2, :cond_1e

    .line 1135
    :cond_1d
    or-int/2addr v0, v3

    .line 1136
    iget v1, p1, Landroid/content/res/Configuration;->nTitlecolor:I

    iput v1, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    .line 1137
    iget v1, p1, Landroid/content/res/Configuration;->nDialogres:I

    iput v1, p0, Landroid/content/res/Configuration;->nDialogres:I

    .line 1138
    iget v1, p1, Landroid/content/res/Configuration;->nButtonres:I

    iput v1, p0, Landroid/content/res/Configuration;->nButtonres:I

    .line 1139
    iget v1, p1, Landroid/content/res/Configuration;->nCheckboxres:I

    iput v1, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    .line 1140
    iget v1, p1, Landroid/content/res/Configuration;->nSwitchres:I

    iput v1, p0, Landroid/content/res/Configuration;->nSwitchres:I

    .line 1141
    iget v1, p1, Landroid/content/res/Configuration;->nTabres:I

    iput v1, p0, Landroid/content/res/Configuration;->nTabres:I

    .line 1142
    iget v1, p1, Landroid/content/res/Configuration;->nRadioButtonres:I

    iput v1, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    .line 1143
    iget v1, p1, Landroid/content/res/Configuration;->nTitleBackground:I

    iput v1, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    .line 1144
    iget v1, p1, Landroid/content/res/Configuration;->nSectionLineBackground:I

    iput v1, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    .line 1145
    iget v1, p1, Landroid/content/res/Configuration;->nSeekbarres:I

    iput v1, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    .line 1148
    :cond_1e
    iget-object v1, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1149
    iget-object v1, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    .line 1150
    or-int/2addr v0, v3

    .line 1157
    :cond_1f
    iget-object v1, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1159
    :cond_20
    or-int/2addr v0, v3

    .line 1160
    iget-object v1, p1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    .line 1164
    :cond_21
    return v0

    .line 1007
    :cond_22
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1070
    :cond_23
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/res/Configuration;->simSetLocale:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/res/Configuration;->packagename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/res/Configuration;->ControlTheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->current_theme_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nTitlecolor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nDialogres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nButtonres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nCheckboxres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nSwitchres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nTabres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nRadioButtonres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nTitleBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nSectionLineBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->nSeekbarres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1373
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 1397
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public updateTheme()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    return-void
.end method
