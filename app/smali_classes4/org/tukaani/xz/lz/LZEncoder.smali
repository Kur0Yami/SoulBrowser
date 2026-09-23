.class public abstract Lorg/tukaani/xz/lz/LZEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# virtual methods
.method public final a([BII)I
    .locals 4

    .line 1
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x10

    .line 9
    .line 10
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->c:I

    .line 11
    .line 12
    sub-int/2addr v2, v0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->a:I

    .line 18
    .line 19
    sub-int/2addr v2, v0

    .line 20
    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->a:I

    .line 21
    .line 22
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->b:I

    .line 23
    .line 24
    sub-int/2addr v2, v0

    .line 25
    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->b:I

    .line 26
    .line 27
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->c:I

    .line 28
    .line 29
    sub-int/2addr v2, v0

    .line 30
    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->c:I

    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->c:I

    .line 33
    .line 34
    rsub-int/lit8 v2, v0, 0x0

    .line 35
    .line 36
    if-le p3, v2, :cond_1

    .line 37
    .line 38
    move p3, v2

    .line 39
    :cond_1
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->c:I

    .line 43
    .line 44
    add-int/2addr p1, p3

    .line 45
    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->c:I

    .line 46
    .line 47
    if-ltz p1, :cond_2

    .line 48
    .line 49
    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->b:I

    .line 50
    .line 51
    :cond_2
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->d:I

    .line 52
    .line 53
    if-lez p1, :cond_3

    .line 54
    .line 55
    iget p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->a:I

    .line 56
    .line 57
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->b:I

    .line 58
    .line 59
    if-ge p2, v0, :cond_3

    .line 60
    .line 61
    sub-int/2addr p2, p1

    .line 62
    iput p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->a:I

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->d:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->c(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return p3
.end method

.method public final b(I)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->a:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->a:I

    .line 6
    .line 7
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->c:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    if-ge v1, p1, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->d:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->d:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_0
    return v1
.end method

.method public abstract c(I)V
.end method
