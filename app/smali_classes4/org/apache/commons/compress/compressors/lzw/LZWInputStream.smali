.class public abstract Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"


# instance fields
.field public final f:[B

.field public final g:Lorg/apache/commons/compress/utils/BitInputStream;

.field public h:I

.field public i:I

.field public j:B

.field public k:I

.field public l:I

.field public m:[I

.field public n:[B

.field public o:[B

.field public p:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f:[B

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    iput v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 17
    .line 18
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    .line 19
    .line 20
    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->g:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public abstract b(IB)I
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->g:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract d()I
.end method

.method public final e(IZ)I
    .locals 4

    .line 1
    move v0, p1

    .line 2
    :goto_0
    if-ltz v0, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    .line 5
    .line 6
    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    .line 11
    .line 12
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    .line 13
    .line 14
    aget-byte v3, v3, v0

    .line 15
    .line 16
    aput-byte v3, v1, v2

    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[I

    .line 19
    .line 20
    aget v0, v1, v0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    .line 31
    .line 32
    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    .line 33
    .line 34
    aget-byte p2, p2, v1

    .line 35
    .line 36
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->b(IB)I

    .line 37
    .line 38
    .line 39
    :cond_1
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    .line 40
    .line 41
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    .line 42
    .line 43
    iget p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    .line 44
    .line 45
    aget-byte p1, p1, p2

    .line 46
    .line 47
    iput-byte p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:B

    .line 48
    .line 49
    return p2
.end method

.method public f()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->g:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->a(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v0, v0

    .line 14
    return v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "code size must not be bigger than 31"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 6

    .line 3
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 4
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sub-int v2, p3, v0

    if-lez v2, :cond_4

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->d()I

    move-result v3

    if-gez v3, :cond_2

    if-lez v0, :cond_1

    int-to-long p1, v0

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->a(J)V

    return v0

    :cond_1
    return v3

    :cond_2
    add-int v3, p2, v0

    .line 9
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    array-length v4, v4

    iget v5, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_3

    .line 10
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:[B

    iget v5, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    invoke-static {v4, v5, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->p:I

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    int-to-long p1, v0

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->a(J)V

    return v0
.end method
