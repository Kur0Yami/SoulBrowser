.class public final Lokio/internal/DefaultSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Socket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/internal/DefaultSocket$SocketSink;,
        Lokio/internal/DefaultSocket$SocketSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokio/internal/DefaultSocket;",
        "Lokio/Socket;",
        "SocketSink",
        "SocketSource",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Ljava/net/Socket;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Lokio/internal/DefaultSocket$SocketSource;

.field public final h:Lokio/internal/DefaultSocket$SocketSink;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 1
    const-string v0, "socket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokio/internal/DefaultSocket;->c:Ljava/net/Socket;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lokio/internal/DefaultSocket;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    new-instance p1, Lokio/internal/DefaultSocket$SocketSource;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSource;-><init>(Lokio/internal/DefaultSocket;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lokio/internal/DefaultSocket;->g:Lokio/internal/DefaultSocket$SocketSource;

    .line 24
    .line 25
    new-instance p1, Lokio/internal/DefaultSocket$SocketSink;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSink;-><init>(Lokio/internal/DefaultSocket;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lokio/internal/DefaultSocket;->h:Lokio/internal/DefaultSocket$SocketSink;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lokio/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->g:Lokio/internal/DefaultSocket$SocketSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lokio/Sink;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->h:Lokio/internal/DefaultSocket$SocketSink;

    .line 2
    .line 3
    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->c:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket;->c:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "toString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
