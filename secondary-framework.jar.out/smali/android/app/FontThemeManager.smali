.class public Landroid/app/FontThemeManager;
.super Ljava/lang/Object;
.source "FontThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FontThemeManager$1;,
        Landroid/app/FontThemeManager$FontListener;
    }
.end annotation


# static fields
.field private static FontManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FontThemeManager;",
            ">;"
        }
    .end annotation
.end field

.field private static use_default_font:Z


# instance fields
.field public FontListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FontThemeManager$FontListener;",
            ">;"
        }
    .end annotation
.end field

.field public pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FontThemeManager;->use_default_font:Z

    .line 216
    const/4 v0, 0x0

    sput-object v0, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FontThemeManager;->pid:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/app/FontThemeManager;->pid:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public static changeTextFont(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 129
    invoke-static {p0}, Landroid/app/FontThemeManager;->createThemeFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 130
    .local v0, tf:Landroid/graphics/Typeface;
    sget-boolean v1, Landroid/app/FontThemeManager;->use_default_font:Z

    invoke-static {v0, v1}, Landroid/widget/TextView;->changeThemeFont(Landroid/graphics/Typeface;Z)V

    .line 131
    return-void
.end method

.method private static createThemeFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 134
    if-eqz p0, :cond_3

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, tf:Landroid/graphics/Typeface;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getFontPath()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, curfontpath:Ljava/lang/String;
    const-string v3, "/system/fonts/FangZhengLTH.ttf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/FontThemeManager;->use_default_font:Z

    .line 143
    :goto_0
    sget-boolean v3, Landroid/app/FontThemeManager;->use_default_font:Z

    if-nez v3, :cond_2

    .line 145
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Typeface;->createThemeFont(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    .end local v0           #curfontpath:Ljava/lang/String;
    .end local v1           #tf:Landroid/graphics/Typeface;
    :goto_1
    return-object v1

    .line 141
    .restart local v0       #curfontpath:Ljava/lang/String;
    .restart local v1       #tf:Landroid/graphics/Typeface;
    :cond_1
    sput-boolean v4, Landroid/app/FontThemeManager;->use_default_font:Z

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {}, Landroid/widget/TextView;->freeThemeFont()V

    .line 150
    sput-object v2, Landroid/graphics/Typeface;->THEME_FONT:Landroid/graphics/Typeface;

    .line 151
    const-string v2, "/system/fonts/FangZhengLTH.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->updateThemeFontPath(Ljava/lang/String;)V

    .line 152
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1

    .end local v0           #curfontpath:Ljava/lang/String;
    .end local v1           #tf:Landroid/graphics/Typeface;
    :cond_3
    move-object v1, v2

    .line 157
    goto :goto_1

    .line 146
    .restart local v0       #curfontpath:Ljava/lang/String;
    .restart local v1       #tf:Landroid/graphics/Typeface;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getInstance()Landroid/app/FontThemeManager;
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 28
    .local v2, pid:I
    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 30
    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FontThemeManager;

    .line 31
    .local v1, item:Landroid/app/FontThemeManager;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/app/FontThemeManager;->pid:I

    if-ne v3, v2, :cond_0

    .line 36
    .end local v0           #i:I
    .end local v1           #item:Landroid/app/FontThemeManager;
    :goto_1
    return-object v1

    .line 29
    .restart local v0       #i:I
    .restart local v1       #item:Landroid/app/FontThemeManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0           #i:I
    .end local v1           #item:Landroid/app/FontThemeManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static registerFontListener(Landroid/widget/TextView;Landroid/widget/TextView$TextFontListener;)V
    .locals 8
    .parameter "tx"
    .parameter "listener"

    .prologue
    const/4 v7, 0x1

    .line 40
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 42
    .local v3, impl:Landroid/view/ViewRootImpl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->isSameThread()Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    .end local v3           #impl:Landroid/view/ViewRootImpl;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v3       #impl:Landroid/view/ViewRootImpl;
    :cond_1
    const/4 v0, 0x0

    .line 46
    .local v0, add_Instance:Z
    invoke-static {}, Landroid/app/FontThemeManager;->getInstance()Landroid/app/FontThemeManager;

    move-result-object v1

    .line 47
    .local v1, cur:Landroid/app/FontThemeManager;
    invoke-static {}, Landroid/app/FontThemeManager;->getInstance()Landroid/app/FontThemeManager;

    move-result-object v6

    if-nez v6, :cond_4

    .line 48
    sget-object v6, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    .line 51
    :cond_2
    const/4 v0, 0x1

    .line 52
    new-instance v1, Landroid/app/FontThemeManager;

    .end local v1           #cur:Landroid/app/FontThemeManager;
    invoke-direct {v1}, Landroid/app/FontThemeManager;-><init>()V

    .line 53
    .restart local v1       #cur:Landroid/app/FontThemeManager;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getFontPath()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, curfontpath:Ljava/lang/String;
    const-string v6, "/system/fonts/FangZhengLTH.ttf"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 56
    :cond_3
    sput-boolean v7, Landroid/app/FontThemeManager;->use_default_font:Z

    .line 62
    .end local v2           #curfontpath:Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-boolean v6, p1, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    if-nez v6, :cond_0

    .line 63
    iput-boolean v7, p1, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 65
    new-instance v4, Landroid/app/FontThemeManager$FontListener;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/app/FontThemeManager$FontListener;-><init>(Landroid/app/FontThemeManager$1;)V

    .line 66
    .local v4, lis:Landroid/app/FontThemeManager$FontListener;
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v4, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    .line 67
    iget v6, p1, Landroid/widget/TextView$TextFontListener;->mstyle:I

    iput v6, v4, Landroid/app/FontThemeManager$FontListener;->ntype:I

    .line 68
    iget-object v6, v1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    if-eqz v0, :cond_5

    sget-object v6, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 70
    sget-object v6, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/app/FontThemeManager;->createThemeFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 73
    .local v5, tf:Landroid/graphics/Typeface;
    if-eqz v5, :cond_0

    .line 74
    sget-boolean v6, Landroid/app/FontThemeManager;->use_default_font:Z

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->UpdateThemeFont(Landroid/graphics/Typeface;Z)V

    goto :goto_0

    .line 58
    .end local v4           #lis:Landroid/app/FontThemeManager$FontListener;
    .end local v5           #tf:Landroid/graphics/Typeface;
    .restart local v2       #curfontpath:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    sput-boolean v6, Landroid/app/FontThemeManager;->use_default_font:Z

    goto :goto_1
.end method


# virtual methods
.method freeFontManager(Landroid/app/FontThemeManager;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    .line 124
    const/4 p1, 0x0

    .line 126
    :cond_0
    return-void
.end method

.method public freeFontThemeManager()V
    .locals 3

    .prologue
    .line 109
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 110
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 111
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FontThemeManager;

    .line 112
    .local v1, item:Landroid/app/FontThemeManager;
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, v1}, Landroid/app/FontThemeManager;->freeFontManager(Landroid/app/FontThemeManager;)V

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    .end local v0           #i:I
    .end local v1           #item:Landroid/app/FontThemeManager;
    :cond_0
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 117
    const/4 v2, 0x0

    sput-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method public unRegisterFontListener(Landroid/widget/TextView;)V
    .locals 5
    .parameter "tv"

    .prologue
    .line 81
    invoke-static {}, Landroid/app/FontThemeManager;->getInstance()Landroid/app/FontThemeManager;

    move-result-object v0

    .line 82
    .local v0, cur:Landroid/app/FontThemeManager;
    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 87
    .local v3, nsize:I
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 88
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/FontThemeManager$FontListener;

    .line 89
    .local v2, listener:Landroid/app/FontThemeManager$FontListener;
    if-eqz v2, :cond_4

    .line 90
    iget-object v4, v2, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 91
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    .end local v2           #listener:Landroid/app/FontThemeManager$FontListener;
    :cond_2
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 98
    sget-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 102
    :cond_3
    sget-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 103
    sget-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 104
    const/4 v4, 0x0

    sput-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    goto :goto_0

    .line 87
    .restart local v2       #listener:Landroid/app/FontThemeManager$FontListener;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public updateFont(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "ctx"
    .parameter "strPath"

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 209
    :cond_0
    return-void

    .line 165
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 166
    .local v6, pid:I
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 167
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 168
    .local v5, nsize:I
    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 169
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FontThemeManager;

    .line 170
    .local v3, item:Landroid/app/FontThemeManager;
    if-eqz v3, :cond_2

    iget v9, v3, Landroid/app/FontThemeManager;->pid:I

    if-eq v9, v6, :cond_2

    .line 171
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0, v3}, Landroid/app/FontThemeManager;->freeFontManager(Landroid/app/FontThemeManager;)V

    .line 168
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 177
    .end local v1           #i:I
    .end local v3           #item:Landroid/app/FontThemeManager;
    .end local v5           #nsize:I
    :cond_3
    invoke-static {p1}, Landroid/app/FontThemeManager;->createThemeFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 178
    .local v7, tf:Landroid/graphics/Typeface;
    if-eqz v7, :cond_0

    .line 182
    iget-object v9, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 183
    .restart local v5       #nsize:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 184
    iget-object v9, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/FontThemeManager$FontListener;

    .line 185
    .local v4, listener:Landroid/app/FontThemeManager$FontListener;
    if-eqz v4, :cond_4

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, font:Landroid/graphics/Typeface;
    iget v9, v4, Landroid/app/FontThemeManager$FontListener;->ntype:I

    if-lez v9, :cond_5

    .line 188
    iget v9, v4, Landroid/app/FontThemeManager$FontListener;->ntype:I

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 197
    :goto_2
    if-eqz v0, :cond_4

    .line 198
    iget-object v9, v4, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 199
    .local v8, tv:Landroid/widget/TextView;
    if-eqz v8, :cond_4

    .line 200
    invoke-virtual {v8}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 201
    .local v2, impl:Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_4

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->isSameThread()Z

    move-result v9

    if-nez v9, :cond_7

    .line 183
    .end local v0           #font:Landroid/graphics/Typeface;
    .end local v2           #impl:Landroid/view/ViewRootImpl;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .restart local v0       #font:Landroid/graphics/Typeface;
    :cond_5
    sget-boolean v9, Landroid/app/FontThemeManager;->use_default_font:Z

    if-eqz v9, :cond_6

    .line 191
    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 193
    :cond_6
    move-object v0, v7

    goto :goto_2

    .line 204
    .restart local v2       #impl:Landroid/view/ViewRootImpl;
    .restart local v8       #tv:Landroid/widget/TextView;
    :cond_7
    sget-boolean v9, Landroid/app/FontThemeManager;->use_default_font:Z

    invoke-virtual {v8, v0, v9}, Landroid/widget/TextView;->UpdateThemeFont(Landroid/graphics/Typeface;Z)V

    goto :goto_3
.end method
