.class final Lcom/google/android/gms/internal/drive/zznk;
.super Lcom/google/android/gms/internal/drive/zznh;


# direct methods
.method public static c(J[BII)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, -0xc

    .line 3
    .line 4
    if-eqz p4, :cond_6

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/16 v3, -0x41

    .line 8
    .line 9
    if-eq p4, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne p4, v2, :cond_2

    .line 13
    .line 14
    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    const-wide/16 v4, 0x1

    .line 19
    .line 20
    add-long/2addr p0, v4

    .line 21
    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/drive/zznf;->a:Lcom/google/android/gms/internal/drive/zznh;

    .line 26
    .line 27
    if-gt p3, v1, :cond_1

    .line 28
    .line 29
    if-gt p4, v3, :cond_1

    .line 30
    .line 31
    if-le p0, v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    shl-int/lit8 p1, p4, 0x8

    .line 35
    .line 36
    xor-int/2addr p1, p3

    .line 37
    shl-int/lit8 p0, p0, 0x10

    .line 38
    .line 39
    xor-int/2addr p0, p1

    .line 40
    return p0

    .line 41
    :cond_1
    :goto_0
    return v0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_3
    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    sget-object p1, Lcom/google/android/gms/internal/drive/zznf;->a:Lcom/google/android/gms/internal/drive/zznh;

    .line 53
    .line 54
    if-gt p3, v1, :cond_5

    .line 55
    .line 56
    if-le p0, v3, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    shl-int/lit8 p0, p0, 0x8

    .line 60
    .line 61
    xor-int/2addr p0, p3

    .line 62
    return p0

    .line 63
    :cond_5
    :goto_1
    return v0

    .line 64
    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/drive/zznf;->a:Lcom/google/android/gms/internal/drive/zznh;

    .line 65
    .line 66
    if-le p3, v1, :cond_7

    .line 67
    .line 68
    return v0

    .line 69
    :cond_7
    return p3
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BII)I
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    int-to-long v4, v2

    .line 10
    int-to-long v6, v3

    .line 11
    add-long/2addr v6, v4

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    const-string v9, " at index "

    .line 17
    .line 18
    const-string v10, "Failed writing "

    .line 19
    .line 20
    if-gt v8, v3, :cond_c

    .line 21
    .line 22
    array-length v11, v1

    .line 23
    sub-int/2addr v11, v3

    .line 24
    if-lt v11, v2, :cond_c

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    const-wide/16 v11, 0x1

    .line 28
    .line 29
    const/16 v3, 0x80

    .line 30
    .line 31
    if-ge v2, v8, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    if-ge v13, v3, :cond_0

    .line 38
    .line 39
    add-long/2addr v11, v4

    .line 40
    int-to-byte v3, v13

    .line 41
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    move-wide v4, v11

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-ne v2, v8, :cond_1

    .line 49
    .line 50
    long-to-int v0, v4

    .line 51
    return v0

    .line 52
    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-ge v13, v3, :cond_2

    .line 59
    .line 60
    cmp-long v14, v4, v6

    .line 61
    .line 62
    if-gez v14, :cond_2

    .line 63
    .line 64
    add-long v14, v4, v11

    .line 65
    .line 66
    int-to-byte v13, v13

    .line 67
    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 68
    .line 69
    .line 70
    move-wide/from16 v19, v6

    .line 71
    .line 72
    move-wide/from16 p3, v11

    .line 73
    .line 74
    move-wide v4, v14

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_2
    const/16 v14, 0x800

    .line 78
    .line 79
    const-wide/16 v15, 0x2

    .line 80
    .line 81
    if-ge v13, v14, :cond_3

    .line 82
    .line 83
    sub-long v17, v6, v15

    .line 84
    .line 85
    cmp-long v14, v4, v17

    .line 86
    .line 87
    if-gtz v14, :cond_3

    .line 88
    .line 89
    move-wide/from16 p3, v11

    .line 90
    .line 91
    add-long v11, v4, p3

    .line 92
    .line 93
    ushr-int/lit8 v14, v13, 0x6

    .line 94
    .line 95
    or-int/lit16 v14, v14, 0x3c0

    .line 96
    .line 97
    int-to-byte v14, v14

    .line 98
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 99
    .line 100
    .line 101
    add-long/2addr v4, v15

    .line 102
    and-int/lit8 v13, v13, 0x3f

    .line 103
    .line 104
    or-int/2addr v13, v3

    .line 105
    int-to-byte v13, v13

    .line 106
    invoke-static {v1, v11, v12, v13}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 107
    .line 108
    .line 109
    move-wide/from16 v19, v6

    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_3
    move-wide/from16 p3, v11

    .line 114
    .line 115
    const v11, 0xdfff

    .line 116
    .line 117
    .line 118
    const v12, 0xd800

    .line 119
    .line 120
    .line 121
    const-wide/16 v17, 0x3

    .line 122
    .line 123
    if-lt v13, v12, :cond_5

    .line 124
    .line 125
    if-ge v11, v13, :cond_4

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    move-wide/from16 v19, v6

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    :goto_2
    sub-long v19, v6, v17

    .line 132
    .line 133
    cmp-long v14, v4, v19

    .line 134
    .line 135
    if-gtz v14, :cond_4

    .line 136
    .line 137
    add-long v11, v4, p3

    .line 138
    .line 139
    ushr-int/lit8 v14, v13, 0xc

    .line 140
    .line 141
    or-int/lit16 v14, v14, 0x1e0

    .line 142
    .line 143
    int-to-byte v14, v14

    .line 144
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 145
    .line 146
    .line 147
    move-wide/from16 v19, v6

    .line 148
    .line 149
    add-long v6, v4, v15

    .line 150
    .line 151
    ushr-int/lit8 v14, v13, 0x6

    .line 152
    .line 153
    and-int/lit8 v14, v14, 0x3f

    .line 154
    .line 155
    or-int/2addr v14, v3

    .line 156
    int-to-byte v14, v14

    .line 157
    invoke-static {v1, v11, v12, v14}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 158
    .line 159
    .line 160
    add-long v4, v4, v17

    .line 161
    .line 162
    and-int/lit8 v11, v13, 0x3f

    .line 163
    .line 164
    or-int/2addr v11, v3

    .line 165
    int-to-byte v11, v11

    .line 166
    invoke-static {v1, v6, v7, v11}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :goto_3
    const-wide/16 v6, 0x4

    .line 171
    .line 172
    sub-long v21, v19, v6

    .line 173
    .line 174
    cmp-long v14, v4, v21

    .line 175
    .line 176
    if-gtz v14, :cond_8

    .line 177
    .line 178
    add-int/lit8 v11, v2, 0x1

    .line 179
    .line 180
    if-eq v11, v8, :cond_7

    .line 181
    .line 182
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    if-eqz v12, :cond_6

    .line 191
    .line 192
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    add-long v12, v4, p3

    .line 197
    .line 198
    ushr-int/lit8 v14, v2, 0x12

    .line 199
    .line 200
    or-int/lit16 v14, v14, 0xf0

    .line 201
    .line 202
    int-to-byte v14, v14

    .line 203
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 204
    .line 205
    .line 206
    move-wide/from16 v21, v6

    .line 207
    .line 208
    add-long v6, v4, v15

    .line 209
    .line 210
    ushr-int/lit8 v14, v2, 0xc

    .line 211
    .line 212
    and-int/lit8 v14, v14, 0x3f

    .line 213
    .line 214
    or-int/2addr v14, v3

    .line 215
    int-to-byte v14, v14

    .line 216
    invoke-static {v1, v12, v13, v14}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 217
    .line 218
    .line 219
    add-long v12, v4, v17

    .line 220
    .line 221
    ushr-int/lit8 v14, v2, 0x6

    .line 222
    .line 223
    and-int/lit8 v14, v14, 0x3f

    .line 224
    .line 225
    or-int/2addr v14, v3

    .line 226
    int-to-byte v14, v14

    .line 227
    invoke-static {v1, v6, v7, v14}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 228
    .line 229
    .line 230
    add-long v4, v4, v21

    .line 231
    .line 232
    and-int/lit8 v2, v2, 0x3f

    .line 233
    .line 234
    or-int/2addr v2, v3

    .line 235
    int-to-byte v2, v2

    .line 236
    invoke-static {v1, v12, v13, v2}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 237
    .line 238
    .line 239
    move v2, v11

    .line 240
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 241
    .line 242
    move-wide/from16 v11, p3

    .line 243
    .line 244
    move-wide/from16 v6, v19

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_6
    move v2, v11

    .line 249
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/drive/zznj;

    .line 250
    .line 251
    add-int/lit8 v2, v2, -0x1

    .line 252
    .line 253
    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/drive/zznj;-><init>(II)V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :cond_8
    if-gt v12, v13, :cond_a

    .line 258
    .line 259
    if-gt v13, v11, :cond_a

    .line 260
    .line 261
    add-int/lit8 v1, v2, 0x1

    .line 262
    .line 263
    if-eq v1, v8, :cond_9

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_a

    .line 274
    .line 275
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/drive/zznj;

    .line 276
    .line 277
    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/drive/zznj;-><init>(II)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 282
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const/16 v2, 0x2e

    .line 286
    .line 287
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v0

    .line 310
    :cond_b
    long-to-int v0, v4

    .line 311
    return v0

    .line 312
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 313
    .line 314
    add-int/lit8 v8, v8, -0x1

    .line 315
    .line 316
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    add-int/2addr v2, v3

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const/16 v4, 0x25

    .line 324
    .line 325
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v1
.end method

.method public final b([BII)I
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    or-int v3, v1, v2

    .line 8
    .line 9
    array-length v4, v0

    .line 10
    sub-int/2addr v4, v2

    .line 11
    or-int/2addr v3, v4

    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x0

    .line 15
    if-ltz v3, :cond_10

    .line 16
    .line 17
    int-to-long v7, v1

    .line 18
    int-to-long v1, v2

    .line 19
    sub-long/2addr v1, v7

    .line 20
    long-to-int v1, v1

    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    const-wide/16 v9, 0x1

    .line 24
    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    move v2, v6

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v2, v6

    .line 30
    move-wide v11, v7

    .line 31
    :goto_0
    if-ge v2, v1, :cond_2

    .line 32
    .line 33
    add-long v13, v11, v9

    .line 34
    .line 35
    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-gez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    move-wide v11, v13

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v2, v1

    .line 47
    :goto_1
    sub-int/2addr v1, v2

    .line 48
    int-to-long v2, v2

    .line 49
    add-long/2addr v7, v2

    .line 50
    :goto_2
    move v2, v6

    .line 51
    :goto_3
    if-lez v1, :cond_4

    .line 52
    .line 53
    add-long v2, v7, v9

    .line 54
    .line 55
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ltz v7, :cond_3

    .line 60
    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    move-wide/from16 v17, v2

    .line 64
    .line 65
    move v2, v7

    .line 66
    move-wide/from16 v7, v17

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move-wide/from16 v17, v2

    .line 70
    .line 71
    move v2, v7

    .line 72
    move-wide/from16 v7, v17

    .line 73
    .line 74
    :cond_4
    if-nez v1, :cond_5

    .line 75
    .line 76
    return v6

    .line 77
    :cond_5
    add-int/lit8 v3, v1, -0x1

    .line 78
    .line 79
    const/16 v11, -0x20

    .line 80
    .line 81
    const/16 v12, -0x41

    .line 82
    .line 83
    if-ge v2, v11, :cond_8

    .line 84
    .line 85
    if-nez v3, :cond_6

    .line 86
    .line 87
    return v2

    .line 88
    :cond_6
    add-int/lit8 v1, v1, -0x2

    .line 89
    .line 90
    const/16 v3, -0x3e

    .line 91
    .line 92
    if-lt v2, v3, :cond_f

    .line 93
    .line 94
    add-long v2, v7, v9

    .line 95
    .line 96
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-le v7, v12, :cond_7

    .line 101
    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_7
    move-wide v7, v2

    .line 105
    move v13, v5

    .line 106
    move/from16 v16, v6

    .line 107
    .line 108
    move-wide/from16 p2, v9

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    const/16 v13, -0x10

    .line 112
    .line 113
    const-wide/16 v14, 0x2

    .line 114
    .line 115
    if-ge v2, v13, :cond_d

    .line 116
    .line 117
    if-ge v3, v5, :cond_9

    .line 118
    .line 119
    invoke-static {v7, v8, v0, v2, v3}, Lcom/google/android/gms/internal/drive/zznk;->c(J[BII)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    return v0

    .line 124
    :cond_9
    add-int/lit8 v1, v1, -0x3

    .line 125
    .line 126
    move v13, v5

    .line 127
    move/from16 v16, v6

    .line 128
    .line 129
    add-long v5, v7, v9

    .line 130
    .line 131
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-gt v3, v12, :cond_f

    .line 136
    .line 137
    move-wide/from16 p2, v9

    .line 138
    .line 139
    const/16 v9, -0x60

    .line 140
    .line 141
    if-ne v2, v11, :cond_a

    .line 142
    .line 143
    if-lt v3, v9, :cond_f

    .line 144
    .line 145
    :cond_a
    const/16 v10, -0x13

    .line 146
    .line 147
    if-ne v2, v10, :cond_b

    .line 148
    .line 149
    if-ge v3, v9, :cond_f

    .line 150
    .line 151
    :cond_b
    add-long/2addr v7, v14

    .line 152
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-le v2, v12, :cond_c

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_c
    :goto_4
    move-wide/from16 v9, p2

    .line 160
    .line 161
    move v5, v13

    .line 162
    move/from16 v6, v16

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_d
    move v13, v5

    .line 166
    move/from16 v16, v6

    .line 167
    .line 168
    move-wide/from16 p2, v9

    .line 169
    .line 170
    if-ge v3, v4, :cond_e

    .line 171
    .line 172
    invoke-static {v7, v8, v0, v2, v3}, Lcom/google/android/gms/internal/drive/zznk;->c(J[BII)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    return v0

    .line 177
    :cond_e
    add-int/lit8 v1, v1, -0x4

    .line 178
    .line 179
    add-long v9, v7, p2

    .line 180
    .line 181
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-gt v3, v12, :cond_f

    .line 186
    .line 187
    shl-int/lit8 v2, v2, 0x1c

    .line 188
    .line 189
    add-int/lit8 v3, v3, 0x70

    .line 190
    .line 191
    add-int/2addr v3, v2

    .line 192
    shr-int/lit8 v2, v3, 0x1e

    .line 193
    .line 194
    if-nez v2, :cond_f

    .line 195
    .line 196
    add-long/2addr v14, v7

    .line 197
    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-gt v2, v12, :cond_f

    .line 202
    .line 203
    const-wide/16 v2, 0x3

    .line 204
    .line 205
    add-long/2addr v7, v2

    .line 206
    invoke-static {v0, v14, v15}, Lcom/google/android/gms/internal/drive/zznd;->a([BJ)B

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-le v2, v12, :cond_c

    .line 211
    .line 212
    :cond_f
    :goto_5
    const/4 v0, -0x1

    .line 213
    return v0

    .line 214
    :cond_10
    move v13, v5

    .line 215
    move/from16 v16, v6

    .line 216
    .line 217
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 218
    .line 219
    array-length v0, v0

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    new-array v4, v4, [Ljava/lang/Object;

    .line 233
    .line 234
    aput-object v0, v4, v16

    .line 235
    .line 236
    const/4 v0, 0x1

    .line 237
    aput-object v1, v4, v0

    .line 238
    .line 239
    aput-object v2, v4, v13

    .line 240
    .line 241
    const-string v0, "Array length=%d, index=%d, limit=%d"

    .line 242
    .line 243
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v3
.end method
