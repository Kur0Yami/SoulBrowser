.class Lorg/tukaani/xz/SimpleOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "SourceFile"


# instance fields
.field public c:I


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 2
    .line 3
    const-string v1, "Flushing is not supported"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final write(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public final write([BII)V
    .locals 2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-gtz p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->c:I

    add-int/2addr v0, v1

    rsub-int v0, v0, 0x1000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    .line 4
    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->c:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lorg/tukaani/xz/SimpleOutputStream;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/tukaani/xz/SimpleOutputStream;->c:I

    .line 6
    throw v1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
