.class public final Lokio/internal/FixedLengthSource;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokio/internal/FixedLengthSource;",
        "Lokio/ForwardingSource;",
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
.field public f:J


# virtual methods
.method public final p0(JLokio/Buffer;)J
    .locals 8

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->f:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    move-wide p1, v4

    .line 17
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->p0(JLokio/Buffer;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    const-wide/16 v0, -0x1

    .line 22
    .line 23
    cmp-long v0, p1, v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-wide v6, p0, Lokio/internal/FixedLengthSource;->f:J

    .line 28
    .line 29
    add-long/2addr v6, p1

    .line 30
    iput-wide v6, p0, Lokio/internal/FixedLengthSource;->f:J

    .line 31
    .line 32
    :cond_1
    iget-wide v6, p0, Lokio/internal/FixedLengthSource;->f:J

    .line 33
    .line 34
    cmp-long v1, v6, v2

    .line 35
    .line 36
    if-gez v1, :cond_2

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :cond_2
    if-lez v1, :cond_5

    .line 41
    .line 42
    :cond_3
    cmp-long p1, p1, v4

    .line 43
    .line 44
    if-lez p1, :cond_4

    .line 45
    .line 46
    if-lez v1, :cond_4

    .line 47
    .line 48
    iget-wide p1, p3, Lokio/Buffer;->f:J

    .line 49
    .line 50
    sub-long/2addr v6, v2

    .line 51
    sub-long/2addr p1, v6

    .line 52
    new-instance v0, Lokio/Buffer;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p3}, Lokio/Buffer;->u(Lokio/Source;)J

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1, p2, v0}, Lokio/Buffer;->U(JLokio/Buffer;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lokio/Buffer;->a()V

    .line 64
    .line 65
    .line 66
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p3, "expected "

    .line 71
    .line 72
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p3, " bytes but got "

    .line 79
    .line 80
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->f:J

    .line 84
    .line 85
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_5
    return-wide p1
.end method
