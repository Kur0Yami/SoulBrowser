.class final Lorg/tukaani/xz/lzma/State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/tukaani/xz/lzma/State;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/tukaani/xz/lzma/State;->a:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v2, 0x9

    .line 11
    .line 12
    if-gt v0, v2, :cond_1

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    iput v0, p0, Lorg/tukaani/xz/lzma/State;->a:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    add-int/lit8 v0, v0, -0x6

    .line 19
    .line 20
    iput v0, p0, Lorg/tukaani/xz/lzma/State;->a:I

    .line 21
    .line 22
    return-void
.end method
