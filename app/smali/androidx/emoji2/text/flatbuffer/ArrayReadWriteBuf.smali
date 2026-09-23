.class public Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;


# instance fields
.field public a:[B


# virtual methods
.method public final a(II)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->a:[B

    .line 2
    .line 3
    or-int v1, p1, p2

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    sub-int/2addr v2, p1

    .line 7
    sub-int/2addr v2, p2

    .line 8
    or-int/2addr v1, v2

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ltz v1, :cond_f

    .line 11
    .line 12
    add-int v1, p1, p2

    .line 13
    .line 14
    new-array p2, p2, [C

    .line 15
    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge p1, v1, :cond_0

    .line 18
    .line 19
    aget-byte v4, v0, p1

    .line 20
    .line 21
    if-ltz v4, :cond_0

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    add-int/lit8 v5, v3, 0x1

    .line 26
    .line 27
    int-to-char v4, v4

    .line 28
    aput-char v4, p2, v3

    .line 29
    .line 30
    move v3, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :goto_1
    if-ge p1, v1, :cond_e

    .line 33
    .line 34
    add-int/lit8 v4, p1, 0x1

    .line 35
    .line 36
    aget-byte v5, v0, p1

    .line 37
    .line 38
    if-ltz v5, :cond_2

    .line 39
    .line 40
    add-int/lit8 p1, v3, 0x1

    .line 41
    .line 42
    int-to-char v5, v5

    .line 43
    aput-char v5, p2, v3

    .line 44
    .line 45
    :goto_2
    if-ge v4, v1, :cond_1

    .line 46
    .line 47
    aget-byte v3, v0, v4

    .line 48
    .line 49
    if-ltz v3, :cond_1

    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    add-int/lit8 v5, p1, 0x1

    .line 54
    .line 55
    int-to-char v3, v3

    .line 56
    aput-char v3, p2, p1

    .line 57
    .line 58
    move p1, v5

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    move v3, p1

    .line 61
    move p1, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/16 v6, -0x20

    .line 64
    .line 65
    const-string v7, "Invalid UTF-8"

    .line 66
    .line 67
    if-ge v5, v6, :cond_6

    .line 68
    .line 69
    if-ge v4, v1, :cond_5

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x2

    .line 72
    .line 73
    aget-byte v4, v0, v4

    .line 74
    .line 75
    add-int/lit8 v6, v3, 0x1

    .line 76
    .line 77
    const/16 v7, -0x3e

    .line 78
    .line 79
    if-lt v5, v7, :cond_4

    .line 80
    .line 81
    invoke-static {v4}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(B)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-nez v7, :cond_3

    .line 86
    .line 87
    and-int/lit8 v5, v5, 0x1f

    .line 88
    .line 89
    shl-int/lit8 v5, v5, 0x6

    .line 90
    .line 91
    and-int/lit8 v4, v4, 0x3f

    .line 92
    .line 93
    or-int/2addr v4, v5

    .line 94
    int-to-char v4, v4

    .line 95
    aput-char v4, p2, v3

    .line 96
    .line 97
    move v3, v6

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p2, "Invalid UTF-8: Illegal trailing byte in 2 bytes utf"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string p2, "Invalid UTF-8: Illegal leading byte in 2 bytes utf"

    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_6
    const/16 v8, -0x10

    .line 122
    .line 123
    if-ge v5, v8, :cond_b

    .line 124
    .line 125
    add-int/lit8 v8, v1, -0x1

    .line 126
    .line 127
    if-ge v4, v8, :cond_a

    .line 128
    .line 129
    add-int/lit8 v8, p1, 0x2

    .line 130
    .line 131
    aget-byte v4, v0, v4

    .line 132
    .line 133
    add-int/lit8 p1, p1, 0x3

    .line 134
    .line 135
    aget-byte v8, v0, v8

    .line 136
    .line 137
    add-int/lit8 v9, v3, 0x1

    .line 138
    .line 139
    invoke-static {v4}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(B)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-nez v10, :cond_9

    .line 144
    .line 145
    const/16 v10, -0x60

    .line 146
    .line 147
    if-ne v5, v6, :cond_7

    .line 148
    .line 149
    if-lt v4, v10, :cond_9

    .line 150
    .line 151
    :cond_7
    const/16 v6, -0x13

    .line 152
    .line 153
    if-ne v5, v6, :cond_8

    .line 154
    .line 155
    if-ge v4, v10, :cond_9

    .line 156
    .line 157
    :cond_8
    invoke-static {v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(B)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-nez v6, :cond_9

    .line 162
    .line 163
    and-int/lit8 v5, v5, 0xf

    .line 164
    .line 165
    shl-int/lit8 v5, v5, 0xc

    .line 166
    .line 167
    and-int/lit8 v4, v4, 0x3f

    .line 168
    .line 169
    shl-int/lit8 v4, v4, 0x6

    .line 170
    .line 171
    or-int/2addr v4, v5

    .line 172
    and-int/lit8 v5, v8, 0x3f

    .line 173
    .line 174
    or-int/2addr v4, v5

    .line 175
    int-to-char v4, v4

    .line 176
    aput-char v4, p2, v3

    .line 177
    .line 178
    move v3, v9

    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_b
    add-int/lit8 v6, v1, -0x2

    .line 194
    .line 195
    if-ge v4, v6, :cond_d

    .line 196
    .line 197
    add-int/lit8 v6, p1, 0x2

    .line 198
    .line 199
    aget-byte v4, v0, v4

    .line 200
    .line 201
    add-int/lit8 v8, p1, 0x3

    .line 202
    .line 203
    aget-byte v6, v0, v6

    .line 204
    .line 205
    add-int/lit8 p1, p1, 0x4

    .line 206
    .line 207
    aget-byte v8, v0, v8

    .line 208
    .line 209
    invoke-static {v4}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(B)Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-nez v9, :cond_c

    .line 214
    .line 215
    shl-int/lit8 v9, v5, 0x1c

    .line 216
    .line 217
    add-int/lit8 v10, v4, 0x70

    .line 218
    .line 219
    add-int/2addr v10, v9

    .line 220
    shr-int/lit8 v9, v10, 0x1e

    .line 221
    .line 222
    if-nez v9, :cond_c

    .line 223
    .line 224
    invoke-static {v6}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(B)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-nez v9, :cond_c

    .line 229
    .line 230
    invoke-static {v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(B)Z

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-nez v9, :cond_c

    .line 235
    .line 236
    and-int/lit8 v5, v5, 0x7

    .line 237
    .line 238
    shl-int/lit8 v5, v5, 0x12

    .line 239
    .line 240
    and-int/lit8 v4, v4, 0x3f

    .line 241
    .line 242
    shl-int/lit8 v4, v4, 0xc

    .line 243
    .line 244
    or-int/2addr v4, v5

    .line 245
    and-int/lit8 v5, v6, 0x3f

    .line 246
    .line 247
    shl-int/lit8 v5, v5, 0x6

    .line 248
    .line 249
    or-int/2addr v4, v5

    .line 250
    and-int/lit8 v5, v8, 0x3f

    .line 251
    .line 252
    or-int/2addr v4, v5

    .line 253
    ushr-int/lit8 v5, v4, 0xa

    .line 254
    .line 255
    const v6, 0xd7c0

    .line 256
    .line 257
    .line 258
    add-int/2addr v5, v6

    .line 259
    int-to-char v5, v5

    .line 260
    aput-char v5, p2, v3

    .line 261
    .line 262
    add-int/lit8 v5, v3, 0x1

    .line 263
    .line 264
    and-int/lit16 v4, v4, 0x3ff

    .line 265
    .line 266
    const v6, 0xdc00

    .line 267
    .line 268
    .line 269
    add-int/2addr v4, v6

    .line 270
    int-to-char v4, v4

    .line 271
    aput-char v4, p2, v5

    .line 272
    .line 273
    add-int/lit8 v3, v3, 0x2

    .line 274
    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 278
    .line 279
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p1

    .line 283
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 284
    .line 285
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :cond_e
    new-instance p1, Ljava/lang/String;

    .line 290
    .line 291
    invoke-direct {p1, p2, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 292
    .line 293
    .line 294
    return-object p1

    .line 295
    :cond_f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 296
    .line 297
    array-length v0, v0

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    const/4 v3, 0x3

    .line 311
    new-array v3, v3, [Ljava/lang/Object;

    .line 312
    .line 313
    aput-object v0, v3, v2

    .line 314
    .line 315
    const/4 v0, 0x1

    .line 316
    aput-object p1, v3, v0

    .line 317
    .line 318
    const/4 p1, 0x2

    .line 319
    aput-object p2, v3, p1

    .line 320
    .line 321
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 322
    .line 323
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v1
.end method

.method public final get(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->a:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public final getDouble(I)D
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getLong(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getFloat(I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getInt(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getInt(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->a:[B

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x3

    .line 4
    .line 5
    aget-byte v1, v0, v1

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x18

    .line 8
    .line 9
    add-int/lit8 v2, p1, 0x2

    .line 10
    .line 11
    aget-byte v2, v0, v2

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x10

    .line 16
    .line 17
    or-int/2addr v1, v2

    .line 18
    add-int/lit8 v2, p1, 0x1

    .line 19
    .line 20
    aget-byte v2, v0, v2

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    shl-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    aget-byte p1, v0, p1

    .line 28
    .line 29
    and-int/lit16 p1, p1, 0xff

    .line 30
    .line 31
    or-int/2addr p1, v1

    .line 32
    return p1
.end method

.method public final getLong(I)J
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->a:[B

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    aget-byte v2, v0, p1

    .line 6
    .line 7
    int-to-long v2, v2

    .line 8
    const-wide/16 v4, 0xff

    .line 9
    .line 10
    and-long/2addr v2, v4

    .line 11
    add-int/lit8 v6, p1, 0x2

    .line 12
    .line 13
    aget-byte v1, v0, v1

    .line 14
    .line 15
    int-to-long v7, v1

    .line 16
    and-long/2addr v7, v4

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    shl-long/2addr v7, v1

    .line 20
    or-long/2addr v2, v7

    .line 21
    add-int/lit8 v1, p1, 0x3

    .line 22
    .line 23
    aget-byte v6, v0, v6

    .line 24
    .line 25
    int-to-long v6, v6

    .line 26
    and-long/2addr v6, v4

    .line 27
    const/16 v8, 0x10

    .line 28
    .line 29
    shl-long/2addr v6, v8

    .line 30
    or-long/2addr v2, v6

    .line 31
    add-int/lit8 v6, p1, 0x4

    .line 32
    .line 33
    aget-byte v1, v0, v1

    .line 34
    .line 35
    int-to-long v7, v1

    .line 36
    and-long/2addr v7, v4

    .line 37
    const/16 v1, 0x18

    .line 38
    .line 39
    shl-long/2addr v7, v1

    .line 40
    or-long/2addr v2, v7

    .line 41
    add-int/lit8 v1, p1, 0x5

    .line 42
    .line 43
    aget-byte v6, v0, v6

    .line 44
    .line 45
    int-to-long v6, v6

    .line 46
    and-long/2addr v6, v4

    .line 47
    const/16 v8, 0x20

    .line 48
    .line 49
    shl-long/2addr v6, v8

    .line 50
    or-long/2addr v2, v6

    .line 51
    add-int/lit8 v6, p1, 0x6

    .line 52
    .line 53
    aget-byte v1, v0, v1

    .line 54
    .line 55
    int-to-long v7, v1

    .line 56
    and-long/2addr v7, v4

    .line 57
    const/16 v1, 0x28

    .line 58
    .line 59
    shl-long/2addr v7, v1

    .line 60
    or-long/2addr v2, v7

    .line 61
    add-int/lit8 p1, p1, 0x7

    .line 62
    .line 63
    aget-byte v1, v0, v6

    .line 64
    .line 65
    int-to-long v6, v1

    .line 66
    and-long/2addr v4, v6

    .line 67
    const/16 v1, 0x30

    .line 68
    .line 69
    shl-long/2addr v4, v1

    .line 70
    or-long/2addr v2, v4

    .line 71
    aget-byte p1, v0, p1

    .line 72
    .line 73
    int-to-long v0, p1

    .line 74
    const/16 p1, 0x38

    .line 75
    .line 76
    shl-long/2addr v0, p1

    .line 77
    or-long/2addr v0, v2

    .line 78
    return-wide v0
.end method

.method public final getShort(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->a:[B

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    aget-byte v1, v0, v1

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    aget-byte p1, v0, p1

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 12
    .line 13
    or-int/2addr p1, v1

    .line 14
    int-to-short p1, p1

    .line 15
    return p1
.end method
