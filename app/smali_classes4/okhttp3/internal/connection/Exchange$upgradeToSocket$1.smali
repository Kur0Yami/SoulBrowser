.class public final Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Socket;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "okhttp3/internal/connection/Exchange$upgradeToSocket$1",
        "Lokio/Socket;",
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
.field public final c:Lokhttp3/internal/connection/Exchange$RequestBodySink;

.field public final f:Lokhttp3/internal/connection/Exchange$ResponseBodySource;

.field public final synthetic g:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Exchange;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->g:Lokhttp3/internal/connection/Exchange;

    .line 5
    .line 6
    new-instance v0, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 7
    .line 8
    iget-object v6, p1, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 9
    .line 10
    invoke-interface {v6}, Lokhttp3/internal/http/ExchangeCodec;->g()Lokio/Socket;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lokio/Socket;->b()Lokio/Sink;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-wide/16 v3, -0x1

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v1, p1

    .line 22
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;JZ)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->c:Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 26
    .line 27
    new-instance v7, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 28
    .line 29
    invoke-interface {v6}, Lokhttp3/internal/http/ExchangeCodec;->g()Lokio/Socket;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lokio/Socket;->a()Lokio/Source;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const-wide/16 v10, -0x1

    .line 38
    .line 39
    const/4 v12, 0x1

    .line 40
    move-object v8, v1

    .line 41
    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;JZ)V

    .line 42
    .line 43
    .line 44
    iput-object v7, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->f:Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a()Lokio/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->f:Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lokio/Sink;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->c:Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 2
    .line 3
    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;->g:Lokhttp3/internal/connection/Exchange;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 4
    .line 5
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
