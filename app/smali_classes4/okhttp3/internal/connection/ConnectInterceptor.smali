.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/connection/ConnectInterceptor;",
        "Lokhttp3/Interceptor;",
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


# static fields
.field public static final a:Lokhttp3/internal/connection/ConnectInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/connection/ConnectInterceptor;->a:Lokhttp3/internal/connection/ConnectInterceptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 9

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 7
    .line 8
    const-string v1, "chain"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->t:Z

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->q:Z

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->p:Z

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    iget-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->s:Z

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->r:Z

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    iget-object v1, v0, Lokhttp3/internal/connection/RealCall;->l:Lokhttp3/internal/connection/ExchangeFinder;

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lokhttp3/internal/connection/ExchangeFinder;->a()Lokhttp3/internal/connection/RealConnection;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, v0, Lokhttp3/internal/connection/RealCall;->c:Lokhttp3/OkHttpClient;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string v4, "client"

    .line 52
    .line 53
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v4, "chain"

    .line 57
    .line 58
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, v2, Lokhttp3/internal/connection/RealConnection;->l:Lokhttp3/internal/connection/BufferedSocket;

    .line 62
    .line 63
    iget-object v5, v2, Lokhttp3/internal/connection/RealConnection;->m:Lokhttp3/internal/http2/Http2Connection;

    .line 64
    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    new-instance v4, Lokhttp3/internal/http2/Http2ExchangeCodec;

    .line 68
    .line 69
    invoke-direct {v4, v3, v2, p1, v5}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v5, v2, Lokhttp3/internal/connection/RealConnection;->i:Ljava/net/Socket;

    .line 74
    .line 75
    iget v6, p1, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v4}, Lokhttp3/internal/connection/BufferedSocket;->a()Lokio/BufferedSource;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v5}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget v6, p1, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 89
    .line 90
    int-to-long v6, v6

    .line 91
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    .line 93
    invoke-virtual {v5, v6, v7, v8}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 94
    .line 95
    .line 96
    invoke-interface {v4}, Lokhttp3/internal/connection/BufferedSocket;->b()Lokio/BufferedSink;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    iget v6, p1, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 105
    .line 106
    int-to-long v6, v6

    .line 107
    invoke-virtual {v5, v6, v7, v8}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 108
    .line 109
    .line 110
    new-instance v5, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 111
    .line 112
    invoke-direct {v5, v3, v2, v4}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V

    .line 113
    .line 114
    .line 115
    move-object v4, v5

    .line 116
    :goto_0
    new-instance v2, Lokhttp3/internal/connection/Exchange;

    .line 117
    .line 118
    iget-object v3, v0, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 119
    .line 120
    invoke-direct {v2, v0, v3, v1, v4}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener$Companion$NONE$1;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 121
    .line 122
    .line 123
    iput-object v2, v0, Lokhttp3/internal/connection/RealCall;->o:Lokhttp3/internal/connection/Exchange;

    .line 124
    .line 125
    iput-object v2, v0, Lokhttp3/internal/connection/RealCall;->v:Lokhttp3/internal/connection/Exchange;

    .line 126
    .line 127
    monitor-enter v0

    .line 128
    const/4 v1, 0x1

    .line 129
    :try_start_1
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->p:Z

    .line 130
    .line 131
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    monitor-exit v0

    .line 134
    iget-boolean v0, v0, Lokhttp3/internal/connection/RealCall;->u:Z

    .line 135
    .line 136
    if-nez v0, :cond_1

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    const/16 v1, 0x3d

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    invoke-static {p1, v3, v2, v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object p1, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 154
    .line 155
    const-string v0, "Canceled"

    .line 156
    .line 157
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :catchall_0
    move-exception p1

    .line 162
    monitor-exit v0

    .line 163
    throw p1

    .line 164
    :catchall_1
    move-exception p1

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-string v1, "Check failed."

    .line 169
    .line 170
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_3
    const-string p1, "released"

    .line 175
    .line 176
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    :goto_1
    monitor-exit v0

    .line 183
    throw p1
.end method
