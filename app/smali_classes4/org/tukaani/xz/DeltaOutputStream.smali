.class Lorg/tukaani/xz/DeltaOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "SourceFile"


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
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

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int/2addr p2, p3

    if-ltz p2, :cond_1

    .line 2
    array-length p1, p1

    if-gt p2, p1, :cond_1

    const/4 p1, 0x0

    const/16 p2, 0x1000

    if-le p3, p2, :cond_0

    .line 3
    throw p1

    .line 4
    :cond_0
    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
