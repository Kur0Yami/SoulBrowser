.class public Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "SourceFile"


# instance fields
.field public q:J


# virtual methods
.method public final b(IB)I
    .locals 10

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int v2, v1, v0

    .line 5
    .line 6
    iget v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 7
    .line 8
    if-ge v3, v2, :cond_0

    .line 9
    .line 10
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 11
    .line 12
    aput p1, v4, v3

    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    .line 15
    .line 16
    aput-byte p2, p1, v3

    .line 17
    .line 18
    add-int/lit8 p1, v3, 0x1

    .line 19
    .line 20
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, -0x1

    .line 24
    :goto_0
    iget p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 25
    .line 26
    if-ne p1, v2, :cond_3

    .line 27
    .line 28
    if-gez v0, :cond_3

    .line 29
    .line 30
    iget-wide p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->q:J

    .line 31
    .line 32
    const-wide/16 v4, 0x8

    .line 33
    .line 34
    rem-long/2addr p1, v4

    .line 35
    sub-long p1, v4, p1

    .line 36
    .line 37
    cmp-long v0, p1, v4

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    move-wide p1, v4

    .line 44
    :cond_1
    move-wide v6, v4

    .line 45
    :goto_1
    cmp-long v0, v6, p1

    .line 46
    .line 47
    if-gez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->f()I

    .line 50
    .line 51
    .line 52
    const-wide/16 v8, 0x1

    .line 53
    .line 54
    add-long/2addr v6, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->g:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 57
    .line 58
    iput-wide v4, p1, Lorg/apache/commons/compress/utils/BitInputStream;->f:J

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    iput p2, p1, Lorg/apache/commons/compress/utils/BitInputStream;->g:I

    .line 62
    .line 63
    iget p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 64
    .line 65
    add-int/2addr p1, v1

    .line 66
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 67
    .line 68
    :cond_3
    return v3
.end method

.method public final d()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v2, :cond_2

    .line 13
    .line 14
    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    .line 15
    .line 16
    if-eq v2, v1, :cond_1

    .line 17
    .line 18
    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:B

    .line 19
    .line 20
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->b(IB)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v1, "The first code can\'t be a reference to its preceding code"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    if-gt v0, v2, :cond_3

    .line 34
    .line 35
    move v3, v1

    .line 36
    :goto_0
    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->e(IZ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :cond_3
    new-instance v2, Ljava/io/IOException;

    .line 42
    .line 43
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    .line 45
    iget v5, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v6, 0x2

    .line 56
    new-array v6, v6, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v5, v6, v1

    .line 59
    .line 60
    aput-object v0, v6, v3

    .line 61
    .line 62
    const-string v0, "Invalid %d bit code 0x%x"

    .line 63
    .line 64
    invoke-static {v4, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v2
.end method

.method public final f()I
    .locals 5

    .line 1
    invoke-super {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->q:J

    .line 8
    .line 9
    const-wide/16 v3, 0x1

    .line 10
    .line 11
    add-long/2addr v1, v3

    .line 12
    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->q:J

    .line 13
    .line 14
    :cond_0
    return v0
.end method
