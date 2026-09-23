.class Lorg/tukaani/xz/CountingInputStream;
.super Lorg/tukaani/xz/CloseIgnoringInputStream;
.source "SourceFile"


# instance fields
.field public c:J


# virtual methods
.method public final read()I
    .locals 5

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 3
    iput-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->c:J

    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2

    .line 4
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iget-wide p2, p0, Lorg/tukaani/xz/CountingInputStream;->c:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    int-to-long v0, p1

    add-long/2addr p2, v0

    .line 6
    iput-wide p2, p0, Lorg/tukaani/xz/CountingInputStream;->c:J

    :cond_0
    return p1
.end method
