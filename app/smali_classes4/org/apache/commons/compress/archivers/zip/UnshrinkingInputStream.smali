.class Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "SourceFile"


# instance fields
.field public final q:[Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x100

    .line 7
    .line 8
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    .line 9
    .line 10
    const/16 v0, 0x2000

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    .line 19
    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    .line 23
    .line 24
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move v1, v0

    .line 28
    :goto_0
    if-ge v1, p1, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    aput v3, v2, v1

    .line 34
    .line 35
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    .line 36
    .line 37
    int-to-byte v3, v1

    .line 38
    aput-byte v3, v2, v1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 44
    .line 45
    array-length v1, v1

    .line 46
    new-array v1, v1, [Z

    .line 47
    .line 48
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->q:[Z

    .line 49
    .line 50
    :goto_1
    const/4 v1, 0x1

    .line 51
    if-ge v0, p1, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->q:[Z

    .line 54
    .line 55
    aput-boolean v1, v2, v0

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    .line 61
    .line 62
    add-int/2addr p1, v1

    .line 63
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final b(IB)I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->q:[Z

    .line 4
    .line 5
    const/16 v2, 0x2000

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    aget-boolean v3, v1, v0

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 17
    .line 18
    if-ge v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 21
    .line 22
    aput p1, v2, v0

    .line 23
    .line 24
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    .line 25
    .line 26
    aput-byte p2, p1, v0

    .line 27
    .line 28
    add-int/lit8 p1, v0, 0x1

    .line 29
    .line 30
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, -0x1

    .line 34
    :goto_1
    if-ltz v0, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    aput-boolean p1, v1, v0

    .line 38
    .line 39
    :cond_2
    return v0
.end method

.method public final d()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f()I

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
    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    .line 10
    .line 11
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->q:[Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ne v0, v2, :cond_9

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ltz v0, :cond_8

    .line 22
    .line 23
    if-ne v0, v5, :cond_2

    .line 24
    .line 25
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 26
    .line 27
    const/16 v1, 0xd

    .line 28
    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    add-int/2addr v0, v5

    .line 32
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 33
    .line 34
    return v4

    .line 35
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v1, "Attempt to increase code size beyond maximum"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2
    const/4 v2, 0x2

    .line 44
    if-ne v0, v2, :cond_7

    .line 45
    .line 46
    const/16 v0, 0x2000

    .line 47
    .line 48
    new-array v2, v0, [Z

    .line 49
    .line 50
    move v6, v4

    .line 51
    :goto_0
    array-length v7, v3

    .line 52
    if-ge v6, v7, :cond_4

    .line 53
    .line 54
    aget-boolean v7, v3, v6

    .line 55
    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 59
    .line 60
    aget v7, v7, v6

    .line 61
    .line 62
    if-eq v7, v1, :cond_3

    .line 63
    .line 64
    aput-boolean v5, v2, v7

    .line 65
    .line 66
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget v6, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    .line 70
    .line 71
    add-int/2addr v6, v5

    .line 72
    :goto_1
    if-ge v6, v0, :cond_6

    .line 73
    .line 74
    aget-boolean v7, v2, v6

    .line 75
    .line 76
    if-nez v7, :cond_5

    .line 77
    .line 78
    aput-boolean v4, v3, v6

    .line 79
    .line 80
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 81
    .line 82
    aput v1, v7, v6

    .line 83
    .line 84
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    .line 88
    .line 89
    add-int/2addr v0, v5

    .line 90
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:I

    .line 91
    .line 92
    return v4

    .line 93
    :cond_7
    new-instance v1, Ljava/io/IOException;

    .line 94
    .line 95
    const-string v2, "Invalid clear code subcode "

    .line 96
    .line 97
    invoke-static {v0, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 106
    .line 107
    const-string v1, "Unexpected EOF;"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_9
    aget-boolean v2, v3, v0

    .line 114
    .line 115
    if-nez v2, :cond_b

    .line 116
    .line 117
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    .line 118
    .line 119
    if-eq v0, v1, :cond_a

    .line 120
    .line 121
    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:B

    .line 122
    .line 123
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->b(IB)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    move v4, v5

    .line 128
    goto :goto_2

    .line 129
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 130
    .line 131
    const-string v1, "The first code can\'t be a reference to its preceding code"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_b
    :goto_2
    invoke-virtual {p0, v0, v4}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->e(IZ)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    return v0
.end method
