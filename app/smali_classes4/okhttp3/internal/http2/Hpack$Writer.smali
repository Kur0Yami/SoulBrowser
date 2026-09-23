.class public final Lokhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/http2/Hpack$Writer;",
        "",
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
.field public final a:Lokio/Buffer;

.field public b:I

.field public c:Z

.field public d:I

.field public e:[Lokhttp3/internal/http2/Header;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lokio/Buffer;)V
    .locals 1

    .line 1
    const-string v0, "out"

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
    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->a:Lokio/Buffer;

    .line 10
    .line 11
    const p1, 0x7fffffff

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->b:I

    .line 15
    .line 16
    const/16 p1, 0x1000

    .line 17
    .line 18
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->d:I

    .line 19
    .line 20
    const/16 p1, 0x8

    .line 21
    .line 22
    new-array p1, p1, [Lokhttp3/internal/http2/Header;

    .line 23
    .line 24
    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 25
    .line 26
    const/4 p1, 0x7

    .line 27
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 16
    .line 17
    aget-object v2, v2, v0

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget v2, v2, Lokhttp3/internal/http2/Header;->c:I

    .line 23
    .line 24
    sub-int/2addr p1, v2

    .line 25
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->h:I

    .line 26
    .line 27
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 28
    .line 29
    aget-object v3, v3, v0

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v3, v3, Lokhttp3/internal/http2/Header;->c:I

    .line 35
    .line 36
    sub-int/2addr v2, v3

    .line 37
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->h:I

    .line 38
    .line 39
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->g:I

    .line 40
    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->g:I

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    add-int v0, v2, v1

    .line 55
    .line 56
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->g:I

    .line 57
    .line 58
    invoke-static {p1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 62
    .line 63
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    add-int v2, v0, v1

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 74
    .line 75
    add-int/2addr p1, v1

    .line 76
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final b(Lokhttp3/internal/http2/Header;)V
    .locals 6

    .line 1
    iget v0, p1, Lokhttp3/internal/http2/Header;->c:I

    .line 2
    .line 3
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->d:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->t([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 15
    .line 16
    array-length p1, p1

    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 20
    .line 21
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->g:I

    .line 22
    .line 23
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->h:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->h:I

    .line 27
    .line 28
    add-int/2addr v3, v0

    .line 29
    sub-int/2addr v3, v1

    .line 30
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/Hpack$Writer;->a(I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->g:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 38
    .line 39
    array-length v4, v3

    .line 40
    if-le v1, v4, :cond_1

    .line 41
    .line 42
    array-length v1, v3

    .line 43
    mul-int/lit8 v1, v1, 0x2

    .line 44
    .line 45
    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 46
    .line 47
    array-length v4, v3

    .line 48
    array-length v5, v3

    .line 49
    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 53
    .line 54
    array-length v2, v2

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 58
    .line 59
    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 60
    .line 61
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 62
    .line 63
    add-int/lit8 v2, v1, -0x1

    .line 64
    .line 65
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 66
    .line 67
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 68
    .line 69
    aput-object p1, v2, v1

    .line 70
    .line 71
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->g:I

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->g:I

    .line 76
    .line 77
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->h:I

    .line 78
    .line 79
    add-int/2addr p1, v0

    .line 80
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->h:I

    .line 81
    .line 82
    return-void
.end method

.method public final c(Lokio/ByteString;)V
    .locals 11

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lokhttp3/internal/http2/Huffman;->a:[I

    .line 7
    .line 8
    const-string v0, "bytes"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    move-wide v5, v1

    .line 21
    move v4, v3

    .line 22
    :goto_0
    if-ge v4, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v4}, Lokio/ByteString;->i(I)B

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    sget-object v8, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 29
    .line 30
    and-int/lit16 v7, v7, 0xff

    .line 31
    .line 32
    sget-object v8, Lokhttp3/internal/http2/Huffman;->b:[B

    .line 33
    .line 34
    aget-byte v7, v8, v7

    .line 35
    .line 36
    int-to-long v7, v7

    .line 37
    add-long/2addr v5, v7

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x7

    .line 42
    int-to-long v7, v0

    .line 43
    add-long/2addr v5, v7

    .line 44
    const/4 v0, 0x3

    .line 45
    shr-long v4, v5, v0

    .line 46
    .line 47
    long-to-int v0, v4

    .line 48
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, p0, Lokhttp3/internal/http2/Hpack$Writer;->a:Lokio/Buffer;

    .line 53
    .line 54
    const/16 v6, 0x7f

    .line 55
    .line 56
    if-ge v0, v4, :cond_4

    .line 57
    .line 58
    new-instance v0, Lokio/Buffer;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    sget-object v4, Lokhttp3/internal/http2/Huffman;->a:[I

    .line 64
    .line 65
    const-string v4, "source"

    .line 66
    .line 67
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v4, "sink"

    .line 71
    .line 72
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    move v7, v3

    .line 80
    :goto_1
    if-ge v3, v4, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Lokio/ByteString;->i(I)B

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    sget-object v9, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 87
    .line 88
    and-int/lit16 v8, v8, 0xff

    .line 89
    .line 90
    sget-object v9, Lokhttp3/internal/http2/Huffman;->a:[I

    .line 91
    .line 92
    aget v9, v9, v8

    .line 93
    .line 94
    sget-object v10, Lokhttp3/internal/http2/Huffman;->b:[B

    .line 95
    .line 96
    aget-byte v8, v10, v8

    .line 97
    .line 98
    shl-long/2addr v1, v8

    .line 99
    int-to-long v9, v9

    .line 100
    or-long/2addr v1, v9

    .line 101
    add-int/2addr v7, v8

    .line 102
    :goto_2
    const/16 v8, 0x8

    .line 103
    .line 104
    if-lt v7, v8, :cond_1

    .line 105
    .line 106
    add-int/lit8 v7, v7, -0x8

    .line 107
    .line 108
    shr-long v8, v1, v7

    .line 109
    .line 110
    long-to-int v8, v8

    .line 111
    invoke-virtual {v0, v8}, Lokio/Buffer;->v(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    if-lez v7, :cond_3

    .line 119
    .line 120
    rsub-int/lit8 p1, v7, 0x8

    .line 121
    .line 122
    shl-long/2addr v1, p1

    .line 123
    const-wide/16 v3, 0xff

    .line 124
    .line 125
    ushr-long/2addr v3, v7

    .line 126
    or-long/2addr v1, v3

    .line 127
    long-to-int p1, v1

    .line 128
    invoke-virtual {v0, p1}, Lokio/Buffer;->v(I)V

    .line 129
    .line 130
    .line 131
    :cond_3
    iget-wide v1, v0, Lokio/Buffer;->f:J

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->r(J)Lokio/ByteString;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const/16 v1, 0x80

    .line 142
    .line 143
    invoke-virtual {p0, v0, v6, v1}, Lokhttp3/internal/http2/Hpack$Writer;->e(III)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, p1}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_4
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {p0, v0, v6, v3}, Lokhttp3/internal/http2/Hpack$Writer;->e(III)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, p1}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 13

    .line 1
    const-string v0, "headerBlock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->c:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->b:I

    .line 12
    .line 13
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->d:I

    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    const/16 v4, 0x1f

    .line 18
    .line 19
    if-ge v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/Hpack$Writer;->e(III)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->c:Z

    .line 25
    .line 26
    const v0, 0x7fffffff

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->b:I

    .line 30
    .line 31
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->d:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/Hpack$Writer;->e(III)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    move v2, v1

    .line 41
    :goto_0
    if-ge v2, v0, :cond_b

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lokhttp3/internal/http2/Header;

    .line 48
    .line 49
    iget-object v4, v3, Lokhttp3/internal/http2/Header;->a:Lokio/ByteString;

    .line 50
    .line 51
    invoke-virtual {v4}, Lokio/ByteString;->r()Lokio/ByteString;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v5, v3, Lokhttp3/internal/http2/Header;->b:Lokio/ByteString;

    .line 56
    .line 57
    sget-object v6, Lokhttp3/internal/http2/Hpack;->b:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Ljava/lang/Integer;

    .line 64
    .line 65
    const/4 v7, -0x1

    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    add-int/lit8 v8, v6, 0x1

    .line 73
    .line 74
    const/4 v9, 0x2

    .line 75
    if-gt v9, v8, :cond_3

    .line 76
    .line 77
    const/16 v9, 0x8

    .line 78
    .line 79
    if-ge v8, v9, :cond_3

    .line 80
    .line 81
    sget-object v9, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 82
    .line 83
    aget-object v10, v9, v6

    .line 84
    .line 85
    iget-object v10, v10, Lokhttp3/internal/http2/Header;->b:Lokio/ByteString;

    .line 86
    .line 87
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_2

    .line 92
    .line 93
    move v6, v8

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    aget-object v9, v9, v8

    .line 96
    .line 97
    iget-object v9, v9, Lokhttp3/internal/http2/Header;->b:Lokio/ByteString;

    .line 98
    .line 99
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_3

    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x2

    .line 106
    .line 107
    move v12, v8

    .line 108
    move v8, v6

    .line 109
    move v6, v12

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move v6, v8

    .line 112
    move v8, v7

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move v6, v7

    .line 115
    move v8, v6

    .line 116
    :goto_1
    if-ne v8, v7, :cond_7

    .line 117
    .line 118
    iget v9, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 119
    .line 120
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    iget-object v10, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 123
    .line 124
    array-length v10, v10

    .line 125
    :goto_2
    if-ge v9, v10, :cond_7

    .line 126
    .line 127
    iget-object v11, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 128
    .line 129
    aget-object v11, v11, v9

    .line 130
    .line 131
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v11, v11, Lokhttp3/internal/http2/Header;->a:Lokio/ByteString;

    .line 135
    .line 136
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-eqz v11, :cond_6

    .line 141
    .line 142
    iget-object v11, p0, Lokhttp3/internal/http2/Hpack$Writer;->e:[Lokhttp3/internal/http2/Header;

    .line 143
    .line 144
    aget-object v11, v11, v9

    .line 145
    .line 146
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object v11, v11, Lokhttp3/internal/http2/Header;->b:Lokio/ByteString;

    .line 150
    .line 151
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_5

    .line 156
    .line 157
    iget v8, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 158
    .line 159
    sub-int/2addr v9, v8

    .line 160
    sget-object v8, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 161
    .line 162
    array-length v8, v8

    .line 163
    add-int/2addr v8, v9

    .line 164
    goto :goto_3

    .line 165
    :cond_5
    if-ne v6, v7, :cond_6

    .line 166
    .line 167
    iget v6, p0, Lokhttp3/internal/http2/Hpack$Writer;->f:I

    .line 168
    .line 169
    sub-int v6, v9, v6

    .line 170
    .line 171
    sget-object v11, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 172
    .line 173
    array-length v11, v11

    .line 174
    add-int/2addr v6, v11

    .line 175
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    :goto_3
    if-eq v8, v7, :cond_8

    .line 179
    .line 180
    const/16 v3, 0x7f

    .line 181
    .line 182
    const/16 v4, 0x80

    .line 183
    .line 184
    invoke-virtual {p0, v8, v3, v4}, Lokhttp3/internal/http2/Hpack$Writer;->e(III)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_8
    const/16 v8, 0x40

    .line 189
    .line 190
    if-ne v6, v7, :cond_9

    .line 191
    .line 192
    iget-object v6, p0, Lokhttp3/internal/http2/Hpack$Writer;->a:Lokio/Buffer;

    .line 193
    .line 194
    invoke-virtual {v6, v8}, Lokio/Buffer;->v(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v4}, Lokhttp3/internal/http2/Hpack$Writer;->c(Lokio/ByteString;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->c(Lokio/ByteString;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/Hpack$Writer;->b(Lokhttp3/internal/http2/Header;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    sget-object v7, Lokhttp3/internal/http2/Header;->d:Lokio/ByteString;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    const-string v9, "prefix"

    .line 213
    .line 214
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7}, Lokio/ByteString;->d()I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    invoke-virtual {v4, v1, v7, v9}, Lokio/ByteString;->l(ILokio/ByteString;I)Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_a

    .line 226
    .line 227
    sget-object v7, Lokhttp3/internal/http2/Header;->i:Lokio/ByteString;

    .line 228
    .line 229
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-nez v4, :cond_a

    .line 234
    .line 235
    const/16 v3, 0xf

    .line 236
    .line 237
    invoke-virtual {p0, v6, v3, v1}, Lokhttp3/internal/http2/Hpack$Writer;->e(III)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->c(Lokio/ByteString;)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_a
    const/16 v4, 0x3f

    .line 245
    .line 246
    invoke-virtual {p0, v6, v4, v8}, Lokhttp3/internal/http2/Hpack$Writer;->e(III)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->c(Lokio/ByteString;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/Hpack$Writer;->b(Lokhttp3/internal/http2/Header;)V

    .line 253
    .line 254
    .line 255
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_b
    return-void
.end method

.method public final e(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->a:Lokio/Buffer;

    .line 2
    .line 3
    if-ge p1, p2, :cond_0

    .line 4
    .line 5
    or-int/2addr p1, p3

    .line 6
    invoke-virtual {v0, p1}, Lokio/Buffer;->v(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    or-int/2addr p3, p2

    .line 11
    invoke-virtual {v0, p3}, Lokio/Buffer;->v(I)V

    .line 12
    .line 13
    .line 14
    sub-int/2addr p1, p2

    .line 15
    :goto_0
    const/16 p2, 0x80

    .line 16
    .line 17
    if-lt p1, p2, :cond_1

    .line 18
    .line 19
    and-int/lit8 p3, p1, 0x7f

    .line 20
    .line 21
    or-int/2addr p2, p3

    .line 22
    invoke-virtual {v0, p2}, Lokio/Buffer;->v(I)V

    .line 23
    .line 24
    .line 25
    ushr-int/lit8 p1, p1, 0x7

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0, p1}, Lokio/Buffer;->v(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
