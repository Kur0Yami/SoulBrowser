.class public final Lokhttp3/internal/connection/SequentialExchangeFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/ExchangeFinder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/connection/SequentialExchangeFinder;",
        "Lokhttp3/internal/connection/ExchangeFinder;",
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
.field public final a:Lokhttp3/internal/connection/RealRoutePlanner;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealRoutePlanner;)V
    .locals 1

    .line 1
    const-string v0, "routePlanner"

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
    iput-object p1, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/RealConnection;
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :goto_0
    iget-object v3, v0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 6
    .line 7
    iget-boolean v3, v3, Lokhttp3/internal/connection/RealCall;->u:Z

    .line 8
    .line 9
    if-nez v3, :cond_6

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealRoutePlanner;->d()Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->isReady()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_3

    .line 20
    .line 21
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->d()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget-object v5, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v5, 0x0

    .line 36
    :goto_1
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->f()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception v3

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    :goto_2
    iget-object v5, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 46
    .line 47
    iget-object v4, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    iget-object v3, v0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lkotlin/collections/ArrayDeque;

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    throw v4

    .line 60
    :cond_3
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->c()Lokhttp3/internal/connection/RealConnection;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v0

    .line 65
    :goto_3
    if-nez v2, :cond_4

    .line 66
    .line 67
    move-object v2, v3

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_4
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->a(Lokhttp3/internal/connection/RealConnection;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    throw v2

    .line 80
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 81
    .line 82
    const-string v1, "Canceled"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public final b()Lokhttp3/internal/connection/RoutePlanner;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    return-object v0
.end method
