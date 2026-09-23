.class public Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final read()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public final read([B)I
    .locals 0

    .line 2
    array-length p1, p1

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final read([BII)I
    .locals 0

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->read()I

    .line 2
    .line 3
    .line 4
    const-wide/16 p1, 0x0

    .line 5
    .line 6
    return-wide p1
.end method
