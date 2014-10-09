.class public abstract Lcom/lenovo/systemtheme/ISystemThemeService$Stub;
.super Landroid/os/Binder;
.source "ISystemThemeService.java"

# interfaces
.implements Lcom/lenovo/systemtheme/ISystemThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/systemtheme/ISystemThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/systemtheme/ISystemThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lenovo.systemtheme.ISystemThemeService"

.field static final TRANSACTION_getThemeIdMap:I = 0x2

.field static final TRANSACTION_roundedCornerCover_setHasScrollingTab:I = 0x7

.field static final TRANSACTION_roundedCornerCover_setHasWidgetTab:I = 0x6

.field static final TRANSACTION_roundedCornerCover_setIsCtsTesting:I = 0x4

.field static final TRANSACTION_roundedCornerCover_setStatusBarTransparency:I = 0x5

.field static final TRANSACTION_roundedCornerCover_setTabHeight:I = 0x8

.field static final TRANSACTION_roundedCornerCover_setTopIsFullScreen:I = 0x3

.field static final TRANSACTION_setSystemTheme:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p0, p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/systemtheme/ISystemThemeService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/systemtheme/ISystemThemeService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lenovo/systemtheme/ISystemThemeService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lenovo/systemtheme/ISystemThemeService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v2, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->setSystemTheme(Ljava/lang/String;)Z

    move-result v1

    .line 54
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_2
    const-string v4, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->getThemeIdMap(Ljava/lang/String;)Lcom/lenovo/systemtheme/ThemeHashMap;

    move-result-object v1

    .line 64
    .local v1, _result:Lcom/lenovo/systemtheme/ThemeHashMap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v1, p3, v3}, Lcom/lenovo/systemtheme/ThemeHashMap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Lcom/lenovo/systemtheme/ThemeHashMap;
    :sswitch_3
    const-string v4, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 79
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->roundedCornerCover_setTopIsFullScreen(Z)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v2

    .line 78
    goto :goto_1

    .line 85
    :sswitch_4
    const-string v4, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 88
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->roundedCornerCover_setIsCtsTesting(Z)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v2

    .line 87
    goto :goto_2

    .line 94
    :sswitch_5
    const-string v4, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 97
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->roundedCornerCover_setStatusBarTransparency(Z)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v2

    .line 96
    goto :goto_3

    .line 103
    :sswitch_6
    const-string v4, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 106
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->roundedCornerCover_setHasWidgetTab(Z)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_5
    move v0, v2

    .line 105
    goto :goto_4

    .line 112
    :sswitch_7
    const-string v4, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .line 115
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->roundedCornerCover_setHasScrollingTab(Z)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v2

    .line 114
    goto :goto_5

    .line 121
    :sswitch_8
    const-string v2, "com.lenovo.systemtheme.ISystemThemeService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->roundedCornerCover_setTabHeight(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
