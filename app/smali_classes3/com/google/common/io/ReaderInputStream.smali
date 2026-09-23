.class final Lcom/google/common/io/ReaderInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/common/annotations/J2ktIncompatible;
.end annotation


# instance fields
.field public c:Ljava/nio/CharBuffer;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Z

.field public h:Z


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    throw v0
.end method

.method public final read([BII)I
    .locals 5

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->j(III)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3
    :goto_0
    iget-boolean v2, p0, Lcom/google/common/io/ReaderInputStream;->g:Z

    if-eqz v2, :cond_4

    add-int v2, p2, v1

    sub-int v3, p3, v1

    .line 4
    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v1, v3

    if-eq v1, p3, :cond_2

    .line 6
    iget-boolean v2, p0, Lcom/google/common/io/ReaderInputStream;->h:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iput-boolean v0, p0, Lcom/google/common/io/ReaderInputStream;->g:Z

    .line 8
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->f:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    return v1

    :cond_3
    const/4 p1, -0x1

    return p1

    .line 10
    :cond_4
    :goto_2
    iget-boolean v2, p0, Lcom/google/common/io/ReaderInputStream;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 11
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 12
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 13
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->f:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 15
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-nez v2, :cond_5

    .line 16
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/io/ReaderInputStream;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/google/common/io/ReaderInputStream;->g:Z

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 19
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    sub-int/2addr p2, p1

    if-nez p2, :cond_8

    .line 21
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    if-lez p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    goto :goto_3

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    .line 25
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    .line 26
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p2

    .line 27
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p3

    .line 28
    invoke-virtual {p2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 29
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    iput-object p2, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    .line 32
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 33
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->c:Ljava/nio/CharBuffer;

    .line 34
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 35
    throw v3

    .line 36
    :cond_9
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 37
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    return v0

    .line 38
    :cond_a
    throw v3
.end method
