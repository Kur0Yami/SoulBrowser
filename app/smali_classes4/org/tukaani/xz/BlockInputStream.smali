.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public c:Ljava/io/InputStream;

.field public f:J

.field public g:Z


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->c:Ljava/io/InputStream;

    .line 8
    .line 9
    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v2, v0, v1}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final read([BII)I
    .locals 2

    .line 2
    iget-boolean v0, p0, Lorg/tukaani/xz/BlockInputStream;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gtz p1, :cond_2

    if-eq p1, v1, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-wide p2, p0, Lorg/tukaani/xz/BlockInputStream;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/tukaani/xz/BlockInputStream;->f:J

    const/4 p1, 0x0

    .line 6
    throw p1
.end method
