.class public Lcom/lenovo/systemtheme/SystemThemeResource;
.super Ljava/lang/Object;
.source "SystemThemeResource.java"


# static fields
.field private static final DBG:Z = true

.field public static final FRAMEWORK_RESOURCE_ID_BEGIN:I = 0x1000000

.field public static final FRAMEWORK_RESOURCE_ID_END:I = 0x1ffffff

.field public static final LENOVO_COLOR_START_ID:I = 0x3060000

.field public static final LENOVO_DRAWABLE_START_ID:I = 0x3080000

.field public static final LENOVO_RESOURCE_ID_BEGIN:I = 0x3000000

.field public static final LENOVO_RESOURCE_ID_END:I = 0x3ffffff

.field public static final MAX_LENOVO_RESOUCE_ID_COUNT:I = 0x320

.field public static final MIPMAP_TYPE:Ljava/lang/String; = "mipmap"

.field public static final RESOURCE_TYPE_COUNT:I = 0x10

.field public static final RESOURCE_TYPE_MASK:I = 0xff0000

.field public static final RESOURCE_TYPE_SHIFT:I = 0x10

.field public static final SUPPORT_SYSTEM_THEME:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemThemeResource"

.field public static final THEME_DEBUG_PERSIST:Ljava/lang/String; = "persist.sys.theme.debug"

.field public static final THEME_RESOURCE_ID_BEGIN:I = 0x5000000

.field public static final THEME_RESOURCE_ID_END:I = 0x5ffffff


# instance fields
.field private mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

.field private mResourceReady:Z

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;

.field private mUserContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 81
    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, themePackageName:Ljava/lang/String;
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v4, "lenovo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const-string v4, "SystemThemeResource"

    const-string v5, "SystemThemeResource: set to default lenovo theme"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 92
    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 93
    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 123
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v4, "SystemThemeResource"

    const-string v5, "Start create SystemThemeResource"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    .local v0, startTime:J
    invoke-virtual {p0, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    .local v3, themeRes:Landroid/content/res/Resources;
    if-nez v3, :cond_1

    .line 107
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to createThemeResource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 115
    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 116
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 120
    :cond_2
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End create SystemThemeResource in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms. mResourceReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMappedLenovoBackgroundResourceId(I)I
    .locals 2
    .parameter "resid"

    .prologue
    .line 205
    move v0, p0

    .line 214
    .local v0, newRes:I
    invoke-static {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isFrameworkResourceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    .end local p0
    :goto_0
    return p0

    .line 219
    .restart local p0
    :cond_0
    sparse-switch p0, :sswitch_data_0

    :goto_1
    move p0, v0

    .line 309
    goto :goto_0

    .line 221
    :sswitch_0
    const v0, 0x3080019

    .line 222
    goto :goto_1

    .line 225
    :sswitch_1
    const v0, 0x308001f

    .line 226
    goto :goto_1

    .line 229
    :sswitch_2
    const v0, 0x3080020

    .line 230
    goto :goto_1

    .line 233
    :sswitch_3
    const v0, 0x3080046

    .line 234
    goto :goto_1

    .line 237
    :sswitch_4
    const v0, 0x3080045

    .line 238
    goto :goto_1

    .line 241
    :sswitch_5
    const v0, 0x3080102

    .line 242
    goto :goto_1

    .line 245
    :sswitch_6
    const v0, 0x3080101

    .line 246
    goto :goto_1

    .line 249
    :sswitch_7
    const v0, 0x30801d8

    .line 250
    goto :goto_1

    .line 253
    :sswitch_8
    const v0, 0x30801d9

    .line 254
    goto :goto_1

    .line 257
    :sswitch_9
    const v0, 0x30801d4

    .line 258
    goto :goto_1

    .line 261
    :sswitch_a
    const v0, 0x30801d5

    .line 262
    goto :goto_1

    .line 265
    :sswitch_b
    const v0, 0x3080075

    .line 266
    goto :goto_1

    .line 269
    :sswitch_c
    const v0, 0x3080076

    .line 270
    goto :goto_1

    .line 273
    :sswitch_d
    const v0, 0x3080135

    .line 274
    goto :goto_1

    .line 277
    :sswitch_e
    const v0, 0x3080136

    .line 278
    goto :goto_1

    .line 281
    :sswitch_f
    const v0, 0x3080014

    .line 282
    goto :goto_1

    .line 285
    :sswitch_10
    const v0, 0x3080241

    .line 286
    goto :goto_1

    .line 289
    :sswitch_11
    const v0, 0x3080242

    .line 290
    goto :goto_1

    .line 294
    :sswitch_12
    const v0, 0x30801fc

    .line 295
    goto :goto_1

    .line 299
    :sswitch_13
    const v0, 0x3080012

    .line 300
    goto :goto_1

    .line 304
    :sswitch_14
    const v0, 0x3080013

    goto :goto_1

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        #android:drawable@bottom_bar#t -> :sswitch_0
        #android:drawable@activated_background_holo_dark#t -> :sswitch_13
        #android:drawable@activated_background_holo_light#t -> :sswitch_14
        #android:drawable@activity_picker_bg#t -> :sswitch_f
        #android:drawable@btn_cab_done_holo_dark#t -> :sswitch_1
        #android:drawable@btn_cab_done_holo_light#t -> :sswitch_2
        #android:drawable@btn_default_holo_dark#t -> :sswitch_4
        #android:drawable@btn_default_holo_light#t -> :sswitch_3
        #android:drawable@edit_text_holo_dark#t -> :sswitch_b
        #android:drawable@edit_text_holo_light#t -> :sswitch_c
        #android:drawable@item_background_holo_dark#t -> :sswitch_6
        #android:drawable@item_background_holo_light#t -> :sswitch_5
        #android:drawable@list_section_divider_holo_dark#t -> :sswitch_d
        #android:drawable@list_section_divider_holo_light#t -> :sswitch_e
        #android:drawable@spinner_ab_holo_dark#t -> :sswitch_9
        #android:drawable@spinner_ab_holo_light#t -> :sswitch_a
        #android:drawable@spinner_background_holo_dark#t -> :sswitch_7
        #android:drawable@spinner_background_holo_light#t -> :sswitch_8
        #android:drawable@tab_indicator_holo#t -> :sswitch_12
        #android:drawable@textfield_searchview_holo_dark#t -> :sswitch_10
        #android:drawable@textfield_searchview_holo_light#t -> :sswitch_11
    .end sparse-switch
.end method

.method public static getMappedLenovoImageResourceId(I)I
    .locals 2
    .parameter "resid"

    .prologue
    .line 319
    move v0, p0

    .line 328
    .local v0, newRes:I
    invoke-static {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isFrameworkResourceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    .end local p0
    :goto_0
    return p0

    .line 333
    .restart local p0
    :cond_0
    sparse-switch p0, :sswitch_data_0

    :goto_1
    :sswitch_0
    move p0, v0

    .line 355
    goto :goto_0

    .line 343
    :sswitch_1
    const v0, 0x3080099

    .line 344
    goto :goto_1

    .line 347
    :sswitch_2
    const v0, 0x308009a

    .line 348
    goto :goto_1

    .line 351
    :sswitch_3
    const v0, 0x308009c

    goto :goto_1

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        #android:drawable@ic_ab_back_holo_dark#t -> :sswitch_0
        #android:drawable@ic_ab_back_holo_light#t -> :sswitch_0
        #android:drawable@ic_cab_done_holo_dark#t -> :sswitch_1
        #android:drawable@ic_cab_done_holo_light#t -> :sswitch_2
        #android:drawable@ic_checkmark_holo_light#t -> :sswitch_3
    .end sparse-switch
.end method

.method public static isFrameworkResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 431
    const/high16 v0, 0x100

    if-lt p0, v0, :cond_0

    const v0, 0x1ffffff

    if-gt p0, v0, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLenovoResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 444
    const/high16 v0, 0x300

    if-lt p0, v0, :cond_0

    const v0, 0x3ffffff

    if-gt p0, v0, :cond_0

    .line 445
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThemeResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 418
    const/high16 v0, 0x500

    if-lt p0, v0, :cond_0

    const v0, 0x5ffffff

    if-gt p0, v0, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetSystemThemeToLenovoDefault()V
    .locals 3

    .prologue
    .line 457
    const-string/jumbo v1, "lenovo"

    invoke-static {v1}, Landroid/content/res/Configuration;->setSystemThemePackageName(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v1, "lenovo"

    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "SystemThemeResource"

    const-string/jumbo v2, "resetSystemThemeToDefault success"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 462
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "SystemThemeResource"

    const-string/jumbo v2, "resetSystemThemeToDefault fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 469
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2
    .parameter "themePackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 133
    .local v0, Pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLenovoColorResourceId(I)I
    .locals 2
    .parameter "resid"

    .prologue
    .line 182
    move v0, p1

    .line 185
    .local v0, newRes:I
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/content/Context;->supportNonIdeaUITheme()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 189
    .restart local p1
    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 195
    goto :goto_0

    .line 191
    :pswitch_0
    const v0, 0x3060012

    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch #android:color@holo_blue_light#t
        :pswitch_0
    .end packed-switch
.end method

.method public getThemeResourceId(I)I
    .locals 3
    .parameter "resid"

    .prologue
    .line 368
    iget-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    if-nez v1, :cond_1

    .line 379
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 372
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/systemtheme/ThemeHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 374
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 6
    .parameter "themeRes"
    .parameter "themePackageName"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v3, 0x0

    .line 173
    :goto_0
    return v3

    .line 151
    :cond_0
    const-string v3, "SystemThemeResource"

    const-string v4, "initId2Themeid start "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string/jumbo v3, "system_theme"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 156
    .local v0, binder:Landroid/os/IBinder;
    :try_start_0
    invoke-static {v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v2

    .line 158
    .local v2, service:Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v2, p2}, Lcom/lenovo/systemtheme/ISystemThemeService;->getThemeIdMap(Ljava/lang/String;)Lcom/lenovo/systemtheme/ThemeHashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    if-nez v3, :cond_1

    .line 168
    new-instance v3, Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-direct {v3}, Lcom/lenovo/systemtheme/ThemeHashMap;-><init>()V

    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    .line 171
    :cond_1
    const-string v3, "SystemThemeResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initId2Themeid end. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-virtual {v5}, Lcom/lenovo/systemtheme/ThemeHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v3, 0x1

    goto :goto_0

    .line 161
    .restart local v2       #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_2
    :try_start_1
    const-string v3, "SystemThemeResource"

    const-string v4, "initId2Themeid: system theme service not ready!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 163
    .end local v2           #service:Lcom/lenovo/systemtheme/ISystemThemeService;
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateSystemThemeConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 485
    :cond_0
    return-void
.end method
