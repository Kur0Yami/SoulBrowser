.class public Lorg/tukaani/xz/LZMA2InputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public c:Ljava/io/DataInputStream;

.field public f:Lorg/tukaani/xz/lzma/LZMADecoder;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/io/IOException;


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->k:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v2, 0xe0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge v0, v2, :cond_9

    .line 17
    .line 18
    if-eq v0, v1, :cond_9

    .line 19
    .line 20
    iget-boolean v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->i:Z

    .line 21
    .line 22
    if-nez v4, :cond_8

    .line 23
    .line 24
    const/16 v4, 0x80

    .line 25
    .line 26
    if-lt v0, v4, :cond_6

    .line 27
    .line 28
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->h:Z

    .line 29
    .line 30
    and-int/lit8 v4, v0, 0x1f

    .line 31
    .line 32
    shl-int/lit8 v4, v4, 0x10

    .line 33
    .line 34
    iput v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->g:I

    .line 35
    .line 36
    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/2addr v5, v1

    .line 43
    add-int/2addr v5, v4

    .line 44
    iput v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->g:I

    .line 45
    .line 46
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 49
    .line 50
    .line 51
    const/16 v1, 0xc0

    .line 52
    .line 53
    if-lt v0, v1, :cond_3

    .line 54
    .line 55
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->j:Z

    .line 56
    .line 57
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-gt v0, v2, :cond_2

    .line 64
    .line 65
    div-int/lit8 v8, v0, 0x2d

    .line 66
    .line 67
    mul-int/lit8 v1, v8, 0x2d

    .line 68
    .line 69
    sub-int/2addr v0, v1

    .line 70
    div-int/lit8 v7, v0, 0x9

    .line 71
    .line 72
    mul-int/lit8 v1, v7, 0x9

    .line 73
    .line 74
    sub-int v6, v0, v1

    .line 75
    .line 76
    add-int v0, v6, v7

    .line 77
    .line 78
    const/4 v1, 0x4

    .line 79
    if-gt v0, v1, :cond_1

    .line 80
    .line 81
    new-instance v3, Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-direct/range {v3 .. v8}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->f:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    .line 92
    .line 93
    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_2
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    .line 98
    .line 99
    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_3
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->j:Z

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    const/16 v1, 0xa0

    .line 108
    .line 109
    if-lt v0, v1, :cond_4

    .line 110
    .line 111
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->f:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 112
    .line 113
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->a()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 117
    throw v0

    .line 118
    :cond_5
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    .line 119
    .line 120
    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_6
    const/4 v2, 0x2

    .line 125
    if-gt v0, v2, :cond_7

    .line 126
    .line 127
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->h:Z

    .line 128
    .line 129
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    add-int/2addr v0, v1

    .line 136
    iput v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->g:I

    .line 137
    .line 138
    return-void

    .line 139
    :cond_7
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    .line 140
    .line 141
    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_8
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    .line 146
    .line 147
    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_9
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->j:Z

    .line 152
    .line 153
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->i:Z

    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    throw v0
.end method

.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->l:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->h:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->g:I

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->g:I

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    throw v1

    .line 28
    :cond_2
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    .line 29
    .line 30
    const-string v1, "Stream closed"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v2, v0, v1}, Lorg/tukaani/xz/LZMA2InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final read([BII)I
    .locals 0

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    add-int/2addr p2, p3

    if-ltz p2, :cond_7

    .line 2
    array-length p1, p1

    if-gt p2, p1, :cond_7

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/tukaani/xz/LZMA2InputStream;->c:Ljava/io/DataInputStream;

    if-eqz p2, :cond_6

    .line 4
    iget-object p2, p0, Lorg/tukaani/xz/LZMA2InputStream;->l:Ljava/io/IOException;

    if-nez p2, :cond_5

    .line 5
    iget-boolean p2, p0, Lorg/tukaani/xz/LZMA2InputStream;->k:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-lez p3, :cond_4

    .line 6
    :try_start_0
    iget p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->g:I

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2InputStream;->a()V

    .line 8
    iget-boolean p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->k:Z

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_2
    iget p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->g:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 10
    iget-boolean p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->h:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :goto_1
    iput-object p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->l:Ljava/io/IOException;

    .line 14
    throw p1

    :cond_4
    return p1

    .line 15
    :cond_5
    throw p2

    .line 16
    :cond_6
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
