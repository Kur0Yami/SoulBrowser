.class Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoundedInputStream"
.end annotation


# virtual methods
.method public final available()I
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
    .locals 2

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->read([BII)I

    const/4 p1, -0x1

    return p1
.end method

.method public final read([BII)I
    .locals 0

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
