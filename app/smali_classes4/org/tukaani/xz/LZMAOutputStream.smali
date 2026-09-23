.class public Lorg/tukaani/xz/LZMAOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "SourceFile"


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    .line 2
    .line 3
    const-string v1, "LZMAOutputStream does not support flushing"

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
    .locals 0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int/2addr p2, p3

    if-ltz p2, :cond_0

    .line 2
    array-length p1, p1

    if-gt p2, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
