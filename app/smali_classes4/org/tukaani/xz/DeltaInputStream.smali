.class public Lorg/tukaani/xz/DeltaInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public c:Ljava/io/InputStream;

.field public f:Ljava/io/IOException;


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->f:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    throw v1

    .line 15
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    .line 16
    .line 17
    const-string v1, "Stream closed"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->c:Ljava/io/InputStream;

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
    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->c:Ljava/io/InputStream;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->c:Ljava/io/InputStream;

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
    invoke-virtual {p0, v2, v0, v1}, Lorg/tukaani/xz/DeltaInputStream;->read([BII)I

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

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->f:Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    :catch_0
    move-exception p1

    .line 6
    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->f:Ljava/io/IOException;

    .line 7
    throw p1

    .line 8
    :cond_2
    throw v1

    .line 9
    :cond_3
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    .line 10
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method
