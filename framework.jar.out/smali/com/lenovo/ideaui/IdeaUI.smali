.class public Lcom/lenovo/ideaui/IdeaUI;
.super Ljava/lang/Object;
.source "IdeaUI.java"


# static fields
.field public static final PLATFORM_IDEAUI_VERSION_KEY:Ljava/lang/String; = "sys.lenovo.ideaui.version.sdk"

.field private static mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

.field private static final sPlatform_ideaui_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "sys.lenovo.ideaui.version.sdk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/ideaui/IdeaUI;->sPlatform_ideaui_version:I

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getDataFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 107
    .local v1, theme:Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .local v0, out:Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget v2, v0, Landroid/util/TypedValue;->data:I

    .line 114
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFloatFromAttribute(Landroid/content/Context;I)F
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 89
    .local v1, theme:Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 91
    .local v0, out:Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 96
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getResFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 71
    .local v1, theme:Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 73
    .local v0, out:Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 78
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;
    .locals 2

    .prologue
    .line 122
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    .line 129
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 126
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "system_theme"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    .restart local v0       #binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    sput-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    .line 129
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    goto :goto_0
.end method

.method public static isIdeaUITheme(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 30
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 31
    .local v1, typedValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 33
    .local v0, theme:Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_0

    const/high16 v4, 0x301

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 37
    .local v2, version:I
    if-lez v2, :cond_0

    .line 42
    .end local v2           #version:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isPlatfromSupportIdeaUI()Z
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/lenovo/ideaui/IdeaUI;->sPlatform_ideaui_version:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static roundedCornerCover_setHasScrollingTab(Z)V
    .locals 2
    .parameter "hasTab"

    .prologue
    .line 160
    :try_start_0
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    .line 162
    .local v1, service:Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v1, p0}, Lcom/lenovo/systemtheme/ISystemThemeService;->roundedCornerCover_setHasScrollingTab(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static roundedCornerCover_setHasWidgetTab(Z)V
    .locals 2
    .parameter "hasTab"

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    .line 142
    .local v1, service:Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v1, p0}, Lcom/lenovo/systemtheme/ISystemThemeService;->roundedCornerCover_setHasWidgetTab(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static roundedCornerCover_setIsCtsTesting(Z)V
    .locals 2
    .parameter "isCtsTesting"

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    .line 202
    .local v1, service:Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1, p0}, Lcom/lenovo/systemtheme/ISystemThemeService;->roundedCornerCover_setIsCtsTesting(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static roundedCornerCover_setStatusBarTransparency(Z)V
    .locals 2
    .parameter "isTransparent"

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    .line 223
    .local v1, service:Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v1, p0}, Lcom/lenovo/systemtheme/ISystemThemeService;->roundedCornerCover_setStatusBarTransparency(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static roundedCornerCover_setTabHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 241
    :try_start_0
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    .line 243
    .local v1, service:Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v1, p0}, Lcom/lenovo/systemtheme/ISystemThemeService;->roundedCornerCover_setTabHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static roundedCornerCover_setTopIsFullScreen(Z)V
    .locals 2
    .parameter "topIsFullscreen"

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    .line 182
    .local v1, service:Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v1, p0}, Lcom/lenovo/systemtheme/ISystemThemeService;->roundedCornerCover_setTopIsFullScreen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static supportNonIdeaUITheme()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
