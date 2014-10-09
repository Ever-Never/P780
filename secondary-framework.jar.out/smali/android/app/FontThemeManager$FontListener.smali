.class Landroid/app/FontThemeManager$FontListener;
.super Ljava/lang/Object;
.source "FontThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FontThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontListener"
.end annotation


# instance fields
.field public ntype:I

.field public t:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FontThemeManager$FontListener;->ntype:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/FontThemeManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/app/FontThemeManager$FontListener;-><init>()V

    return-void
.end method
