.class Lorg/tukaani/xz/LZMA2OutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "SourceFile"


# instance fields
.field public c:I

.field public f:Ljava/io/IOException;


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->f:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    throw v0
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->f:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_0
    throw v0
.end method

.method public final write(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public final write([BII)V
    .locals 0

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int/2addr p2, p3

    if-ltz p2, :cond_2

    .line 2
    array-length p1, p1

    if-gt p2, p1, :cond_2

    .line 3
    iget-object p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->f:Ljava/io/IOException;

    if-nez p1, :cond_1

    if-gtz p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
