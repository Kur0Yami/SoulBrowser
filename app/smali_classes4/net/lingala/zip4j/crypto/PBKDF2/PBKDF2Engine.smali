.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

.field public b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->a:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a([CI)[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v2, v1

    .line 9
    new-array v2, v2, [B

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    array-length v5, v1

    .line 14
    if-ge v4, v5, :cond_0

    .line 15
    .line 16
    aget-char v5, v1, v4

    .line 17
    .line 18
    int-to-byte v5, v5

    .line 19
    aput-byte v5, v2, v4

    .line 20
    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 29
    .line 30
    invoke-direct {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 34
    .line 35
    :cond_1
    iget-object v1, v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->a([B)V

    .line 38
    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    iget-object v1, v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 43
    .line 44
    iget v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->b:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move/from16 v1, p2

    .line 48
    .line 49
    :goto_1
    iget-object v2, v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 50
    .line 51
    iget-object v4, v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->a:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 52
    .line 53
    iget-object v4, v4, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->a:[B

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    new-array v4, v3, [B

    .line 58
    .line 59
    :cond_3
    iget v5, v2, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->b:I

    .line 60
    .line 61
    rem-int v6, v1, v5

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    if-lez v6, :cond_4

    .line 65
    .line 66
    move v6, v7

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move v6, v3

    .line 69
    :goto_2
    div-int v8, v1, v5

    .line 70
    .line 71
    add-int/2addr v8, v6

    .line 72
    add-int/lit8 v6, v8, -0x1

    .line 73
    .line 74
    mul-int/2addr v6, v5

    .line 75
    sub-int v6, v1, v6

    .line 76
    .line 77
    mul-int v9, v8, v5

    .line 78
    .line 79
    new-array v9, v9, [B

    .line 80
    .line 81
    move v10, v3

    .line 82
    :goto_3
    if-gt v7, v8, :cond_7

    .line 83
    .line 84
    iget v11, v2, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->b:I

    .line 85
    .line 86
    new-array v12, v11, [B

    .line 87
    .line 88
    array-length v13, v4

    .line 89
    add-int/lit8 v13, v13, 0x4

    .line 90
    .line 91
    new-array v13, v13, [B

    .line 92
    .line 93
    array-length v14, v4

    .line 94
    invoke-static {v4, v3, v13, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    array-length v14, v4

    .line 98
    const/high16 v15, 0x1000000

    .line 99
    .line 100
    div-int v15, v7, v15

    .line 101
    .line 102
    int-to-byte v15, v15

    .line 103
    aput-byte v15, v13, v14

    .line 104
    .line 105
    add-int/lit8 v15, v14, 0x1

    .line 106
    .line 107
    const/high16 v16, 0x10000

    .line 108
    .line 109
    div-int v3, v7, v16

    .line 110
    .line 111
    int-to-byte v3, v3

    .line 112
    aput-byte v3, v13, v15

    .line 113
    .line 114
    add-int/lit8 v3, v14, 0x2

    .line 115
    .line 116
    div-int/lit16 v15, v7, 0x100

    .line 117
    .line 118
    int-to-byte v15, v15

    .line 119
    aput-byte v15, v13, v3

    .line 120
    .line 121
    add-int/lit8 v14, v14, 0x3

    .line 122
    .line 123
    int-to-byte v3, v7

    .line 124
    aput-byte v3, v13, v14

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    :goto_4
    const/16 v14, 0x3e8

    .line 128
    .line 129
    if-ge v3, v14, :cond_6

    .line 130
    .line 131
    iget-object v14, v2, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->a:Ljavax/crypto/Mac;

    .line 132
    .line 133
    invoke-virtual {v14, v13}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    const/4 v14, 0x0

    .line 138
    :goto_5
    if-ge v14, v11, :cond_5

    .line 139
    .line 140
    aget-byte v15, v12, v14

    .line 141
    .line 142
    aget-byte v16, v13, v14

    .line 143
    .line 144
    xor-int v15, v15, v16

    .line 145
    .line 146
    int-to-byte v15, v15

    .line 147
    aput-byte v15, v12, v14

    .line 148
    .line 149
    add-int/lit8 v14, v14, 0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    const/4 v3, 0x0

    .line 156
    invoke-static {v12, v3, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    .line 158
    .line 159
    add-int/2addr v10, v5

    .line 160
    add-int/lit8 v7, v7, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_7
    if-ge v6, v5, :cond_8

    .line 164
    .line 165
    new-array v2, v1, [B

    .line 166
    .line 167
    invoke-static {v9, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    .line 169
    .line 170
    return-object v2

    .line 171
    :cond_8
    return-object v9
.end method
