.class public Lcom/bumptech/glide/integration/webp/WebpHeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteBufferReader;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    }
.end annotation


# direct methods
.method public static a(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    const/high16 v1, -0x10000

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->a()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, 0xffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v2, v3

    .line 18
    or-int/2addr v0, v2

    .line 19
    const v2, 0x52494646

    .line 20
    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->c()J

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->a()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    shl-int/lit8 v0, v0, 0x10

    .line 33
    .line 34
    and-int/2addr v0, v1

    .line 35
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->a()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    and-int/2addr v2, v3

    .line 40
    or-int/2addr v0, v2

    .line 41
    const v2, 0x57454250

    .line 42
    .line 43
    .line 44
    if-eq v0, v2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->a()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    shl-int/lit8 v0, v0, 0x10

    .line 52
    .line 53
    and-int/2addr v0, v1

    .line 54
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->a()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    and-int/2addr v1, v3

    .line 59
    or-int/2addr v0, v1

    .line 60
    const v1, 0x56503820

    .line 61
    .line 62
    .line 63
    if-ne v0, v1, :cond_2

    .line 64
    .line 65
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->c:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_2
    const v1, 0x5650384c

    .line 69
    .line 70
    .line 71
    if-ne v0, v1, :cond_4

    .line 72
    .line 73
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->c()J

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->b()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    and-int/lit8 p0, p0, 0x8

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->g:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_3
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->f:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_4
    const v1, 0x56503858

    .line 91
    .line 92
    .line 93
    if-ne v0, v1, :cond_7

    .line 94
    .line 95
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->c()J

    .line 96
    .line 97
    .line 98
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;->b()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    and-int/lit8 v0, p0, 0x2

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->j:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_5
    and-int/lit8 p0, p0, 0x10

    .line 110
    .line 111
    if-eqz p0, :cond_6

    .line 112
    .line 113
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->i:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 114
    .line 115
    return-object p0

    .line 116
    :cond_6
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->h:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_7
    :goto_0
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->k:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 120
    .line 121
    return-object p0
.end method

.method public static b(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->k:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 15
    .line 16
    .line 17
    move-object p0, v0

    .line 18
    :cond_1
    const/16 p1, 0x15

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance p1, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->a(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public static c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->k:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteBufferReader;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->a(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static d(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->c:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->f:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->g:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->h:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->i:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method
