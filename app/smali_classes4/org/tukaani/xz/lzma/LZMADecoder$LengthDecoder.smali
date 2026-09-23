.class Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMADecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LengthDecoder"
.end annotation


# instance fields
.field public final synthetic e:Lorg/tukaani/xz/lzma/LZMADecoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->e:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->e:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->a:[S

    .line 7
    .line 8
    invoke-virtual {v1, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->b:[[S

    .line 17
    .line 18
    aget-object p1, v1, p1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->c([S)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    add-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    return p1

    .line 27
    :cond_0
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->c:[[S

    .line 39
    .line 40
    aget-object p1, v1, p1

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->c([S)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/lit8 p1, p1, 0xa

    .line 47
    .line 48
    return p1

    .line 49
    :cond_1
    iget-object p1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 50
    .line 51
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->d:[S

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->c([S)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/lit8 p1, p1, 0x12

    .line 58
    .line 59
    return p1
.end method
