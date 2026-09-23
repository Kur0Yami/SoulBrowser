.class final Lorg/tukaani/xz/lz/BT4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I


# virtual methods
.method public final c(I)V
    .locals 4

    .line 1
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    if-lez p1, :cond_3

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->b(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->f:I

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iput v2, p0, Lorg/tukaani/xz/lz/BT4;->f:I

    .line 17
    .line 18
    const v3, 0x7fffffff

    .line 19
    .line 20
    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->e:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lorg/tukaani/xz/lz/BT4;->e:I

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iput p1, p0, Lorg/tukaani/xz/lz/BT4;->e:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_1
    if-gez v1, :cond_2

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    move p1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    throw p1

    .line 44
    :cond_3
    return-void
.end method
