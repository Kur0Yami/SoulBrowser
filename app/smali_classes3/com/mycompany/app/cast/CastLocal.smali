.class public Lcom/mycompany/app/cast/CastLocal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/mycompany/app/cast/CastLocal;


# instance fields
.field public a:Lcom/mycompany/app/cast/CastServer;


# direct methods
.method public static a()Lcom/mycompany/app/cast/CastLocal;
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/cast/CastLocal;->b:Lcom/mycompany/app/cast/CastLocal;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/cast/CastLocal;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/cast/CastLocal;->b:Lcom/mycompany/app/cast/CastLocal;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/cast/CastLocal;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/mycompany/app/cast/CastLocal;->b:Lcom/mycompany/app/cast/CastLocal;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/mycompany/app/cast/CastLocal;->b:Lcom/mycompany/app/cast/CastLocal;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v0, Lcom/mycompany/app/cast/CastServer;

    .line 8
    .line 9
    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastServer;->k()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/net/NetworkInterface;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/net/InetAddress;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    :cond_3
    const/4 v2, 0x0

    .line 62
    :goto_0
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "http://"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ":8080/"

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, v0, Lcom/mycompany/app/cast/CastServer;->i:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, v0, Lcom/mycompany/app/cast/CastServer;->j:Ljava/lang/String;

    .line 97
    .line 98
    new-instance p1, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, v0, Lcom/mycompany/app/cast/CastServer;->k:Ljava/util/HashMap;

    .line 104
    .line 105
    new-instance p1, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object p1, v0, Lcom/mycompany/app/cast/CastServer;->l:Ljava/util/HashMap;

    .line 111
    .line 112
    new-instance p1, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object p1, v0, Lcom/mycompany/app/cast/CastServer;->m:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    .line 119
    iput-object v0, p0, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 120
    .line 121
    return v1

    .line 122
    :catch_1
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastServer;->k()V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    return p1
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastServer;->k()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
