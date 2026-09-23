.class Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public c:I


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v0, v2, v2}, Lorg/apache/commons/compress/utils/IOUtils;->a(Ljava/io/InputStream;[BII)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    .line 19
    .line 20
    const-string v1, "unexpected EOF"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 27
    .line 28
    const-string v1, "input buffer is closed"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final available()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    rsub-int/lit8 v0, v0, 0x0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 4

    .line 2
    rem-int/lit16 v0, p3, 0x400

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 3
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->a()V

    .line 4
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    sub-int v2, p3, v0

    add-int v3, v1, v2

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 v2, v1, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 5
    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_2
    return v0

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skip(J)J
    .locals 12

    .line 1
    const-wide/16 v0, 0x400

    .line 2
    .line 3
    rem-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    :goto_0
    cmp-long v0, v2, p1

    .line 12
    .line 13
    if-gez v0, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->a()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    .line 23
    .line 24
    int-to-long v4, v0

    .line 25
    sub-long v6, p1, v2

    .line 26
    .line 27
    add-long v8, v4, v6

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    int-to-long v10, v1

    .line 31
    cmp-long v1, v8, v10

    .line 32
    .line 33
    if-gtz v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    rsub-int/lit8 v0, v0, 0x0

    .line 37
    .line 38
    int-to-long v6, v0

    .line 39
    :goto_1
    add-long/2addr v4, v6

    .line 40
    long-to-int v0, v4

    .line 41
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->c:I

    .line 42
    .line 43
    add-long/2addr v2, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-wide v2

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p2, "all reads must be multiple of record size (1024 bytes."

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method
