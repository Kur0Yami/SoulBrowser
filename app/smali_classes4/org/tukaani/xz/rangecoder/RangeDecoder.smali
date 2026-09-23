.class public abstract Lorg/tukaani/xz/rangecoder/RangeDecoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# virtual methods
.method public final b([SI)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->d()V

    .line 2
    .line 3
    .line 4
    aget-short v0, p1, p2

    .line 5
    .line 6
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->a:I

    .line 7
    .line 8
    ushr-int/lit8 v2, v1, 0xb

    .line 9
    .line 10
    mul-int/2addr v2, v0

    .line 11
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b:I

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    .line 15
    xor-int v5, v3, v4

    .line 16
    .line 17
    xor-int/2addr v4, v2

    .line 18
    if-ge v5, v4, :cond_0

    .line 19
    .line 20
    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->a:I

    .line 21
    .line 22
    rsub-int v1, v0, 0x800

    .line 23
    .line 24
    ushr-int/lit8 v1, v1, 0x5

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    int-to-short v0, v0

    .line 28
    aput-short v0, p1, p2

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_0
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->a:I

    .line 34
    .line 35
    sub-int/2addr v3, v2

    .line 36
    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b:I

    .line 37
    .line 38
    ushr-int/lit8 v1, v0, 0x5

    .line 39
    .line 40
    sub-int/2addr v0, v1

    .line 41
    int-to-short v0, v0

    .line 42
    aput-short v0, p1, p2

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    return p1
.end method

.method public final c([S)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    or-int/2addr v0, v1

    .line 9
    array-length v1, p1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    array-length p1, p1

    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public abstract d()V
.end method
