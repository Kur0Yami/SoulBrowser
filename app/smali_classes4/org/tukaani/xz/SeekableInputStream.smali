.class public abstract Lorg/tukaani/xz/SeekableInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# virtual methods
.method public abstract a()J
.end method

.method public abstract position()J
.end method

.method public final skip(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-gtz p1, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->a()J

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
