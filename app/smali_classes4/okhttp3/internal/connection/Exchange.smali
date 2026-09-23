.class public final Lokhttp3/internal/connection/Exchange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Exchange$RequestBodySink;,
        Lokhttp3/internal/connection/Exchange$ResponseBodySource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokhttp3/internal/connection/Exchange;",
        "",
        "RequestBodySink",
        "ResponseBodySource",
        "okhttp"
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
.field public final a:Lokhttp3/internal/connection/RealCall;

.field public final b:Lokhttp3/EventListener;

.field public final c:Lokhttp3/internal/connection/ExchangeFinder;

.field public final d:Lokhttp3/internal/http/ExchangeCodec;

.field public e:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener$Companion$NONE$1;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "finder"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "codec"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 25
    .line 26
    iput-object p2, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 27
    .line 28
    iput-object p3, p0, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 29
    .line 30
    iput-object p4, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 31
    .line 32
    return-void
.end method

.method public static a(Lokhttp3/internal/connection/Exchange;JZLjava/io/IOException;I)Ljava/io/IOException;
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    and-int/lit8 p1, p5, 0x4

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move p1, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, p2

    .line 12
    :goto_0
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_1

    .line 15
    .line 16
    move p5, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move p5, p2

    .line 19
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 20
    .line 21
    if-eqz p4, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, p4}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    if-eqz p5, :cond_4

    .line 27
    .line 28
    if-eqz p4, :cond_3

    .line 29
    .line 30
    invoke-virtual {v2, v0, p4}, Lokhttp3/EventListener;->i(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {v2, v0}, Lokhttp3/EventListener;->g(Lokhttp3/Call;)V

    .line 35
    .line 36
    .line 37
    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    .line 38
    .line 39
    if-eqz p4, :cond_5

    .line 40
    .line 41
    invoke-virtual {v2, v0, p4}, Lokhttp3/EventListener;->n(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_5
    invoke-virtual {v2, v0}, Lokhttp3/EventListener;->l(Lokhttp3/Call;)V

    .line 46
    .line 47
    .line 48
    :cond_6
    :goto_3
    if-eqz p5, :cond_7

    .line 49
    .line 50
    if-nez p3, :cond_7

    .line 51
    .line 52
    move v2, p2

    .line 53
    goto :goto_4

    .line 54
    :cond_7
    move v2, v1

    .line 55
    :goto_4
    if-eqz p1, :cond_8

    .line 56
    .line 57
    if-nez p3, :cond_8

    .line 58
    .line 59
    move v3, p2

    .line 60
    goto :goto_5

    .line 61
    :cond_8
    move v3, v1

    .line 62
    :goto_5
    if-eqz p5, :cond_9

    .line 63
    .line 64
    if-eqz p3, :cond_9

    .line 65
    .line 66
    move v5, p2

    .line 67
    goto :goto_6

    .line 68
    :cond_9
    move v5, v1

    .line 69
    :goto_6
    if-eqz p1, :cond_a

    .line 70
    .line 71
    if-eqz p3, :cond_a

    .line 72
    .line 73
    move v4, p2

    .line 74
    move-object v1, p0

    .line 75
    move-object v6, p4

    .line 76
    goto :goto_7

    .line 77
    :cond_a
    move v4, v1

    .line 78
    move-object v6, p4

    .line 79
    move-object v1, p0

    .line 80
    :goto_7
    invoke-virtual/range {v0 .. v6}, Lokhttp3/internal/connection/RealCall;->f(Lokhttp3/internal/connection/Exchange;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method


# virtual methods
.method public final b(Lokhttp3/Request;)Lokio/Sink;
    .locals 7

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lokhttp3/RequestBody;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 16
    .line 17
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->h(Lokhttp3/Call;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 23
    .line 24
    invoke-interface {v0, p1, v4, v5}, Lokhttp3/internal/http/ExchangeCodec;->j(Lokhttp3/Request;J)Lokio/Sink;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v1, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;JZ)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public final c()Lokhttp3/internal/connection/RealConnection;
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->i()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lokhttp3/internal/connection/RealConnection;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "no connection for CONNECT tunnels"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final d(Lokhttp3/Response;)Lokhttp3/internal/http/RealResponseBody;
    .locals 8

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    const-string v1, "response"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "Content-Type"

    .line 9
    .line 10
    invoke-static {v1, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->h(Lokhttp3/Response;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->d(Lokhttp3/Response;)Lokio/Source;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v2, Lokhttp3/internal/connection/Exchange$ResponseBodySource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v3, p0

    .line 26
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;JZ)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;

    .line 30
    .line 31
    invoke-static {v2}, Lokio/Okio;->b(Lokio/Source;)Lokio/RealBufferedSource;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v1, v5, v6, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    :goto_0
    move-object p1, v0

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception v0

    .line 43
    move-object v3, p0

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    iget-object v0, v3, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 46
    .line 47
    iget-object v1, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 48
    .line 49
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->n(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final e(Z)Lokhttp3/Response$Builder;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->e(Z)Lokhttp3/Response$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v0, "exchange"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p0, p1, Lokhttp3/Response$Builder;->n:Lokhttp3/internal/connection/Exchange;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    :cond_0
    return-object p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->n(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final f(Ljava/io/IOException;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->e:Z

    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 5
    .line 6
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->i()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->b(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g()Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->n:Z

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->n:Z

    .line 9
    .line 10
    iget-object v2, v0, Lokhttp3/internal/connection/RealCall;->i:Lokhttp3/internal/connection/RealCall$timeout$1;

    .line 11
    .line 12
    invoke-virtual {v2}, Lokio/AsyncTimeout;->i()Z

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v2, v0, Lokhttp3/internal/connection/RealCall;->v:Lokhttp3/internal/connection/Exchange;

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->r:Z

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->s:Z

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->p:Z

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->q:Z

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->q:Z

    .line 38
    .line 39
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->r:Z

    .line 40
    .line 41
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->s:Z

    .line 42
    .line 43
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 47
    .line 48
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->i()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "null cannot be cast to non-null type okhttp3.internal.connection.RealConnection"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 58
    .line 59
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnection;->i:Ljava/net/Socket;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->e()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;-><init>(Lokhttp3/internal/connection/Exchange;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v2, "Check failed."

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v2, "Check failed."

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v2, "Check failed."

    .line 94
    .line 95
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v2, "Check failed."

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_0
    monitor-exit v0

    .line 108
    throw v1

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v1, "Check failed."

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0
.end method
