.class public final Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;
.super Lorg/tukaani/xz/rangecoder/RangeDecoder;
.source "SourceFile"


# instance fields
.field public c:I


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->a:I

    .line 2
    .line 3
    const/high16 v1, -0x1000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->c:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->c:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    throw v0

    .line 17
    :catch_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    .line 18
    .line 19
    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw v0
.end method
