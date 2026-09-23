.class public Lorg/mozilla/universalchardet/prober/Latin1Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final e:[B

.field public static final f:[B


# instance fields
.field public b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public c:B

.field public d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->e:[B

    .line 9
    .line 10
    const/16 v0, 0x40

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->f:[B

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x7t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x5t
        0x1t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x7t
        0x1t
        0x7t
        0x0t
        0x7t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()F
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const v0, 0x3c23d70a    # 0.01f

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->d:[I

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-ge v0, v3, :cond_1

    .line 17
    .line 18
    aget v2, v2, v0

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    if-gtz v1, :cond_2

    .line 26
    .line 27
    move v3, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v3, 0x3

    .line 30
    aget v3, v2, v3

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    mul-float/2addr v3, v4

    .line 36
    int-to-float v1, v1

    .line 37
    div-float/2addr v3, v1

    .line 38
    const/4 v4, 0x1

    .line 39
    aget v2, v2, v4

    .line 40
    .line 41
    int-to-float v2, v2

    .line 42
    const/high16 v4, 0x41a00000    # 20.0f

    .line 43
    .line 44
    mul-float/2addr v2, v4

    .line 45
    div-float/2addr v2, v1

    .line 46
    sub-float/2addr v3, v2

    .line 47
    :goto_1
    cmpg-float v1, v3, v0

    .line 48
    .line 49
    if-gez v1, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v0, v3

    .line 53
    :goto_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    .line 55
    mul-float/2addr v0, v1

    .line 56
    return v0
.end method

.method public final c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_0
    const/4 v5, 0x1

    .line 10
    if-ge v2, p2, :cond_6

    .line 11
    .line 12
    aget-byte v6, p1, v2

    .line 13
    .line 14
    const/16 v7, 0x3e

    .line 15
    .line 16
    if-ne v6, v7, :cond_0

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/16 v7, 0x3c

    .line 21
    .line 22
    if-ne v6, v7, :cond_1

    .line 23
    .line 24
    move v3, v5

    .line 25
    :cond_1
    :goto_1
    and-int/lit16 v5, v6, 0x80

    .line 26
    .line 27
    if-nez v5, :cond_5

    .line 28
    .line 29
    and-int/lit16 v5, v6, 0xff

    .line 30
    .line 31
    const/16 v6, 0x41

    .line 32
    .line 33
    if-lt v5, v6, :cond_3

    .line 34
    .line 35
    const/16 v6, 0x5a

    .line 36
    .line 37
    if-le v5, v6, :cond_2

    .line 38
    .line 39
    const/16 v6, 0x61

    .line 40
    .line 41
    if-lt v5, v6, :cond_3

    .line 42
    .line 43
    :cond_2
    const/16 v6, 0x7a

    .line 44
    .line 45
    if-le v5, v6, :cond_5

    .line 46
    .line 47
    :cond_3
    if-le v2, v4, :cond_4

    .line 48
    .line 49
    if-nez v3, :cond_4

    .line 50
    .line 51
    sub-int v5, v2, v4

    .line 52
    .line 53
    invoke-virtual {v0, p1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    const/16 v4, 0x20

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    :cond_4
    add-int/lit8 v4, v2, 0x1

    .line 62
    .line 63
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    if-nez v3, :cond_7

    .line 67
    .line 68
    if-le v2, v4, :cond_7

    .line 69
    .line 70
    sub-int/2addr v2, v4

    .line 71
    invoke-virtual {v0, p1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    :cond_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    :goto_2
    if-ge v1, p2, :cond_9

    .line 83
    .line 84
    aget-byte v0, p1, v1

    .line 85
    .line 86
    and-int/lit16 v0, v0, 0xff

    .line 87
    .line 88
    sget-object v2, Lorg/mozilla/universalchardet/prober/Latin1Prober;->e:[B

    .line 89
    .line 90
    aget-byte v0, v2, v0

    .line 91
    .line 92
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->c:B

    .line 93
    .line 94
    mul-int/lit8 v2, v2, 0x8

    .line 95
    .line 96
    add-int/2addr v2, v0

    .line 97
    sget-object v3, Lorg/mozilla/universalchardet/prober/Latin1Prober;->f:[B

    .line 98
    .line 99
    aget-byte v2, v3, v2

    .line 100
    .line 101
    if-nez v2, :cond_8

    .line 102
    .line 103
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 104
    .line 105
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_8
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->d:[I

    .line 109
    .line 110
    aget v4, v3, v2

    .line 111
    .line 112
    add-int/2addr v4, v5

    .line 113
    aput v4, v3, v2

    .line 114
    .line 115
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->c:B

    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 121
    .line 122
    return-object p1
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->c:B

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->d:[I

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    aput v0, v2, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method
