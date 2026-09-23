.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/HashingSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokio/HashingSource;",
        "Lokio/ForwardingSource;",
        "Lokio/Source;",
        "Companion",
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


# virtual methods
.method public final p0(JLokio/Buffer;)J
    .locals 7

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->p0(JLokio/Buffer;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-wide v0, p3, Lokio/Buffer;->f:J

    .line 17
    .line 18
    sub-long v2, v0, p1

    .line 19
    .line 20
    iget-object v4, p3, Lokio/Buffer;->c:Lokio/Segment;

    .line 21
    .line 22
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    cmp-long v5, v0, v2

    .line 26
    .line 27
    if-lez v5, :cond_0

    .line 28
    .line 29
    iget-object v4, v4, Lokio/Segment;->g:Lokio/Segment;

    .line 30
    .line 31
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v5, v4, Lokio/Segment;->c:I

    .line 35
    .line 36
    iget v6, v4, Lokio/Segment;->b:I

    .line 37
    .line 38
    sub-int/2addr v5, v6

    .line 39
    int-to-long v5, v5

    .line 40
    sub-long/2addr v0, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-wide v2, p3, Lokio/Buffer;->f:J

    .line 43
    .line 44
    cmp-long p3, v0, v2

    .line 45
    .line 46
    if-ltz p3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget p1, v4, Lokio/Segment;->b:I

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    :goto_1
    return-wide p1
.end method
