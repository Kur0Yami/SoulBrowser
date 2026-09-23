.class public interface abstract Lokhttp3/internal/http/ExchangeCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/ExchangeCodec$Carrier;,
        Lokhttp3/internal/http/ExchangeCodec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004\u00c0\u0006\u0003"
    }
    d2 = {
        "Lokhttp3/internal/http/ExchangeCodec;",
        "",
        "Carrier",
        "Companion",
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


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Lokhttp3/Request;)V
.end method

.method public abstract c()Z
.end method

.method public abstract cancel()V
.end method

.method public abstract d(Lokhttp3/Response;)Lokio/Source;
.end method

.method public abstract e(Z)Lokhttp3/Response$Builder;
.end method

.method public abstract f()V
.end method

.method public abstract g()Lokio/Socket;
.end method

.method public abstract h(Lokhttp3/Response;)J
.end method

.method public abstract i()Lokhttp3/internal/http/ExchangeCodec$Carrier;
.end method

.method public abstract j(Lokhttp3/Request;J)Lokio/Sink;
.end method
