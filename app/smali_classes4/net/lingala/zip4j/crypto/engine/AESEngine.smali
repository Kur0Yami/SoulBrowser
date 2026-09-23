.class public Lnet/lingala/zip4j/crypto/engine/AESEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[B

.field public static final h:[I

.field public static final i:[I


# instance fields
.field public final a:I

.field public final b:[[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->g:[B

    .line 9
    .line 10
    const/16 v1, 0x1e

    .line 11
    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->h:[I

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_2

    .line 22
    .line 23
    .line 24
    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->i:[I

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

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
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_2
    .array-data 4
        -0x5a9c9c3a
        -0x7b838308
        -0x66888812
        -0x7284840a
        0xdf2f2ff
        -0x4294942a
        -0x4e909022
        0x54c5c591
        0x50303060
        0x3010102
        -0x56989832
        0x7d2b2b56
        0x19fefee7
        0x62d7d7b5
        -0x195454b3
        -0x65898914
        0x45caca8f
        -0x627d7de1
        0x40c9c989
        -0x78828206
        0x15fafaef
        -0x14a6a64e
        -0x36b8b872
        0xbf0f0fb
        -0x135252bf
        0x67d4d4b3
        -0x25d5da1
        -0x155050bb
        -0x406363dd
        -0x85b5bad
        -0x698d8d1c
        0x5bc0c09b
        -0x3d48488b
        0x1cfdfde1
        -0x516c6cc3
        0x6a26264c
        0x5a36366c
        0x413f3f7e
        0x2f7f7f5
        0x4fcccc83
        0x5c343468
        -0xb5a5aaf
        0x34e5e5d1
        0x8f1f1f9
        -0x6c8e8e1e
        0x73d8d8ab
        0x53313162
        0x3f15152a
        0xc040408
        0x52c7c795
        0x65232346
        0x5ec3c39d
        0x28181830
        -0x5e6969c9
        0xf05050a
        -0x4a6565d1
        0x907070e
        0x36121224
        -0x647f7fe5
        0x3de2e2df
        0x26ebebcd
        0x6927274e
        -0x324d4d81
        -0x608a8a16
        0x1b090912
        -0x617c7ce3
        0x742c2c58
        0x2e1a1a34
        0x2d1b1b36
        -0x4d919124
        -0x11a5a54c
        -0x45f5fa5
        -0x9adad5c
        0x4d3b3b76    # 1.9632726E8f
        0x61d6d6b7
        -0x314c4c83
        0x7b292952
        0x3ee3e3dd
        0x712f2f5e
        -0x687b7bed
        -0xaacac5a
        0x68d1d1b9
        0x0
        0x2cededc1
        0x60202040
        0x1ffcfce3
        -0x374e4e87
        -0x12a4a44a
        -0x4195952c
        0x46cbcb8d
        -0x26414199
        0x4b393972    # 1.2138866E7f
        -0x21b5b56c
        -0x2bb3b368
        -0x17a7a750
        0x4acfcf85    # 6809538.5f
        0x6bd0d0bb
        0x2aefefc5
        -0x1a5555b1
        0x16fbfbed
        -0x3abcbc7a
        -0x28b2b266
        0x55333366
        -0x6b7a7aef
        -0x30baba76
        0x10f9f9e9
        0x6020204
        -0x7e808002
        -0xfafaf60
        0x443c3c78
        -0x456060db
        -0x1c5757b5
        -0xcaeae5e
        -0x15c5ca3
        -0x3fbfbf80
        -0x757070fb
        -0x526d6dc1
        -0x436262df
        0x48383870    # 188641.75f
        0x4f5f5f1
        -0x2043439d
        -0x3e494989
        0x75dadaaf
        0x63212142
        0x30101020
        0x1affffe5
        0xef3f3fd
        0x6dd2d2bf
        0x4ccdcd81    # 1.0789991E8f
        0x140c0c18
        0x35131326
        0x2fececc3
        -0x1ea0a042
        -0x5d6868cb
        -0x33bbbb78    # -5.14504E7f
        0x3917172e
        0x57c4c493
        -0xd5858ab
        -0x7d818104
        0x473d3d7a
        -0x539b9b38
        -0x18a2a246
        0x2b191932
        -0x6a8c8c1a
        -0x5f9f9f40
        -0x677e7ee7
        -0x2eb0b062
        0x7fdcdca3
        0x66222244
        0x7e2a2a54
        -0x546f6fc5
        -0x7c7777f5
        -0x35b9b974    # -3248547.0f
        0x29eeeec7
        -0x2c474795
        0x3c141428
        0x79dedea7
        -0x1da1a144
        0x1d0b0b16
        0x76dbdbad
        0x3be0e0db
        0x56323264
        0x4e3a3a74
        0x1e0a0a14
        -0x24b6b66e
        0xa06060c
        0x6c242448
        -0x1ba3a348
        0x5dc2c29f
        0x6ed3d3bd
        -0x105353bd
        -0x599d9d3c
        -0x576e6ec7
        -0x5b6a6acf
        0x37e4e4d3
        -0x7486860e
        0x32e7e7d5
        0x43c8c88b
        0x5937376e
        -0x48929226
        -0x737272ff
        0x64d5d5b1
        -0x2db1b164
        -0x1f5656b7
        -0x4b939328
        -0x5a9a954
        0x7f4f4f3
        0x25eaeacf
        -0x509a9a36
        -0x7185850c
        -0x165151b9
        0x18080810
        -0x2a454591
        -0x77878710
        0x6f25254a
        0x722e2e5c
        0x241c1c38
        -0xe5959a9
        -0x384b4b8d
        0x51c6c697
        0x23e8e8cb
        0x7cdddda1
        -0x638b8b18
        0x211f1f3e
        -0x22b4b46a
        -0x2342429f
        -0x797474f3
        -0x7a7575f1
        -0x6f8f8f20
        0x423e3e7c
        -0x3b4a4a8f
        -0x55999934
        -0x27b7b770
        0x5030306
        0x1f6f6f7
        0x120e0e1c
        -0x5c9e9e3e
        0x5f35356a
        -0x6a8a852
        -0x2f464697
        -0x6e7979e9
        0x58c1c199
        0x271d1d3a
        -0x466161d9
        0x38e1e1d9
        0x13f8f8eb
        -0x4c6767d5
        0x33111122
        -0x4496962e
        0x70d9d9a9
        -0x767171f9
        -0x586b6bcd
        -0x496464d3
        0x221e1e3c
        -0x6d7878eb
        0x20e9e9c9
        0x49cece87
        -0xaaaa56
        0x78282850
        0x7adfdfa5
        -0x707373fd
        -0x75e5ea7
        -0x7f7676f7
        0x170d0d1a
        -0x2540409b
        0x31e6e6d7
        -0x39bdbd7c
        -0x47979730
        -0x3cbebe7e
        -0x4f6666d7
        0x772d2d5a
        0x110f0f1e
        -0x344f4f85    # -2.315903E7f
        -0x3abab58
        -0x29444493
        0x3a16162c
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b:[[I

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x4

    .line 9
    div-int/2addr v0, v1

    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    const/4 v3, 0x6

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    if-ne v0, v2, :cond_5

    .line 18
    .line 19
    :cond_0
    mul-int/lit8 v4, v0, 0x4

    .line 20
    .line 21
    array-length v5, p1

    .line 22
    if-ne v4, v5, :cond_5

    .line 23
    .line 24
    add-int/lit8 v4, v0, 0x6

    .line 25
    .line 26
    iput v4, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->a:I

    .line 27
    .line 28
    add-int/lit8 v4, v0, 0x7

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    new-array v6, v5, [I

    .line 32
    .line 33
    const/4 v7, 0x1

    .line 34
    aput v1, v6, v7

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    aput v4, v6, v8

    .line 38
    .line 39
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, [[I

    .line 46
    .line 47
    move v6, v8

    .line 48
    :goto_0
    array-length v9, p1

    .line 49
    if-ge v8, v9, :cond_1

    .line 50
    .line 51
    shr-int/lit8 v9, v6, 0x2

    .line 52
    .line 53
    aget-object v9, v4, v9

    .line 54
    .line 55
    and-int/lit8 v10, v6, 0x3

    .line 56
    .line 57
    aget-byte v11, p1, v8

    .line 58
    .line 59
    and-int/lit16 v11, v11, 0xff

    .line 60
    .line 61
    add-int/lit8 v12, v8, 0x1

    .line 62
    .line 63
    aget-byte v12, p1, v12

    .line 64
    .line 65
    and-int/lit16 v12, v12, 0xff

    .line 66
    .line 67
    shl-int/2addr v12, v2

    .line 68
    or-int/2addr v11, v12

    .line 69
    add-int/lit8 v12, v8, 0x2

    .line 70
    .line 71
    aget-byte v12, p1, v12

    .line 72
    .line 73
    and-int/lit16 v12, v12, 0xff

    .line 74
    .line 75
    shl-int/lit8 v12, v12, 0x10

    .line 76
    .line 77
    or-int/2addr v11, v12

    .line 78
    add-int/lit8 v12, v8, 0x3

    .line 79
    .line 80
    aget-byte v12, p1, v12

    .line 81
    .line 82
    shl-int/lit8 v12, v12, 0x18

    .line 83
    .line 84
    or-int/2addr v11, v12

    .line 85
    aput v11, v9, v10

    .line 86
    .line 87
    add-int/lit8 v8, v8, 0x4

    .line 88
    .line 89
    add-int/2addr v6, v7

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget p1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->a:I

    .line 92
    .line 93
    add-int/2addr p1, v7

    .line 94
    shl-int/2addr p1, v5

    .line 95
    move v5, v0

    .line 96
    :goto_1
    if-ge v5, p1, :cond_4

    .line 97
    .line 98
    add-int/lit8 v6, v5, -0x1

    .line 99
    .line 100
    shr-int/lit8 v8, v6, 0x2

    .line 101
    .line 102
    aget-object v8, v4, v8

    .line 103
    .line 104
    and-int/lit8 v6, v6, 0x3

    .line 105
    .line 106
    aget v6, v8, v6

    .line 107
    .line 108
    rem-int v8, v5, v0

    .line 109
    .line 110
    if-nez v8, :cond_2

    .line 111
    .line 112
    invoke-static {v6, v2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-static {v6}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c(I)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    div-int v8, v5, v0

    .line 121
    .line 122
    sub-int/2addr v8, v7

    .line 123
    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->h:[I

    .line 124
    .line 125
    aget v8, v9, v8

    .line 126
    .line 127
    xor-int/2addr v6, v8

    .line 128
    goto :goto_2

    .line 129
    :cond_2
    if-le v0, v3, :cond_3

    .line 130
    .line 131
    if-ne v8, v1, :cond_3

    .line 132
    .line 133
    invoke-static {v6}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c(I)I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    :cond_3
    :goto_2
    shr-int/lit8 v8, v5, 0x2

    .line 138
    .line 139
    aget-object v8, v4, v8

    .line 140
    .line 141
    and-int/lit8 v9, v5, 0x3

    .line 142
    .line 143
    sub-int v10, v5, v0

    .line 144
    .line 145
    shr-int/lit8 v11, v10, 0x2

    .line 146
    .line 147
    aget-object v11, v4, v11

    .line 148
    .line 149
    and-int/lit8 v10, v10, 0x3

    .line 150
    .line 151
    aget v10, v11, v10

    .line 152
    .line 153
    xor-int/2addr v6, v10

    .line 154
    aput v6, v8, v9

    .line 155
    .line 156
    add-int/lit8 v5, v5, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    iput-object v4, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b:[[I

    .line 160
    .line 161
    return-void

    .line 162
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 163
    .line 164
    const-string v0, "invalid key length (not 128/192/256)"

    .line 165
    .line 166
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1
.end method

.method public static b(II)I
    .locals 1

    .line 1
    ushr-int v0, p0, p1

    .line 2
    .line 3
    neg-int p1, p1

    .line 4
    shl-int/2addr p0, p1

    .line 5
    or-int/2addr p0, v0

    .line 6
    return p0
.end method

.method public static c(I)I
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    sget-object v1, Lnet/lingala/zip4j/crypto/engine/AESEngine;->g:[B

    .line 4
    .line 5
    aget-byte v0, v1, v0

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    shr-int/lit8 v2, p0, 0x8

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    aget-byte v2, v1, v2

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    shl-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    or-int/2addr v0, v2

    .line 20
    shr-int/lit8 v2, p0, 0x10

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    aget-byte v2, v1, v2

    .line 25
    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 27
    .line 28
    shl-int/lit8 v2, v2, 0x10

    .line 29
    .line 30
    or-int/2addr v0, v2

    .line 31
    shr-int/lit8 p0, p0, 0x18

    .line 32
    .line 33
    and-int/lit16 p0, p0, 0xff

    .line 34
    .line 35
    aget-byte p0, v1, p0

    .line 36
    .line 37
    shl-int/lit8 p0, p0, 0x18

    .line 38
    .line 39
    or-int/2addr p0, v0

    .line 40
    return p0
.end method


# virtual methods
.method public final a([B[B)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b:[[I

    .line 8
    .line 9
    if-eqz v3, :cond_3

    .line 10
    .line 11
    array-length v4, v1

    .line 12
    const/16 v5, 0x10

    .line 13
    .line 14
    if-gt v5, v4, :cond_2

    .line 15
    .line 16
    array-length v4, v2

    .line 17
    if-gt v5, v4, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aget-byte v6, v1, v4

    .line 21
    .line 22
    and-int/lit16 v6, v6, 0xff

    .line 23
    .line 24
    iput v6, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    aget-byte v8, v1, v7

    .line 28
    .line 29
    and-int/lit16 v8, v8, 0xff

    .line 30
    .line 31
    const/16 v9, 0x8

    .line 32
    .line 33
    shl-int/2addr v8, v9

    .line 34
    or-int/2addr v6, v8

    .line 35
    iput v6, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    aget-byte v10, v1, v8

    .line 39
    .line 40
    and-int/lit16 v10, v10, 0xff

    .line 41
    .line 42
    shl-int/2addr v10, v5

    .line 43
    or-int/2addr v6, v10

    .line 44
    iput v6, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 45
    .line 46
    const/4 v10, 0x3

    .line 47
    aget-byte v11, v1, v10

    .line 48
    .line 49
    const/16 v12, 0x18

    .line 50
    .line 51
    shl-int/2addr v11, v12

    .line 52
    or-int/2addr v6, v11

    .line 53
    iput v6, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    aget-byte v13, v1, v11

    .line 57
    .line 58
    and-int/lit16 v13, v13, 0xff

    .line 59
    .line 60
    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 61
    .line 62
    const/4 v14, 0x5

    .line 63
    aget-byte v15, v1, v14

    .line 64
    .line 65
    and-int/lit16 v15, v15, 0xff

    .line 66
    .line 67
    shl-int/2addr v15, v9

    .line 68
    or-int/2addr v13, v15

    .line 69
    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 70
    .line 71
    const/4 v15, 0x6

    .line 72
    move/from16 v16, v4

    .line 73
    .line 74
    aget-byte v4, v1, v15

    .line 75
    .line 76
    and-int/lit16 v4, v4, 0xff

    .line 77
    .line 78
    shl-int/2addr v4, v5

    .line 79
    or-int/2addr v4, v13

    .line 80
    iput v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 81
    .line 82
    const/4 v13, 0x7

    .line 83
    aget-byte v17, v1, v13

    .line 84
    .line 85
    shl-int/lit8 v17, v17, 0x18

    .line 86
    .line 87
    or-int v4, v4, v17

    .line 88
    .line 89
    iput v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 90
    .line 91
    move/from16 v17, v7

    .line 92
    .line 93
    aget-byte v7, v1, v9

    .line 94
    .line 95
    and-int/lit16 v7, v7, 0xff

    .line 96
    .line 97
    iput v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 98
    .line 99
    const/16 v18, 0x9

    .line 100
    .line 101
    move/from16 v19, v8

    .line 102
    .line 103
    aget-byte v8, v1, v18

    .line 104
    .line 105
    and-int/lit16 v8, v8, 0xff

    .line 106
    .line 107
    shl-int/2addr v8, v9

    .line 108
    or-int/2addr v7, v8

    .line 109
    iput v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 110
    .line 111
    const/16 v20, 0xa

    .line 112
    .line 113
    aget-byte v8, v1, v20

    .line 114
    .line 115
    and-int/lit16 v8, v8, 0xff

    .line 116
    .line 117
    shl-int/2addr v8, v5

    .line 118
    or-int/2addr v7, v8

    .line 119
    iput v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 120
    .line 121
    const/16 v8, 0xb

    .line 122
    .line 123
    aget-byte v21, v1, v8

    .line 124
    .line 125
    shl-int/lit8 v21, v21, 0x18

    .line 126
    .line 127
    or-int v7, v7, v21

    .line 128
    .line 129
    iput v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 130
    .line 131
    const/16 v21, 0xc

    .line 132
    .line 133
    move/from16 v22, v8

    .line 134
    .line 135
    aget-byte v8, v1, v21

    .line 136
    .line 137
    and-int/lit16 v8, v8, 0xff

    .line 138
    .line 139
    iput v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 140
    .line 141
    const/16 v23, 0xd

    .line 142
    .line 143
    move/from16 v24, v10

    .line 144
    .line 145
    aget-byte v10, v1, v23

    .line 146
    .line 147
    and-int/lit16 v10, v10, 0xff

    .line 148
    .line 149
    shl-int/2addr v10, v9

    .line 150
    or-int/2addr v8, v10

    .line 151
    iput v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 152
    .line 153
    const/16 v25, 0xe

    .line 154
    .line 155
    aget-byte v10, v1, v25

    .line 156
    .line 157
    and-int/lit16 v10, v10, 0xff

    .line 158
    .line 159
    shl-int/2addr v10, v5

    .line 160
    or-int/2addr v8, v10

    .line 161
    iput v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 162
    .line 163
    const/16 v10, 0xf

    .line 164
    .line 165
    aget-byte v1, v1, v10

    .line 166
    .line 167
    shl-int/2addr v1, v12

    .line 168
    or-int/2addr v1, v8

    .line 169
    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 170
    .line 171
    aget-object v8, v3, v16

    .line 172
    .line 173
    aget v26, v8, v16

    .line 174
    .line 175
    xor-int v6, v6, v26

    .line 176
    .line 177
    iput v6, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 178
    .line 179
    aget v6, v8, v17

    .line 180
    .line 181
    xor-int/2addr v4, v6

    .line 182
    iput v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 183
    .line 184
    aget v4, v8, v19

    .line 185
    .line 186
    xor-int/2addr v4, v7

    .line 187
    iput v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 188
    .line 189
    aget v4, v8, v24

    .line 190
    .line 191
    xor-int/2addr v1, v4

    .line 192
    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 193
    .line 194
    move/from16 v1, v17

    .line 195
    .line 196
    :goto_0
    iget v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->a:I

    .line 197
    .line 198
    add-int/lit8 v4, v4, -0x1

    .line 199
    .line 200
    sget-object v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->i:[I

    .line 201
    .line 202
    if-ge v1, v4, :cond_0

    .line 203
    .line 204
    iget v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 205
    .line 206
    and-int/lit16 v4, v4, 0xff

    .line 207
    .line 208
    aget v4, v6, v4

    .line 209
    .line 210
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 211
    .line 212
    shr-int/2addr v7, v9

    .line 213
    and-int/lit16 v7, v7, 0xff

    .line 214
    .line 215
    aget v7, v6, v7

    .line 216
    .line 217
    invoke-static {v7, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    xor-int/2addr v4, v7

    .line 222
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 223
    .line 224
    shr-int/2addr v7, v5

    .line 225
    and-int/lit16 v7, v7, 0xff

    .line 226
    .line 227
    aget v7, v6, v7

    .line 228
    .line 229
    invoke-static {v7, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    xor-int/2addr v4, v7

    .line 234
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 235
    .line 236
    shr-int/2addr v7, v12

    .line 237
    and-int/lit16 v7, v7, 0xff

    .line 238
    .line 239
    aget v7, v6, v7

    .line 240
    .line 241
    invoke-static {v7, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    xor-int/2addr v4, v7

    .line 246
    aget-object v7, v3, v1

    .line 247
    .line 248
    aget v7, v7, v16

    .line 249
    .line 250
    xor-int/2addr v4, v7

    .line 251
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 252
    .line 253
    and-int/lit16 v7, v7, 0xff

    .line 254
    .line 255
    aget v7, v6, v7

    .line 256
    .line 257
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 258
    .line 259
    shr-int/2addr v8, v9

    .line 260
    and-int/lit16 v8, v8, 0xff

    .line 261
    .line 262
    aget v8, v6, v8

    .line 263
    .line 264
    invoke-static {v8, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    xor-int/2addr v7, v8

    .line 269
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 270
    .line 271
    shr-int/2addr v8, v5

    .line 272
    and-int/lit16 v8, v8, 0xff

    .line 273
    .line 274
    aget v8, v6, v8

    .line 275
    .line 276
    invoke-static {v8, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    xor-int/2addr v7, v8

    .line 281
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 282
    .line 283
    shr-int/2addr v8, v12

    .line 284
    and-int/lit16 v8, v8, 0xff

    .line 285
    .line 286
    aget v8, v6, v8

    .line 287
    .line 288
    invoke-static {v8, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    xor-int/2addr v7, v8

    .line 293
    aget-object v8, v3, v1

    .line 294
    .line 295
    aget v8, v8, v17

    .line 296
    .line 297
    xor-int/2addr v7, v8

    .line 298
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 299
    .line 300
    and-int/lit16 v8, v8, 0xff

    .line 301
    .line 302
    aget v8, v6, v8

    .line 303
    .line 304
    move/from16 v26, v10

    .line 305
    .line 306
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 307
    .line 308
    shr-int/2addr v10, v9

    .line 309
    and-int/lit16 v10, v10, 0xff

    .line 310
    .line 311
    aget v10, v6, v10

    .line 312
    .line 313
    invoke-static {v10, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    xor-int/2addr v8, v10

    .line 318
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 319
    .line 320
    shr-int/2addr v10, v5

    .line 321
    and-int/lit16 v10, v10, 0xff

    .line 322
    .line 323
    aget v10, v6, v10

    .line 324
    .line 325
    invoke-static {v10, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    xor-int/2addr v8, v10

    .line 330
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 331
    .line 332
    shr-int/2addr v10, v12

    .line 333
    and-int/lit16 v10, v10, 0xff

    .line 334
    .line 335
    aget v10, v6, v10

    .line 336
    .line 337
    invoke-static {v10, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    xor-int/2addr v8, v10

    .line 342
    aget-object v10, v3, v1

    .line 343
    .line 344
    aget v10, v10, v19

    .line 345
    .line 346
    xor-int/2addr v8, v10

    .line 347
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 348
    .line 349
    and-int/lit16 v10, v10, 0xff

    .line 350
    .line 351
    aget v10, v6, v10

    .line 352
    .line 353
    move/from16 v27, v11

    .line 354
    .line 355
    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 356
    .line 357
    shr-int/2addr v11, v9

    .line 358
    and-int/lit16 v11, v11, 0xff

    .line 359
    .line 360
    aget v11, v6, v11

    .line 361
    .line 362
    invoke-static {v11, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    xor-int/2addr v10, v11

    .line 367
    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 368
    .line 369
    shr-int/2addr v11, v5

    .line 370
    and-int/lit16 v11, v11, 0xff

    .line 371
    .line 372
    aget v11, v6, v11

    .line 373
    .line 374
    invoke-static {v11, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 375
    .line 376
    .line 377
    move-result v11

    .line 378
    xor-int/2addr v10, v11

    .line 379
    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 380
    .line 381
    shr-int/2addr v11, v12

    .line 382
    and-int/lit16 v11, v11, 0xff

    .line 383
    .line 384
    aget v11, v6, v11

    .line 385
    .line 386
    invoke-static {v11, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 387
    .line 388
    .line 389
    move-result v11

    .line 390
    xor-int/2addr v10, v11

    .line 391
    add-int/lit8 v11, v1, 0x1

    .line 392
    .line 393
    aget-object v28, v3, v1

    .line 394
    .line 395
    aget v28, v28, v24

    .line 396
    .line 397
    xor-int v10, v10, v28

    .line 398
    .line 399
    move/from16 v28, v13

    .line 400
    .line 401
    and-int/lit16 v13, v4, 0xff

    .line 402
    .line 403
    aget v13, v6, v13

    .line 404
    .line 405
    move/from16 v29, v14

    .line 406
    .line 407
    shr-int/lit8 v14, v7, 0x8

    .line 408
    .line 409
    and-int/lit16 v14, v14, 0xff

    .line 410
    .line 411
    aget v14, v6, v14

    .line 412
    .line 413
    invoke-static {v14, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 414
    .line 415
    .line 416
    move-result v14

    .line 417
    xor-int/2addr v13, v14

    .line 418
    shr-int/lit8 v14, v8, 0x10

    .line 419
    .line 420
    and-int/lit16 v14, v14, 0xff

    .line 421
    .line 422
    aget v14, v6, v14

    .line 423
    .line 424
    invoke-static {v14, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 425
    .line 426
    .line 427
    move-result v14

    .line 428
    xor-int/2addr v13, v14

    .line 429
    shr-int/lit8 v14, v10, 0x18

    .line 430
    .line 431
    and-int/lit16 v14, v14, 0xff

    .line 432
    .line 433
    aget v14, v6, v14

    .line 434
    .line 435
    invoke-static {v14, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 436
    .line 437
    .line 438
    move-result v14

    .line 439
    xor-int/2addr v13, v14

    .line 440
    aget-object v14, v3, v11

    .line 441
    .line 442
    aget v14, v14, v16

    .line 443
    .line 444
    xor-int/2addr v13, v14

    .line 445
    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 446
    .line 447
    and-int/lit16 v13, v7, 0xff

    .line 448
    .line 449
    aget v13, v6, v13

    .line 450
    .line 451
    shr-int/lit8 v14, v8, 0x8

    .line 452
    .line 453
    and-int/lit16 v14, v14, 0xff

    .line 454
    .line 455
    aget v14, v6, v14

    .line 456
    .line 457
    invoke-static {v14, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 458
    .line 459
    .line 460
    move-result v14

    .line 461
    xor-int/2addr v13, v14

    .line 462
    shr-int/lit8 v14, v10, 0x10

    .line 463
    .line 464
    and-int/lit16 v14, v14, 0xff

    .line 465
    .line 466
    aget v14, v6, v14

    .line 467
    .line 468
    invoke-static {v14, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 469
    .line 470
    .line 471
    move-result v14

    .line 472
    xor-int/2addr v13, v14

    .line 473
    shr-int/lit8 v14, v4, 0x18

    .line 474
    .line 475
    and-int/lit16 v14, v14, 0xff

    .line 476
    .line 477
    aget v14, v6, v14

    .line 478
    .line 479
    invoke-static {v14, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 480
    .line 481
    .line 482
    move-result v14

    .line 483
    xor-int/2addr v13, v14

    .line 484
    aget-object v14, v3, v11

    .line 485
    .line 486
    aget v14, v14, v17

    .line 487
    .line 488
    xor-int/2addr v13, v14

    .line 489
    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 490
    .line 491
    and-int/lit16 v13, v8, 0xff

    .line 492
    .line 493
    aget v13, v6, v13

    .line 494
    .line 495
    shr-int/lit8 v14, v10, 0x8

    .line 496
    .line 497
    and-int/lit16 v14, v14, 0xff

    .line 498
    .line 499
    aget v14, v6, v14

    .line 500
    .line 501
    invoke-static {v14, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    xor-int/2addr v13, v14

    .line 506
    shr-int/lit8 v14, v4, 0x10

    .line 507
    .line 508
    and-int/lit16 v14, v14, 0xff

    .line 509
    .line 510
    aget v14, v6, v14

    .line 511
    .line 512
    invoke-static {v14, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 513
    .line 514
    .line 515
    move-result v14

    .line 516
    xor-int/2addr v13, v14

    .line 517
    shr-int/lit8 v14, v7, 0x18

    .line 518
    .line 519
    and-int/lit16 v14, v14, 0xff

    .line 520
    .line 521
    aget v14, v6, v14

    .line 522
    .line 523
    invoke-static {v14, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 524
    .line 525
    .line 526
    move-result v14

    .line 527
    xor-int/2addr v13, v14

    .line 528
    aget-object v14, v3, v11

    .line 529
    .line 530
    aget v14, v14, v19

    .line 531
    .line 532
    xor-int/2addr v13, v14

    .line 533
    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 534
    .line 535
    and-int/lit16 v10, v10, 0xff

    .line 536
    .line 537
    aget v10, v6, v10

    .line 538
    .line 539
    shr-int/2addr v4, v9

    .line 540
    and-int/lit16 v4, v4, 0xff

    .line 541
    .line 542
    aget v4, v6, v4

    .line 543
    .line 544
    invoke-static {v4, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    xor-int/2addr v4, v10

    .line 549
    shr-int/2addr v7, v5

    .line 550
    and-int/lit16 v7, v7, 0xff

    .line 551
    .line 552
    aget v7, v6, v7

    .line 553
    .line 554
    invoke-static {v7, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    xor-int/2addr v4, v7

    .line 559
    shr-int/lit8 v7, v8, 0x18

    .line 560
    .line 561
    and-int/lit16 v7, v7, 0xff

    .line 562
    .line 563
    aget v6, v6, v7

    .line 564
    .line 565
    invoke-static {v6, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    xor-int/2addr v4, v6

    .line 570
    add-int/lit8 v1, v1, 0x2

    .line 571
    .line 572
    aget-object v6, v3, v11

    .line 573
    .line 574
    aget v6, v6, v24

    .line 575
    .line 576
    xor-int/2addr v4, v6

    .line 577
    iput v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 578
    .line 579
    move/from16 v10, v26

    .line 580
    .line 581
    move/from16 v11, v27

    .line 582
    .line 583
    move/from16 v13, v28

    .line 584
    .line 585
    move/from16 v14, v29

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :cond_0
    move/from16 v26, v10

    .line 590
    .line 591
    move/from16 v27, v11

    .line 592
    .line 593
    move/from16 v28, v13

    .line 594
    .line 595
    move/from16 v29, v14

    .line 596
    .line 597
    iget v4, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 598
    .line 599
    and-int/lit16 v4, v4, 0xff

    .line 600
    .line 601
    aget v4, v6, v4

    .line 602
    .line 603
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 604
    .line 605
    shr-int/2addr v7, v9

    .line 606
    and-int/lit16 v7, v7, 0xff

    .line 607
    .line 608
    aget v7, v6, v7

    .line 609
    .line 610
    invoke-static {v7, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 611
    .line 612
    .line 613
    move-result v7

    .line 614
    xor-int/2addr v4, v7

    .line 615
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 616
    .line 617
    shr-int/2addr v7, v5

    .line 618
    and-int/lit16 v7, v7, 0xff

    .line 619
    .line 620
    aget v7, v6, v7

    .line 621
    .line 622
    invoke-static {v7, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 623
    .line 624
    .line 625
    move-result v7

    .line 626
    xor-int/2addr v4, v7

    .line 627
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 628
    .line 629
    shr-int/2addr v7, v12

    .line 630
    and-int/lit16 v7, v7, 0xff

    .line 631
    .line 632
    aget v7, v6, v7

    .line 633
    .line 634
    invoke-static {v7, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    xor-int/2addr v4, v7

    .line 639
    aget-object v7, v3, v1

    .line 640
    .line 641
    aget v7, v7, v16

    .line 642
    .line 643
    xor-int/2addr v4, v7

    .line 644
    iget v7, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 645
    .line 646
    and-int/lit16 v7, v7, 0xff

    .line 647
    .line 648
    aget v7, v6, v7

    .line 649
    .line 650
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 651
    .line 652
    shr-int/2addr v8, v9

    .line 653
    and-int/lit16 v8, v8, 0xff

    .line 654
    .line 655
    aget v8, v6, v8

    .line 656
    .line 657
    invoke-static {v8, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 658
    .line 659
    .line 660
    move-result v8

    .line 661
    xor-int/2addr v7, v8

    .line 662
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 663
    .line 664
    shr-int/2addr v8, v5

    .line 665
    and-int/lit16 v8, v8, 0xff

    .line 666
    .line 667
    aget v8, v6, v8

    .line 668
    .line 669
    invoke-static {v8, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    xor-int/2addr v7, v8

    .line 674
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 675
    .line 676
    shr-int/2addr v8, v12

    .line 677
    and-int/lit16 v8, v8, 0xff

    .line 678
    .line 679
    aget v8, v6, v8

    .line 680
    .line 681
    invoke-static {v8, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 682
    .line 683
    .line 684
    move-result v8

    .line 685
    xor-int/2addr v7, v8

    .line 686
    aget-object v8, v3, v1

    .line 687
    .line 688
    aget v8, v8, v17

    .line 689
    .line 690
    xor-int/2addr v7, v8

    .line 691
    iget v8, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 692
    .line 693
    and-int/lit16 v8, v8, 0xff

    .line 694
    .line 695
    aget v8, v6, v8

    .line 696
    .line 697
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 698
    .line 699
    shr-int/2addr v10, v9

    .line 700
    and-int/lit16 v10, v10, 0xff

    .line 701
    .line 702
    aget v10, v6, v10

    .line 703
    .line 704
    invoke-static {v10, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 705
    .line 706
    .line 707
    move-result v10

    .line 708
    xor-int/2addr v8, v10

    .line 709
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 710
    .line 711
    shr-int/2addr v10, v5

    .line 712
    and-int/lit16 v10, v10, 0xff

    .line 713
    .line 714
    aget v10, v6, v10

    .line 715
    .line 716
    invoke-static {v10, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 717
    .line 718
    .line 719
    move-result v10

    .line 720
    xor-int/2addr v8, v10

    .line 721
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 722
    .line 723
    shr-int/2addr v10, v12

    .line 724
    and-int/lit16 v10, v10, 0xff

    .line 725
    .line 726
    aget v10, v6, v10

    .line 727
    .line 728
    invoke-static {v10, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 729
    .line 730
    .line 731
    move-result v10

    .line 732
    xor-int/2addr v8, v10

    .line 733
    aget-object v10, v3, v1

    .line 734
    .line 735
    aget v10, v10, v19

    .line 736
    .line 737
    xor-int/2addr v8, v10

    .line 738
    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 739
    .line 740
    and-int/lit16 v10, v10, 0xff

    .line 741
    .line 742
    aget v10, v6, v10

    .line 743
    .line 744
    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 745
    .line 746
    shr-int/2addr v11, v9

    .line 747
    and-int/lit16 v11, v11, 0xff

    .line 748
    .line 749
    aget v11, v6, v11

    .line 750
    .line 751
    invoke-static {v11, v12}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 752
    .line 753
    .line 754
    move-result v11

    .line 755
    xor-int/2addr v10, v11

    .line 756
    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 757
    .line 758
    shr-int/2addr v11, v5

    .line 759
    and-int/lit16 v11, v11, 0xff

    .line 760
    .line 761
    aget v11, v6, v11

    .line 762
    .line 763
    invoke-static {v11, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 764
    .line 765
    .line 766
    move-result v11

    .line 767
    xor-int/2addr v10, v11

    .line 768
    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 769
    .line 770
    shr-int/2addr v11, v12

    .line 771
    and-int/lit16 v11, v11, 0xff

    .line 772
    .line 773
    aget v6, v6, v11

    .line 774
    .line 775
    invoke-static {v6, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->b(II)I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    xor-int/2addr v6, v10

    .line 780
    add-int/lit8 v10, v1, 0x1

    .line 781
    .line 782
    aget-object v1, v3, v1

    .line 783
    .line 784
    aget v1, v1, v24

    .line 785
    .line 786
    xor-int/2addr v1, v6

    .line 787
    and-int/lit16 v6, v4, 0xff

    .line 788
    .line 789
    sget-object v11, Lnet/lingala/zip4j/crypto/engine/AESEngine;->g:[B

    .line 790
    .line 791
    aget-byte v6, v11, v6

    .line 792
    .line 793
    and-int/lit16 v6, v6, 0xff

    .line 794
    .line 795
    shr-int/lit8 v13, v7, 0x8

    .line 796
    .line 797
    and-int/lit16 v13, v13, 0xff

    .line 798
    .line 799
    aget-byte v13, v11, v13

    .line 800
    .line 801
    and-int/lit16 v13, v13, 0xff

    .line 802
    .line 803
    shl-int/2addr v13, v9

    .line 804
    xor-int/2addr v6, v13

    .line 805
    shr-int/lit8 v13, v8, 0x10

    .line 806
    .line 807
    and-int/lit16 v13, v13, 0xff

    .line 808
    .line 809
    aget-byte v13, v11, v13

    .line 810
    .line 811
    and-int/lit16 v13, v13, 0xff

    .line 812
    .line 813
    shl-int/2addr v13, v5

    .line 814
    xor-int/2addr v6, v13

    .line 815
    shr-int/lit8 v13, v1, 0x18

    .line 816
    .line 817
    and-int/lit16 v13, v13, 0xff

    .line 818
    .line 819
    aget-byte v13, v11, v13

    .line 820
    .line 821
    shl-int/2addr v13, v12

    .line 822
    xor-int/2addr v6, v13

    .line 823
    aget-object v3, v3, v10

    .line 824
    .line 825
    aget v10, v3, v16

    .line 826
    .line 827
    xor-int/2addr v6, v10

    .line 828
    iput v6, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->c:I

    .line 829
    .line 830
    and-int/lit16 v10, v7, 0xff

    .line 831
    .line 832
    aget-byte v10, v11, v10

    .line 833
    .line 834
    and-int/lit16 v10, v10, 0xff

    .line 835
    .line 836
    shr-int/lit8 v13, v8, 0x8

    .line 837
    .line 838
    and-int/lit16 v13, v13, 0xff

    .line 839
    .line 840
    aget-byte v13, v11, v13

    .line 841
    .line 842
    and-int/lit16 v13, v13, 0xff

    .line 843
    .line 844
    shl-int/2addr v13, v9

    .line 845
    xor-int/2addr v10, v13

    .line 846
    shr-int/lit8 v13, v1, 0x10

    .line 847
    .line 848
    and-int/lit16 v13, v13, 0xff

    .line 849
    .line 850
    aget-byte v13, v11, v13

    .line 851
    .line 852
    and-int/lit16 v13, v13, 0xff

    .line 853
    .line 854
    shl-int/2addr v13, v5

    .line 855
    xor-int/2addr v10, v13

    .line 856
    shr-int/lit8 v13, v4, 0x18

    .line 857
    .line 858
    and-int/lit16 v13, v13, 0xff

    .line 859
    .line 860
    aget-byte v13, v11, v13

    .line 861
    .line 862
    shl-int/2addr v13, v12

    .line 863
    xor-int/2addr v10, v13

    .line 864
    aget v13, v3, v17

    .line 865
    .line 866
    xor-int/2addr v10, v13

    .line 867
    iput v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->d:I

    .line 868
    .line 869
    and-int/lit16 v13, v8, 0xff

    .line 870
    .line 871
    aget-byte v13, v11, v13

    .line 872
    .line 873
    and-int/lit16 v13, v13, 0xff

    .line 874
    .line 875
    shr-int/lit8 v14, v1, 0x8

    .line 876
    .line 877
    and-int/lit16 v14, v14, 0xff

    .line 878
    .line 879
    aget-byte v14, v11, v14

    .line 880
    .line 881
    and-int/lit16 v14, v14, 0xff

    .line 882
    .line 883
    shl-int/2addr v14, v9

    .line 884
    xor-int/2addr v13, v14

    .line 885
    shr-int/lit8 v14, v4, 0x10

    .line 886
    .line 887
    and-int/lit16 v14, v14, 0xff

    .line 888
    .line 889
    aget-byte v14, v11, v14

    .line 890
    .line 891
    and-int/lit16 v14, v14, 0xff

    .line 892
    .line 893
    shl-int/2addr v14, v5

    .line 894
    xor-int/2addr v13, v14

    .line 895
    shr-int/lit8 v14, v7, 0x18

    .line 896
    .line 897
    and-int/lit16 v14, v14, 0xff

    .line 898
    .line 899
    aget-byte v14, v11, v14

    .line 900
    .line 901
    shl-int/2addr v14, v12

    .line 902
    xor-int/2addr v13, v14

    .line 903
    aget v14, v3, v19

    .line 904
    .line 905
    xor-int/2addr v13, v14

    .line 906
    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e:I

    .line 907
    .line 908
    and-int/lit16 v1, v1, 0xff

    .line 909
    .line 910
    aget-byte v1, v11, v1

    .line 911
    .line 912
    and-int/lit16 v1, v1, 0xff

    .line 913
    .line 914
    shr-int/2addr v4, v9

    .line 915
    and-int/lit16 v4, v4, 0xff

    .line 916
    .line 917
    aget-byte v4, v11, v4

    .line 918
    .line 919
    and-int/lit16 v4, v4, 0xff

    .line 920
    .line 921
    shl-int/2addr v4, v9

    .line 922
    xor-int/2addr v1, v4

    .line 923
    shr-int/lit8 v4, v7, 0x10

    .line 924
    .line 925
    and-int/lit16 v4, v4, 0xff

    .line 926
    .line 927
    aget-byte v4, v11, v4

    .line 928
    .line 929
    and-int/lit16 v4, v4, 0xff

    .line 930
    .line 931
    shl-int/2addr v4, v5

    .line 932
    xor-int/2addr v1, v4

    .line 933
    shr-int/lit8 v4, v8, 0x18

    .line 934
    .line 935
    and-int/lit16 v4, v4, 0xff

    .line 936
    .line 937
    aget-byte v4, v11, v4

    .line 938
    .line 939
    shl-int/2addr v4, v12

    .line 940
    xor-int/2addr v1, v4

    .line 941
    aget v3, v3, v24

    .line 942
    .line 943
    xor-int/2addr v1, v3

    .line 944
    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->f:I

    .line 945
    .line 946
    int-to-byte v3, v6

    .line 947
    aput-byte v3, v2, v16

    .line 948
    .line 949
    shr-int/lit8 v3, v6, 0x8

    .line 950
    .line 951
    int-to-byte v3, v3

    .line 952
    aput-byte v3, v2, v17

    .line 953
    .line 954
    shr-int/lit8 v3, v6, 0x10

    .line 955
    .line 956
    int-to-byte v3, v3

    .line 957
    aput-byte v3, v2, v19

    .line 958
    .line 959
    shr-int/lit8 v3, v6, 0x18

    .line 960
    .line 961
    int-to-byte v3, v3

    .line 962
    aput-byte v3, v2, v24

    .line 963
    .line 964
    int-to-byte v3, v10

    .line 965
    aput-byte v3, v2, v27

    .line 966
    .line 967
    shr-int/lit8 v3, v10, 0x8

    .line 968
    .line 969
    int-to-byte v3, v3

    .line 970
    aput-byte v3, v2, v29

    .line 971
    .line 972
    shr-int/lit8 v3, v10, 0x10

    .line 973
    .line 974
    int-to-byte v3, v3

    .line 975
    aput-byte v3, v2, v15

    .line 976
    .line 977
    shr-int/lit8 v3, v10, 0x18

    .line 978
    .line 979
    int-to-byte v3, v3

    .line 980
    aput-byte v3, v2, v28

    .line 981
    .line 982
    int-to-byte v3, v13

    .line 983
    aput-byte v3, v2, v9

    .line 984
    .line 985
    shr-int/lit8 v3, v13, 0x8

    .line 986
    .line 987
    int-to-byte v3, v3

    .line 988
    aput-byte v3, v2, v18

    .line 989
    .line 990
    shr-int/lit8 v3, v13, 0x10

    .line 991
    .line 992
    int-to-byte v3, v3

    .line 993
    aput-byte v3, v2, v20

    .line 994
    .line 995
    shr-int/lit8 v3, v13, 0x18

    .line 996
    .line 997
    int-to-byte v3, v3

    .line 998
    aput-byte v3, v2, v22

    .line 999
    .line 1000
    int-to-byte v3, v1

    .line 1001
    aput-byte v3, v2, v21

    .line 1002
    .line 1003
    shr-int/lit8 v3, v1, 0x8

    .line 1004
    .line 1005
    int-to-byte v3, v3

    .line 1006
    aput-byte v3, v2, v23

    .line 1007
    .line 1008
    shr-int/lit8 v3, v1, 0x10

    .line 1009
    .line 1010
    int-to-byte v3, v3

    .line 1011
    aput-byte v3, v2, v25

    .line 1012
    .line 1013
    shr-int/2addr v1, v12

    .line 1014
    int-to-byte v1, v1

    .line 1015
    aput-byte v1, v2, v26

    .line 1016
    .line 1017
    return-void

    .line 1018
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 1019
    .line 1020
    const-string v2, "output buffer too short"

    .line 1021
    .line 1022
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    throw v1

    .line 1026
    :cond_2
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 1027
    .line 1028
    const-string v2, "input buffer too short"

    .line 1029
    .line 1030
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    throw v1

    .line 1034
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 1035
    .line 1036
    const-string v2, "AES engine not initialised"

    .line 1037
    .line 1038
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw v1
.end method
