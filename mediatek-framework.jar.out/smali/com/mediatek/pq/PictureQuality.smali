.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# static fields
.field public static final MTK_PQ_MODE_CAMERA:I = 0x1

.field public static final MTK_PQ_MODE_MASK:I = 0x1

.field public static final MTK_PQ_MODE_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "jni_pq"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getIEMode()I
.end method

.method public static getModeIE()I
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getIEMode()I

    move-result v0

    return v0
.end method

.method private static native setCameraPreviewMode()V
.end method

.method private static native setCustomMode(II)V
.end method

.method private static native setGalleryNormalMode()V
.end method

.method private static native setGammaMode(I)V
.end method

.method private static native setIEMode(I)V
.end method

.method public static setMode(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 77
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->setCameraPreviewMode()V

    .line 86
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->setGalleryNormalMode()V

    goto :goto_0
.end method

.method public static setModeCustom(II)Ljava/lang/String;
    .locals 1
    .parameter "mode"
    .parameter "index"

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->setCustomMode(II)V

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setModeGamma(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setGammaMode(I)V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setModeIE(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setIEMode(I)V

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method
