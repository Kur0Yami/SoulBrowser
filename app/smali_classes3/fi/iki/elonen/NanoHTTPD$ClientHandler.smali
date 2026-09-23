.class public Lfi/iki/elonen/NanoHTTPD$ClientHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientHandler"
.end annotation


# instance fields
.field public final c:Ljava/io/InputStream;

.field public final f:Ljava/net/Socket;

.field public final synthetic g:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->g:Lfi/iki/elonen/NanoHTTPD;

    .line 5
    .line 6
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->c:Ljava/io/InputStream;

    .line 7
    .line 8
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->f:Ljava/net/Socket;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->g:Lfi/iki/elonen/NanoHTTPD;

    .line 4
    .line 5
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->f:Ljava/net/Socket;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;

    .line 13
    .line 14
    invoke-direct {v4}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    .line 18
    .line 19
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->c:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v8}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-direct/range {v2 .. v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object v2, v6

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    move-object v2, v6

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v8}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v3, Lfi/iki/elonen/NanoHTTPD;->c:Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->a(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    goto :goto_3

    .line 61
    :catch_1
    move-exception v0

    .line 62
    :goto_2
    :try_start_2
    instance-of v4, v0, Ljava/net/SocketException;

    .line 63
    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    const-string v4, "NanoHttpd Shutdown"

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    :cond_1
    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    .line 79
    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    sget-object v4, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/util/logging/Logger;

    .line 83
    .line 84
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 85
    .line 86
    const-string v6, "Communication with the client broken, or an bug in the handler code"

    .line 87
    .line 88
    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :goto_3
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v8}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v3, Lfi/iki/elonen/NanoHTTPD;->c:Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->a(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    .line 107
    .line 108
    .line 109
    throw v0
.end method
