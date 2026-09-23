.class public Lorg/tukaani/xz/XZInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    .line 2
    .line 3
    const-string v1, "Stream closed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v2, v0, v1}, Lorg/tukaani/xz/XZInputStream;->read([BII)I

    throw v2
.end method

.method public final read([BII)I
    .locals 0

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int/2addr p2, p3

    if-ltz p2, :cond_1

    .line 2
    array-length p1, p1

    if-gt p2, p1, :cond_1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    .line 4
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
