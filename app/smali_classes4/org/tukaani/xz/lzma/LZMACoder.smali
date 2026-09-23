.class abstract Lorg/tukaani/xz/lzma/LZMACoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;,
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:Lorg/tukaani/xz/lzma/State;

.field public final d:[[S

.field public final e:[S

.field public final f:[S

.field public final g:[S

.field public final h:[S

.field public final i:[[S

.field public final j:[[S

.field public final k:[[S

.field public final l:[S


# direct methods
.method public constructor <init>(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v2, v1, [I

    .line 8
    .line 9
    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->b:[I

    .line 10
    .line 11
    new-instance v2, Lorg/tukaani/xz/lzma/State;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->c:Lorg/tukaani/xz/lzma/State;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    const/16 v5, 0x10

    .line 23
    .line 24
    aput v5, v3, v4

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/16 v7, 0xc

    .line 28
    .line 29
    aput v7, v3, v6

    .line 30
    .line 31
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, [[S

    .line 38
    .line 39
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->d:[[S

    .line 40
    .line 41
    new-array v3, v7, [S

    .line 42
    .line 43
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->e:[S

    .line 44
    .line 45
    new-array v3, v7, [S

    .line 46
    .line 47
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->f:[S

    .line 48
    .line 49
    new-array v3, v7, [S

    .line 50
    .line 51
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->g:[S

    .line 52
    .line 53
    new-array v3, v7, [S

    .line 54
    .line 55
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->h:[S

    .line 56
    .line 57
    new-array v3, v2, [I

    .line 58
    .line 59
    aput v5, v3, v4

    .line 60
    .line 61
    aput v7, v3, v6

    .line 62
    .line 63
    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, [[S

    .line 68
    .line 69
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->i:[[S

    .line 70
    .line 71
    new-array v3, v2, [I

    .line 72
    .line 73
    const/16 v7, 0x40

    .line 74
    .line 75
    aput v7, v3, v4

    .line 76
    .line 77
    aput v1, v3, v6

    .line 78
    .line 79
    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, [[S

    .line 84
    .line 85
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->j:[[S

    .line 86
    .line 87
    new-array v3, v2, [S

    .line 88
    .line 89
    new-array v7, v2, [S

    .line 90
    .line 91
    new-array v8, v1, [S

    .line 92
    .line 93
    new-array v9, v1, [S

    .line 94
    .line 95
    const/16 v10, 0x8

    .line 96
    .line 97
    new-array v11, v10, [S

    .line 98
    .line 99
    new-array v12, v10, [S

    .line 100
    .line 101
    new-array v13, v5, [S

    .line 102
    .line 103
    new-array v14, v5, [S

    .line 104
    .line 105
    const/16 v15, 0x20

    .line 106
    .line 107
    move/from16 v16, v1

    .line 108
    .line 109
    new-array v1, v15, [S

    .line 110
    .line 111
    new-array v15, v15, [S

    .line 112
    .line 113
    move/from16 v17, v2

    .line 114
    .line 115
    const/16 v2, 0xa

    .line 116
    .line 117
    new-array v2, v2, [[S

    .line 118
    .line 119
    aput-object v3, v2, v6

    .line 120
    .line 121
    aput-object v7, v2, v4

    .line 122
    .line 123
    aput-object v8, v2, v17

    .line 124
    .line 125
    const/4 v3, 0x3

    .line 126
    aput-object v9, v2, v3

    .line 127
    .line 128
    aput-object v11, v2, v16

    .line 129
    .line 130
    const/4 v3, 0x5

    .line 131
    aput-object v12, v2, v3

    .line 132
    .line 133
    const/4 v3, 0x6

    .line 134
    aput-object v13, v2, v3

    .line 135
    .line 136
    const/4 v3, 0x7

    .line 137
    aput-object v14, v2, v3

    .line 138
    .line 139
    aput-object v1, v2, v10

    .line 140
    .line 141
    const/16 v1, 0x9

    .line 142
    .line 143
    aput-object v15, v2, v1

    .line 144
    .line 145
    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->k:[[S

    .line 146
    .line 147
    new-array v1, v5, [S

    .line 148
    .line 149
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->l:[S

    .line 150
    .line 151
    shl-int v1, v4, p1

    .line 152
    .line 153
    sub-int/2addr v1, v4

    .line 154
    iput v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->a:I

    .line 155
    .line 156
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->b:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput v1, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aput v1, v0, v2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    aput v1, v0, v2

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    aput v1, v0, v2

    .line 14
    .line 15
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->c:Lorg/tukaani/xz/lzma/State;

    .line 16
    .line 17
    iput v1, v0, Lorg/tukaani/xz/lzma/State;->a:I

    .line 18
    .line 19
    move v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->d:[[S

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge v0, v3, :cond_0

    .line 24
    .line 25
    aget-object v2, v2, v0

    .line 26
    .line 27
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->e:[S

    .line 34
    .line 35
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->f:[S

    .line 39
    .line 40
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->g:[S

    .line 44
    .line 45
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->h:[S

    .line 49
    .line 50
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 51
    .line 52
    .line 53
    move v0, v1

    .line 54
    :goto_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->i:[[S

    .line 55
    .line 56
    array-length v3, v2

    .line 57
    if-ge v0, v3, :cond_1

    .line 58
    .line 59
    aget-object v2, v2, v0

    .line 60
    .line 61
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v0, v1

    .line 68
    :goto_2
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->j:[[S

    .line 69
    .line 70
    array-length v3, v2

    .line 71
    if-ge v0, v3, :cond_2

    .line 72
    .line 73
    aget-object v2, v2, v0

    .line 74
    .line 75
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->k:[[S

    .line 82
    .line 83
    array-length v2, v0

    .line 84
    if-ge v1, v2, :cond_3

    .line 85
    .line 86
    aget-object v0, v0, v1

    .line 87
    .line 88
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->l:[S

    .line 95
    .line 96
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
