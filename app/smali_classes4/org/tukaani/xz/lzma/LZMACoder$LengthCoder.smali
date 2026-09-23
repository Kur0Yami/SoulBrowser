.class abstract Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMACoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LengthCoder"
.end annotation


# instance fields
.field public final a:[S

.field public final b:[[S

.field public final c:[[S

.field public final d:[S


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [S

    .line 6
    .line 7
    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->a:[S

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    aput v3, v1, v2

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0x10

    .line 18
    .line 19
    aput v5, v1, v4

    .line 20
    .line 21
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [[S

    .line 28
    .line 29
    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->b:[[S

    .line 30
    .line 31
    new-array v0, v0, [I

    .line 32
    .line 33
    aput v3, v0, v2

    .line 34
    .line 35
    aput v5, v0, v4

    .line 36
    .line 37
    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, [[S

    .line 42
    .line 43
    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->c:[[S

    .line 44
    .line 45
    const/16 v0, 0x100

    .line 46
    .line 47
    new-array v0, v0, [S

    .line 48
    .line 49
    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->d:[S

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->a:[S

    .line 2
    .line 3
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->b:[[S

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v1, v3, :cond_0

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :goto_1
    array-length v1, v2

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->c:[[S

    .line 25
    .line 26
    aget-object v1, v1, v0

    .line 27
    .line 28
    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->d:[S

    .line 35
    .line 36
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
