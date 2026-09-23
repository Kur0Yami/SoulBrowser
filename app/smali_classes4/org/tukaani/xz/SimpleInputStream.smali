.class Lorg/tukaani/xz/SimpleInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public c:Ljava/io/InputStream;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ljava/io/IOException;


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->j:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lorg/tukaani/xz/SimpleInputStream;->g:I

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    throw v0

    .line 13
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    .line 14
    .line 15
    const-string v1, "Stream closed"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->c:Ljava/io/InputStream;

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
    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->c:Ljava/io/InputStream;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->c:Ljava/io/InputStream;

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
    invoke-virtual {p0, v2, v0, v1}, Lorg/tukaani/xz/SimpleInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final read([BII)I
    .locals 8

    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    if-ltz v0, :cond_8

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->c:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    .line 4
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->j:Ljava/io/IOException;

    if-nez v1, :cond_6

    move v1, v0

    .line 5
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->g:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->f:I

    const/4 v4, 0x0

    invoke-static {v4, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->f:I

    .line 8
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->g:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->g:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    add-int v2, v3, v5

    .line 9
    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->h:I

    add-int/2addr v2, v6

    const/16 v7, 0x1000

    if-ne v2, v7, :cond_1

    add-int/2addr v5, v6

    .line 10
    invoke-static {v4, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->f:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eqz p3, :cond_4

    .line 12
    iget-boolean v3, p0, Lorg/tukaani/xz/SimpleInputStream;->i:Z

    if-eqz v3, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->f:I

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->g:I

    add-int/2addr v3, v5

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->h:I

    add-int/2addr v3, v5

    rsub-int v5, v3, 0x1000

    .line 14
    iget-object v6, p0, Lorg/tukaani/xz/SimpleInputStream;->c:Ljava/io/InputStream;

    invoke-virtual {v6, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lorg/tukaani/xz/SimpleInputStream;->i:Z

    .line 16
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->h:I

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->g:I

    .line 17
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->h:I

    goto :goto_0

    .line 18
    :cond_3
    iget p1, p0, Lorg/tukaani/xz/SimpleInputStream;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/tukaani/xz/SimpleInputStream;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 19
    throw p1

    :cond_4
    :goto_2
    if-lez v1, :cond_5

    return v1

    :cond_5
    return v2

    .line 20
    :goto_3
    iput-object p1, p0, Lorg/tukaani/xz/SimpleInputStream;->j:Ljava/io/IOException;

    .line 21
    throw p1

    .line 22
    :cond_6
    throw v1

    .line 23
    :cond_7
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    .line 24
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
