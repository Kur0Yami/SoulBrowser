.class public Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/EditDistance<",
        "Lorg/apache/commons/text/similarity/LevenshteinResults;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    new-instance v2, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v2, v1, v5, v5}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    if-nez v1, :cond_1

    .line 49
    .line 50
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    .line 51
    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v0, v1, v5, v2, v5}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_1
    const/4 v5, 0x1

    .line 65
    if-le v6, v1, :cond_2

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    move-object v6, v3

    .line 72
    move-object v3, v2

    .line 73
    move-object v2, v6

    .line 74
    move v6, v1

    .line 75
    move v1, v0

    .line 76
    move v0, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move v0, v4

    .line 79
    :goto_0
    add-int/lit8 v7, v6, 0x1

    .line 80
    .line 81
    new-array v8, v7, [I

    .line 82
    .line 83
    new-array v9, v7, [I

    .line 84
    .line 85
    add-int/lit8 v10, v1, 0x1

    .line 86
    .line 87
    const/4 v11, 0x2

    .line 88
    new-array v11, v11, [I

    .line 89
    .line 90
    aput v7, v11, v5

    .line 91
    .line 92
    aput v10, v11, v4

    .line 93
    .line 94
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 95
    .line 96
    invoke-static {v7, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, [[I

    .line 101
    .line 102
    move v10, v4

    .line 103
    :goto_1
    if-gt v10, v6, :cond_3

    .line 104
    .line 105
    aget-object v11, v7, v4

    .line 106
    .line 107
    aput v10, v11, v10

    .line 108
    .line 109
    add-int/lit8 v10, v10, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    move v10, v4

    .line 113
    :goto_2
    if-gt v10, v1, :cond_4

    .line 114
    .line 115
    aget-object v11, v7, v10

    .line 116
    .line 117
    aput v10, v11, v4

    .line 118
    .line 119
    add-int/lit8 v10, v10, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    move v10, v4

    .line 123
    :goto_3
    if-gt v10, v6, :cond_5

    .line 124
    .line 125
    aput v10, v8, v10

    .line 126
    .line 127
    add-int/lit8 v10, v10, 0x1

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move-object v10, v9

    .line 131
    move-object v9, v8

    .line 132
    move-object v8, v10

    .line 133
    move v10, v5

    .line 134
    :goto_4
    if-gt v10, v1, :cond_7

    .line 135
    .line 136
    add-int/lit8 v11, v10, -0x1

    .line 137
    .line 138
    invoke-virtual {v3, v11}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    aput v10, v8, v4

    .line 143
    .line 144
    move v12, v5

    .line 145
    :goto_5
    if-gt v12, v6, :cond_6

    .line 146
    .line 147
    add-int/lit8 v13, v12, -0x1

    .line 148
    .line 149
    invoke-virtual {v2, v13}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    xor-int/2addr v14, v5

    .line 158
    aget v15, v8, v13

    .line 159
    .line 160
    add-int/2addr v15, v5

    .line 161
    aget v16, v9, v12

    .line 162
    .line 163
    add-int/lit8 v4, v16, 0x1

    .line 164
    .line 165
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    aget v13, v9, v13

    .line 170
    .line 171
    add-int/2addr v13, v14

    .line 172
    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    aput v4, v8, v12

    .line 177
    .line 178
    aget-object v13, v7, v10

    .line 179
    .line 180
    aput v4, v13, v12

    .line 181
    .line 182
    add-int/lit8 v12, v12, 0x1

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    goto :goto_5

    .line 186
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 187
    .line 188
    move-object v4, v9

    .line 189
    move-object v9, v8

    .line 190
    move-object v8, v4

    .line 191
    const/4 v4, 0x0

    .line 192
    goto :goto_4

    .line 193
    :cond_7
    invoke-interface {v3}, Lorg/apache/commons/text/similarity/SimilarityInput;->length()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-interface {v2}, Lorg/apache/commons/text/similarity/SimilarityInput;->length()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    const/4 v6, 0x0

    .line 202
    const/4 v8, 0x0

    .line 203
    const/4 v9, 0x0

    .line 204
    :cond_8
    :goto_6
    if-ltz v1, :cond_16

    .line 205
    .line 206
    if-ltz v4, :cond_16

    .line 207
    .line 208
    const/4 v10, -0x1

    .line 209
    if-nez v4, :cond_9

    .line 210
    .line 211
    move v11, v10

    .line 212
    goto :goto_7

    .line 213
    :cond_9
    aget-object v11, v7, v1

    .line 214
    .line 215
    add-int/lit8 v12, v4, -0x1

    .line 216
    .line 217
    aget v11, v11, v12

    .line 218
    .line 219
    :goto_7
    if-nez v1, :cond_a

    .line 220
    .line 221
    move v12, v10

    .line 222
    goto :goto_8

    .line 223
    :cond_a
    add-int/lit8 v12, v1, -0x1

    .line 224
    .line 225
    aget-object v12, v7, v12

    .line 226
    .line 227
    aget v12, v12, v4

    .line 228
    .line 229
    :goto_8
    if-lez v1, :cond_b

    .line 230
    .line 231
    if-lez v4, :cond_b

    .line 232
    .line 233
    add-int/lit8 v13, v1, -0x1

    .line 234
    .line 235
    aget-object v13, v7, v13

    .line 236
    .line 237
    add-int/lit8 v14, v4, -0x1

    .line 238
    .line 239
    aget v13, v13, v14

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_b
    move v13, v10

    .line 243
    :goto_9
    if-ne v11, v10, :cond_c

    .line 244
    .line 245
    if-ne v12, v10, :cond_c

    .line 246
    .line 247
    if-ne v13, v10, :cond_c

    .line 248
    .line 249
    goto :goto_e

    .line 250
    :cond_c
    aget-object v14, v7, v1

    .line 251
    .line 252
    aget v14, v14, v4

    .line 253
    .line 254
    if-lez v4, :cond_d

    .line 255
    .line 256
    if-lez v1, :cond_d

    .line 257
    .line 258
    add-int/lit8 v15, v4, -0x1

    .line 259
    .line 260
    invoke-interface {v2, v15}, Lorg/apache/commons/text/similarity/SimilarityInput;->a(I)Ljava/lang/Character;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    add-int/lit8 v5, v1, -0x1

    .line 265
    .line 266
    invoke-interface {v3, v5}, Lorg/apache/commons/text/similarity/SimilarityInput;->a(I)Ljava/lang/Character;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_d

    .line 275
    .line 276
    :goto_a
    add-int/lit8 v4, v4, -0x1

    .line 277
    .line 278
    add-int/lit8 v1, v1, -0x1

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_d
    add-int/lit8 v5, v14, -0x1

    .line 282
    .line 283
    const/4 v15, 0x1

    .line 284
    if-ne v5, v11, :cond_e

    .line 285
    .line 286
    if-gt v14, v13, :cond_e

    .line 287
    .line 288
    if-le v14, v12, :cond_f

    .line 289
    .line 290
    :cond_e
    if-ne v13, v10, :cond_12

    .line 291
    .line 292
    if-ne v12, v10, :cond_12

    .line 293
    .line 294
    :cond_f
    add-int/lit8 v4, v4, -0x1

    .line 295
    .line 296
    if-eqz v0, :cond_11

    .line 297
    .line 298
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 299
    .line 300
    const/4 v5, 0x0

    .line 301
    goto :goto_d

    .line 302
    :cond_11
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 303
    .line 304
    move v5, v15

    .line 305
    :goto_c
    const/4 v15, 0x0

    .line 306
    goto :goto_d

    .line 307
    :cond_12
    if-ne v5, v12, :cond_13

    .line 308
    .line 309
    if-gt v14, v13, :cond_13

    .line 310
    .line 311
    if-le v14, v11, :cond_14

    .line 312
    .line 313
    :cond_13
    if-ne v13, v10, :cond_15

    .line 314
    .line 315
    if-ne v11, v10, :cond_15

    .line 316
    .line 317
    :cond_14
    add-int/lit8 v1, v1, -0x1

    .line 318
    .line 319
    if-eqz v0, :cond_10

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_15
    const/4 v5, 0x0

    .line 323
    goto :goto_c

    .line 324
    :goto_d
    if-nez v15, :cond_8

    .line 325
    .line 326
    if-nez v5, :cond_8

    .line 327
    .line 328
    add-int/lit8 v9, v9, 0x1

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_16
    :goto_e
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    .line 332
    .line 333
    add-int v1, v8, v6

    .line 334
    .line 335
    add-int/2addr v1, v9

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 353
    .line 354
    .line 355
    return-object v0
.end method
