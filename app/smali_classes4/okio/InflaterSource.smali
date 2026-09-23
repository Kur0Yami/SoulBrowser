.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokio/InflaterSource;",
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
        "SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,132:1\n1#2:133\n85#3:134\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n66#1:134\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lokio/RealBufferedSource;

.field public final f:Ljava/util/zip/Inflater;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Lokio/RealBufferedSource;Ljava/util/zip/Inflater;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inflater"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lokio/InflaterSource;->c:Lokio/RealBufferedSource;

    .line 15
    .line 16
    iput-object p2, p0, Lokio/InflaterSource;->f:Ljava/util/zip/Inflater;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/InflaterSource;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/InflaterSource;->f:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lokio/InflaterSource;->h:Z

    .line 13
    .line 14
    iget-object v0, p0, Lokio/InflaterSource;->c:Lokio/RealBufferedSource;

    .line 15
    .line 16
    invoke-virtual {v0}, Lokio/RealBufferedSource;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final p0(JLokio/Buffer;)J
    .locals 11

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    cmp-long v3, p1, v1

    .line 12
    .line 13
    if-ltz v3, :cond_b

    .line 14
    .line 15
    iget-boolean v4, p0, Lokio/InflaterSource;->h:Z

    .line 16
    .line 17
    if-nez v4, :cond_a

    .line 18
    .line 19
    iget-object v4, p0, Lokio/InflaterSource;->c:Lokio/RealBufferedSource;

    .line 20
    .line 21
    iget-object v5, p0, Lokio/InflaterSource;->f:Ljava/util/zip/Inflater;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    const/4 v3, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p3, v3}, Lokio/Buffer;->m(I)Lokio/Segment;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget v6, v3, Lokio/Segment;->c:I

    .line 32
    .line 33
    rsub-int v6, v6, 0x2000

    .line 34
    .line 35
    int-to-long v6, v6

    .line 36
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    long-to-int v6, v6

    .line 41
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-nez v7, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v4}, Lokio/RealBufferedSource;->D()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v7, v4, Lokio/RealBufferedSource;->f:Lokio/Buffer;

    .line 56
    .line 57
    iget-object v7, v7, Lokio/Buffer;->c:Lokio/Segment;

    .line 58
    .line 59
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget v8, v7, Lokio/Segment;->c:I

    .line 63
    .line 64
    iget v9, v7, Lokio/Segment;->b:I

    .line 65
    .line 66
    sub-int/2addr v8, v9

    .line 67
    iput v8, p0, Lokio/InflaterSource;->g:I

    .line 68
    .line 69
    iget-object v7, v7, Lokio/Segment;->a:[B

    .line 70
    .line 71
    invoke-virtual {v5, v7, v9, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 72
    .line 73
    .line 74
    :goto_1
    iget-object v7, v3, Lokio/Segment;->a:[B

    .line 75
    .line 76
    iget v8, v3, Lokio/Segment;->c:I

    .line 77
    .line 78
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    iget v7, p0, Lokio/InflaterSource;->g:I

    .line 83
    .line 84
    if-nez v7, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    sub-int/2addr v7, v8

    .line 92
    iget v8, p0, Lokio/InflaterSource;->g:I

    .line 93
    .line 94
    sub-int/2addr v8, v7

    .line 95
    iput v8, p0, Lokio/InflaterSource;->g:I

    .line 96
    .line 97
    int-to-long v7, v7

    .line 98
    invoke-virtual {v4, v7, v8}, Lokio/RealBufferedSource;->skip(J)V

    .line 99
    .line 100
    .line 101
    :goto_2
    if-lez v6, :cond_4

    .line 102
    .line 103
    iget v7, v3, Lokio/Segment;->c:I

    .line 104
    .line 105
    add-int/2addr v7, v6

    .line 106
    iput v7, v3, Lokio/Segment;->c:I

    .line 107
    .line 108
    iget-wide v7, p3, Lokio/Buffer;->f:J

    .line 109
    .line 110
    int-to-long v9, v6

    .line 111
    add-long/2addr v7, v9

    .line 112
    iput-wide v7, p3, Lokio/Buffer;->f:J

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catch_0
    move-exception p1

    .line 116
    goto :goto_6

    .line 117
    :cond_4
    iget v6, v3, Lokio/Segment;->b:I

    .line 118
    .line 119
    iget v7, v3, Lokio/Segment;->c:I

    .line 120
    .line 121
    if-ne v6, v7, :cond_5

    .line 122
    .line 123
    invoke-virtual {v3}, Lokio/Segment;->a()Lokio/Segment;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iput-object v6, p3, Lokio/Buffer;->c:Lokio/Segment;

    .line 128
    .line 129
    invoke-static {v3}, Lokio/SegmentPool;->a(Lokio/Segment;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_3
    move-wide v9, v1

    .line 133
    :goto_4
    cmp-long v1, v9, v1

    .line 134
    .line 135
    if-lez v1, :cond_6

    .line 136
    .line 137
    return-wide v9

    .line 138
    :cond_6
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->finished()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    invoke-virtual {v4}, Lokio/RealBufferedSource;->D()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_8

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 160
    .line 161
    const-string p2, "source exhausted prematurely"

    .line 162
    .line 163
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_9
    :goto_5
    const-wide/16 p1, -0x1

    .line 168
    .line 169
    return-wide p1

    .line 170
    :goto_6
    new-instance p2, Ljava/io/IOException;

    .line 171
    .line 172
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw p2

    .line 176
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string p2, "closed"

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_b
    const-string p3, "byteCount < 0: "

    .line 185
    .line 186
    invoke-static {p1, p2, p3}, Landroid/support/v4/media/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p2
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/InflaterSource;->c:Lokio/RealBufferedSource;

    .line 2
    .line 3
    iget-object v0, v0, Lokio/RealBufferedSource;->c:Lokio/Source;

    .line 4
    .line 5
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
