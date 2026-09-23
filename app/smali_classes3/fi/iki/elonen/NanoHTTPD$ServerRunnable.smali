.class public Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
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
    name = "ServerRunnable"
.end annotation


# instance fields
.field public c:Ljava/io/IOException;

.field public f:Z

.field public final synthetic g:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->g:Lfi/iki/elonen/NanoHTTPD;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->f:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->g:Lfi/iki/elonen/NanoHTTPD;

    .line 2
    .line 3
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->a:Ljava/net/ServerSocket;

    .line 4
    .line 5
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 6
    .line 7
    const/16 v2, 0x1f90

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    :cond_0
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->g:Lfi/iki/elonen/NanoHTTPD;

    .line 19
    .line 20
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->a:Ljava/net/ServerSocket;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x1388

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->g:Lfi/iki/elonen/NanoHTTPD;

    .line 36
    .line 37
    iget-object v3, v2, Lfi/iki/elonen/NanoHTTPD;->c:Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    .line 38
    .line 39
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .line 40
    .line 41
    invoke-direct {v4, v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->b(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/util/logging/Logger;

    .line 50
    .line 51
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 52
    .line 53
    const-string v3, "Communication with the client broken"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->g:Lfi/iki/elonen/NanoHTTPD;

    .line 59
    .line 60
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->a:Ljava/net/ServerSocket;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    return-void

    .line 69
    :catch_1
    move-exception v0

    .line 70
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->c:Ljava/io/IOException;

    .line 71
    .line 72
    return-void
.end method
