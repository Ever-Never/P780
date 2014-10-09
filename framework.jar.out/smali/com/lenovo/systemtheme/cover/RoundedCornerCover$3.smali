.class Lcom/lenovo/systemtheme/cover/RoundedCornerCover$3;
.super Ljava/lang/Object;
.source "RoundedCornerCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;


# direct methods
.method constructor <init>(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$3;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/systemtheme/cover/RoundedCornerCover$3;->this$0:Lcom/lenovo/systemtheme/cover/RoundedCornerCover;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->mIsSystemReady:Z
    invoke-static {v0, v1}, Lcom/lenovo/systemtheme/cover/RoundedCornerCover;->access$602(Lcom/lenovo/systemtheme/cover/RoundedCornerCover;Z)Z

    .line 170
    return-void
.end method
