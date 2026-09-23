.class public final Lorg/tukaani/xz/lz/LZDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->c:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->d:I

    .line 8
    .line 9
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->b:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr p2, v0

    .line 17
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->e:I

    .line 18
    .line 19
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->f:I

    .line 20
    .line 21
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->b:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->b:I

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1

    .line 29
    :cond_0
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    .line 30
    .line 31
    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
