.class public Lcom/android/server/pm/NetFireWall;
.super Ljava/lang/Object;
.source "NetFireWall.java"


# static fields
.field private static final NET_FIREWALL_CMD:Ljava/lang/String; = "firewall"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFireWall(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/FireWallItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/pm/FireWallItem;>;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 17
    if-eqz p0, :cond_5

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 20
    .local v3, nsize:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 22
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/FireWallItem;

    .line 23
    .local v2, item:Lcom/android/server/pm/FireWallItem;
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/android/server/pm/FireWallItem;->uid:I

    if-lez v5, :cond_0

    .line 24
    iget v5, v2, Lcom/android/server/pm/FireWallItem;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v5, v2, Lcom/android/server/pm/FireWallItem;->internet_enabled:Z

    if-eqz v5, :cond_1

    .line 27
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    :goto_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v5, v2, Lcom/android/server/pm/FireWallItem;->internet_wifi_enabled:Z

    if-eqz v5, :cond_2

    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    :goto_2
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v5, v2, Lcom/android/server/pm/FireWallItem;->internet_gprs_enabled:Z

    if-eqz v5, :cond_3

    .line 39
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    :goto_3
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 46
    .end local v2           #item:Lcom/android/server/pm/FireWallItem;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/NetFireWall;->updateFireWall(Ljava/lang/String;)Z

    move-result v4

    .line 48
    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v3           #nsize:I
    :cond_5
    return v4
.end method

.method private static updateFireWall(Ljava/lang/String;)Z
    .locals 10
    .parameter "str"

    .prologue
    .line 52
    const/4 v7, 0x0

    .line 53
    .local v7, success:Z
    if-nez p0, :cond_0

    move v8, v7

    .line 85
    :goto_0
    return v8

    .line 57
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v8, "font_root"

    invoke-direct {v1, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, address:Landroid/net/LocalSocketAddress;
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 59
    .local v4, localSocket:Landroid/net/LocalSocket;
    invoke-virtual {v4, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 60
    invoke-virtual {v4}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v8

    if-nez v8, :cond_1

    .line 61
    const/4 v8, 0x0

    goto :goto_0

    .line 64
    :cond_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 65
    .local v6, socketWriter:Ljava/io/PrintWriter;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v5, socketReader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, cmd:Ljava/lang/StringBuilder;
    const-string v8, "firewall"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 73
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, a:Ljava/lang/String;
    const-string v8, "success"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 75
    const/4 v7, 0x1

    .line 78
    :goto_1
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 79
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 80
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #a:Ljava/lang/String;
    .end local v1           #address:Landroid/net/LocalSocketAddress;
    .end local v2           #cmd:Ljava/lang/StringBuilder;
    .end local v4           #localSocket:Landroid/net/LocalSocket;
    .end local v5           #socketReader:Ljava/io/BufferedReader;
    .end local v6           #socketWriter:Ljava/io/PrintWriter;
    :goto_2
    move v8, v7

    .line 85
    goto :goto_0

    .line 77
    .restart local v0       #a:Ljava/lang/String;
    .restart local v1       #address:Landroid/net/LocalSocketAddress;
    .restart local v2       #cmd:Ljava/lang/StringBuilder;
    .restart local v4       #localSocket:Landroid/net/LocalSocket;
    .restart local v5       #socketReader:Ljava/io/BufferedReader;
    .restart local v6       #socketWriter:Ljava/io/PrintWriter;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 81
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #address:Landroid/net/LocalSocketAddress;
    .end local v2           #cmd:Ljava/lang/StringBuilder;
    .end local v4           #localSocket:Landroid/net/LocalSocket;
    .end local v5           #socketReader:Ljava/io/BufferedReader;
    .end local v6           #socketWriter:Ljava/io/PrintWriter;
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v7, 0x0

    goto :goto_2
.end method
