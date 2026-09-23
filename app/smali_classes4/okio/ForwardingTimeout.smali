.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokio/ForwardingTimeout;",
        "Lokio/Timeout;",
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
.field public e:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

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
    iput-object p1, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Timeout;->a()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Timeout;->b()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Timeout;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d(J)Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lokio/Timeout;->d(J)Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Timeout;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Timeout;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 1

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
