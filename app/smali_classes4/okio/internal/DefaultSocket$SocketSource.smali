.class public final Lokio/internal/DefaultSocket$SocketSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/DefaultSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SocketSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokio/internal/DefaultSocket$SocketSource;",
        "Lokio/Source;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,176:1\n1#2:177\n85#3:178\n195#4,11:179\n195#4,11:190\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n*L\n121#1:178\n123#1:179,11\n144#1:190,11\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Ljava/io/InputStream;

.field public final f:Lokio/internal/SocketAsyncTimeout;

.field public final synthetic g:Lokio/internal/DefaultSocket;


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/internal/DefaultSocket$SocketSource;->g:Lokio/internal/DefaultSocket;

    .line 5
    .line 6
    iget-object p1, p1, Lokio/internal/DefaultSocket;->c:Ljava/net/Socket;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->c:Ljava/io/InputStream;

    .line 13
    .line 14
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->f:Lokio/internal/SocketAsyncTimeout;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->g:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->f:Lokio/internal/SocketAsyncTimeout;

    .line 4
    .line 5
    invoke-virtual {v1}, Lokio/AsyncTimeout;->h()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, v0, Lokio/internal/DefaultSocket;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    iget-object v0, v0, Lokio/internal/DefaultSocket;->c:Ljava/net/Socket;

    .line 11
    .line 12
    const-string v3, "<this>"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    and-int/lit8 v4, v3, 0x2

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    or-int/lit8 v4, v3, 0x2

    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move v2, v4

    .line 36
    :goto_0
    if-eqz v2, :cond_6

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    if-eq v2, v3, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 48
    .line 49
    .line 50
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_5

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_3

    .line 62
    :catch_1
    :try_start_2
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->c:Ljava/io/InputStream;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lokio/AsyncTimeout;->i()Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 73
    .line 74
    .line 75
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    invoke-virtual {v1}, Lokio/AsyncTimeout;->i()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    const/4 v0, 0x0

    .line 85
    invoke-virtual {v1, v0}, Lokio/internal/SocketAsyncTimeout;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    throw v0

    .line 90
    :cond_6
    invoke-virtual {v1}, Lokio/AsyncTimeout;->i()Z

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Lokio/AsyncTimeout;->i()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_7

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_7
    invoke-virtual {v1, v0}, Lokio/internal/SocketAsyncTimeout;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :goto_5
    invoke-virtual {v1}, Lokio/AsyncTimeout;->i()Z

    .line 107
    .line 108
    .line 109
    throw v0
.end method

.method public final p0(JLokio/Buffer;)J
    .locals 4

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    if-ltz v2, :cond_6

    .line 14
    .line 15
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->f:Lokio/internal/SocketAsyncTimeout;

    .line 16
    .line 17
    invoke-virtual {v0}, Lokio/Timeout;->f()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p3, v1}, Lokio/Buffer;->m(I)Lokio/Segment;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v2, v1, Lokio/Segment;->c:I

    .line 26
    .line 27
    rsub-int v2, v2, 0x2000

    .line 28
    .line 29
    int-to-long v2, v2

    .line 30
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    long-to-int p1, p1

    .line 35
    :try_start_0
    invoke-virtual {v0}, Lokio/AsyncTimeout;->h()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p2, p0, Lokio/internal/DefaultSocket$SocketSource;->c:Ljava/io/InputStream;

    .line 39
    .line 40
    iget-object v2, v1, Lokio/Segment;->a:[B

    .line 41
    .line 42
    iget v3, v1, Lokio/Segment;->c:I

    .line 43
    .line 44
    invoke-virtual {p2, v2, v3, p1}, Ljava/io/InputStream;->read([BII)I

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-virtual {v0}, Lokio/AsyncTimeout;->i()Z

    .line 49
    .line 50
    .line 51
    move-result p2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    if-nez p2, :cond_3

    .line 53
    .line 54
    const/4 p2, -0x1

    .line 55
    if-ne p1, p2, :cond_2

    .line 56
    .line 57
    iget p1, v1, Lokio/Segment;->b:I

    .line 58
    .line 59
    iget p2, v1, Lokio/Segment;->c:I

    .line 60
    .line 61
    if-ne p1, p2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p3, Lokio/Buffer;->c:Lokio/Segment;

    .line 68
    .line 69
    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    const-wide/16 p1, -0x1

    .line 73
    .line 74
    return-wide p1

    .line 75
    :cond_2
    iget p2, v1, Lokio/Segment;->c:I

    .line 76
    .line 77
    add-int/2addr p2, p1

    .line 78
    iput p2, v1, Lokio/Segment;->c:I

    .line 79
    .line 80
    iget-wide v0, p3, Lokio/Buffer;->f:J

    .line 81
    .line 82
    int-to-long p1, p1

    .line 83
    add-long/2addr v0, p1

    .line 84
    iput-wide v0, p3, Lokio/Buffer;->f:J

    .line 85
    .line 86
    return-wide p1

    .line 87
    :cond_3
    const/4 p1, 0x0

    .line 88
    :try_start_3
    invoke-virtual {v0, p1}, Lokio/AsyncTimeout;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    throw p1
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception p1

    .line 98
    :try_start_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->i()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v0, p1}, Lokio/AsyncTimeout;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Lokio/AsyncTimeout;->i()Z

    .line 111
    .line 112
    .line 113
    throw p1
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_0

    .line 114
    :goto_2
    invoke-static {p1}, Lokio/internal/_JavaIoKt;->a(Ljava/lang/AssertionError;)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_5

    .line 119
    .line 120
    new-instance p2, Ljava/io/IOException;

    .line 121
    .line 122
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw p2

    .line 126
    :cond_5
    throw p1

    .line 127
    :cond_6
    const-string p3, "byteCount < 0: "

    .line 128
    .line 129
    invoke-static {p1, p2, p3}, Landroid/support/v4/media/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p2
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->f:Lokio/internal/SocketAsyncTimeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "source("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->g:Lokio/internal/DefaultSocket;

    .line 9
    .line 10
    iget-object v1, v1, Lokio/internal/DefaultSocket;->c:Ljava/net/Socket;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x29

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
