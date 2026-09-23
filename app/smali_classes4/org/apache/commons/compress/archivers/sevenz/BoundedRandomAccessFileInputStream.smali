.class Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public c:J


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->c:J

    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public final read([BII)I
    .locals 2

    .line 4
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;->c:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
