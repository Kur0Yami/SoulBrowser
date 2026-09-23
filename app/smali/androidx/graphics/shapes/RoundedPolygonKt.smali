.class public final Landroidx/graphics/shapes/RoundedPolygonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "graphics-shapes_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 4 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,686:1\n1549#2:687\n1620#2,3:688\n67#3:691\n81#3:693\n22#4:692\n22#4:694\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n*L\n356#1:687\n356#1:688,3\n426#1:691\n425#1:693\n426#1:692\n425#1:694\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(IFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 1
    const-string v0, "rounding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    mul-int/lit8 v0, p0, 0x2

    .line 7
    .line 8
    new-array v0, v0, [F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-ge v1, p0, :cond_0

    .line 14
    .line 15
    sget v4, Landroidx/graphics/shapes/Utils;->b:F

    .line 16
    .line 17
    int-to-float v5, p0

    .line 18
    div-float/2addr v4, v5

    .line 19
    const/4 v5, 0x2

    .line 20
    int-to-float v6, v5

    .line 21
    mul-float/2addr v4, v6

    .line 22
    int-to-float v6, v1

    .line 23
    mul-float/2addr v4, v6

    .line 24
    invoke-static {p1, v4}, Landroidx/graphics/shapes/Utils;->e(FF)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    invoke-static {v3, v3}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {v6, v7, v3, v4}, Landroidx/graphics/shapes/PointKt;->g(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    add-int/lit8 v6, v2, 0x1

    .line 37
    .line 38
    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    aput v7, v0, v2

    .line 43
    .line 44
    add-int/2addr v2, v5

    .line 45
    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    aput v3, v0, v6

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0, p2, p3, v3, v3}, Landroidx/graphics/shapes/RoundedPolygonKt;->b([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static final b([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "vertices"

    .line 12
    .line 13
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "rounding"

    .line 17
    .line 18
    move-object/from16 v5, p1

    .line 19
    .line 20
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    array-length v4, v0

    .line 24
    const/4 v6, 0x6

    .line 25
    if-lt v4, v6, :cond_15

    .line 26
    .line 27
    array-length v4, v0

    .line 28
    const/4 v6, 0x2

    .line 29
    rem-int/2addr v4, v6

    .line 30
    const/4 v7, 0x1

    .line 31
    if-eq v4, v7, :cond_14

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    mul-int/2addr v4, v6

    .line 40
    array-length v8, v0

    .line 41
    if-ne v4, v8, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v1, "perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    array-length v8, v0

    .line 58
    div-int/2addr v8, v6

    .line 59
    new-instance v9, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    move v11, v10

    .line 66
    :goto_1
    if-ge v11, v8, :cond_4

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    check-cast v12, Landroidx/graphics/shapes/CornerRounding;

    .line 75
    .line 76
    if-nez v12, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object/from16 v20, v12

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_2
    move-object/from16 v20, v5

    .line 83
    .line 84
    :goto_3
    add-int v12, v11, v8

    .line 85
    .line 86
    sub-int/2addr v12, v7

    .line 87
    rem-int/2addr v12, v8

    .line 88
    mul-int/2addr v12, v6

    .line 89
    add-int/lit8 v21, v11, 0x1

    .line 90
    .line 91
    rem-int v13, v21, v8

    .line 92
    .line 93
    mul-int/2addr v13, v6

    .line 94
    move v14, v13

    .line 95
    new-instance v13, Landroidx/graphics/shapes/RoundedCorner;

    .line 96
    .line 97
    aget v15, v0, v12

    .line 98
    .line 99
    add-int/2addr v12, v7

    .line 100
    aget v12, v0, v12

    .line 101
    .line 102
    invoke-static {v15, v12}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 103
    .line 104
    .line 105
    move-result-wide v15

    .line 106
    mul-int/lit8 v11, v11, 0x2

    .line 107
    .line 108
    aget v12, v0, v11

    .line 109
    .line 110
    add-int/2addr v11, v7

    .line 111
    aget v11, v0, v11

    .line 112
    .line 113
    invoke-static {v12, v11}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 114
    .line 115
    .line 116
    move-result-wide v11

    .line 117
    aget v2, v0, v14

    .line 118
    .line 119
    add-int/2addr v14, v7

    .line 120
    aget v14, v0, v14

    .line 121
    .line 122
    invoke-static {v2, v14}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 123
    .line 124
    .line 125
    move-result-wide v18

    .line 126
    move-wide v14, v15

    .line 127
    move-wide/from16 v16, v11

    .line 128
    .line 129
    invoke-direct/range {v13 .. v20}, Landroidx/graphics/shapes/RoundedCorner;-><init>(JJJLandroidx/graphics/shapes/CornerRounding;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move/from16 v11, v21

    .line 136
    .line 137
    const/high16 v2, 0x3f800000    # 1.0f

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    invoke-static {v10, v8}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    .line 145
    .line 146
    const/16 v5, 0xa

    .line 147
    .line 148
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_7

    .line 164
    .line 165
    move-object v5, v1

    .line 166
    check-cast v5, Lkotlin/collections/IntIterator;

    .line 167
    .line 168
    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    check-cast v12, Landroidx/graphics/shapes/RoundedCorner;

    .line 177
    .line 178
    iget v12, v12, Landroidx/graphics/shapes/RoundedCorner;->h:F

    .line 179
    .line 180
    add-int/lit8 v13, v5, 0x1

    .line 181
    .line 182
    rem-int/2addr v13, v8

    .line 183
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    check-cast v14, Landroidx/graphics/shapes/RoundedCorner;

    .line 188
    .line 189
    iget v14, v14, Landroidx/graphics/shapes/RoundedCorner;->h:F

    .line 190
    .line 191
    add-float/2addr v12, v14

    .line 192
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    check-cast v14, Landroidx/graphics/shapes/RoundedCorner;

    .line 197
    .line 198
    invoke-virtual {v14}, Landroidx/graphics/shapes/RoundedCorner;->c()F

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    check-cast v15, Landroidx/graphics/shapes/RoundedCorner;

    .line 207
    .line 208
    invoke-virtual {v15}, Landroidx/graphics/shapes/RoundedCorner;->c()F

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    add-float/2addr v14, v15

    .line 213
    mul-int/2addr v5, v6

    .line 214
    aget v15, v0, v5

    .line 215
    .line 216
    add-int/2addr v5, v7

    .line 217
    aget v5, v0, v5

    .line 218
    .line 219
    mul-int/2addr v13, v6

    .line 220
    aget v16, v0, v13

    .line 221
    .line 222
    add-int/2addr v13, v7

    .line 223
    aget v13, v0, v13

    .line 224
    .line 225
    sub-float v15, v15, v16

    .line 226
    .line 227
    sub-float/2addr v5, v13

    .line 228
    sget v13, Landroidx/graphics/shapes/Utils;->b:F

    .line 229
    .line 230
    mul-float/2addr v15, v15

    .line 231
    mul-float/2addr v5, v5

    .line 232
    add-float/2addr v5, v15

    .line 233
    move/from16 p2, v12

    .line 234
    .line 235
    const/16 p1, 0x0

    .line 236
    .line 237
    float-to-double v11, v5

    .line 238
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 239
    .line 240
    .line 241
    move-result-wide v11

    .line 242
    double-to-float v5, v11

    .line 243
    cmpl-float v11, p2, v5

    .line 244
    .line 245
    if-lez v11, :cond_5

    .line 246
    .line 247
    div-float v5, v5, p2

    .line 248
    .line 249
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    invoke-static {v5, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    goto :goto_5

    .line 262
    :cond_5
    cmpl-float v11, v14, v5

    .line 263
    .line 264
    if-lez v11, :cond_6

    .line 265
    .line 266
    sub-float v5, v5, p2

    .line 267
    .line 268
    sub-float v14, v14, p2

    .line 269
    .line 270
    div-float/2addr v5, v14

    .line 271
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    goto :goto_5

    .line 280
    :cond_6
    invoke-static {v3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    :goto_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :cond_7
    const/16 p1, 0x0

    .line 290
    .line 291
    move v1, v10

    .line 292
    :goto_6
    if-ge v1, v8, :cond_e

    .line 293
    .line 294
    new-instance v3, Landroidx/collection/MutableFloatList;

    .line 295
    .line 296
    invoke-direct {v3, v6}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 297
    .line 298
    .line 299
    move v5, v10

    .line 300
    :goto_7
    if-ge v5, v6, :cond_8

    .line 301
    .line 302
    add-int v11, v1, v8

    .line 303
    .line 304
    sub-int/2addr v11, v7

    .line 305
    add-int/2addr v11, v5

    .line 306
    rem-int/2addr v11, v8

    .line 307
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    check-cast v11, Lkotlin/Pair;

    .line 312
    .line 313
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    check-cast v12, Ljava/lang/Number;

    .line 318
    .line 319
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 320
    .line 321
    .line 322
    move-result v12

    .line 323
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    check-cast v11, Ljava/lang/Number;

    .line 328
    .line 329
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    check-cast v13, Landroidx/graphics/shapes/RoundedCorner;

    .line 338
    .line 339
    iget v13, v13, Landroidx/graphics/shapes/RoundedCorner;->h:F

    .line 340
    .line 341
    mul-float/2addr v13, v12

    .line 342
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v12

    .line 346
    check-cast v12, Landroidx/graphics/shapes/RoundedCorner;

    .line 347
    .line 348
    invoke-virtual {v12}, Landroidx/graphics/shapes/RoundedCorner;->c()F

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v14

    .line 356
    check-cast v14, Landroidx/graphics/shapes/RoundedCorner;

    .line 357
    .line 358
    iget v14, v14, Landroidx/graphics/shapes/RoundedCorner;->h:F

    .line 359
    .line 360
    sub-float/2addr v12, v14

    .line 361
    mul-float/2addr v12, v11

    .line 362
    add-float/2addr v12, v13

    .line 363
    invoke-virtual {v3, v12}, Landroidx/collection/MutableFloatList;->c(F)V

    .line 364
    .line 365
    .line 366
    add-int/lit8 v5, v5, 0x1

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_8
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    check-cast v5, Landroidx/graphics/shapes/RoundedCorner;

    .line 374
    .line 375
    invoke-virtual {v3, v10}, Landroidx/collection/FloatList;->a(I)F

    .line 376
    .line 377
    .line 378
    move-result v11

    .line 379
    invoke-virtual {v3, v7}, Landroidx/collection/FloatList;->a(I)F

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    iget-wide v12, v5, Landroidx/graphics/shapes/RoundedCorner;->e:J

    .line 384
    .line 385
    iget-wide v14, v5, Landroidx/graphics/shapes/RoundedCorner;->d:J

    .line 386
    .line 387
    move/from16 v16, v10

    .line 388
    .line 389
    iget v10, v5, Landroidx/graphics/shapes/RoundedCorner;->f:F

    .line 390
    .line 391
    move/from16 v17, v7

    .line 392
    .line 393
    move/from16 v18, v8

    .line 394
    .line 395
    iget-wide v7, v5, Landroidx/graphics/shapes/RoundedCorner;->b:J

    .line 396
    .line 397
    move/from16 v19, v6

    .line 398
    .line 399
    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    move/from16 v20, v1

    .line 404
    .line 405
    iget v1, v5, Landroidx/graphics/shapes/RoundedCorner;->h:F

    .line 406
    .line 407
    const v21, 0x38d1b717    # 1.0E-4f

    .line 408
    .line 409
    .line 410
    cmpg-float v23, v1, v21

    .line 411
    .line 412
    if-ltz v23, :cond_9

    .line 413
    .line 414
    cmpg-float v23, v6, v21

    .line 415
    .line 416
    if-ltz v23, :cond_9

    .line 417
    .line 418
    cmpg-float v21, v10, v21

    .line 419
    .line 420
    if-gez v21, :cond_a

    .line 421
    .line 422
    :cond_9
    move-object/from16 p2, v2

    .line 423
    .line 424
    move-object/from16 v21, v4

    .line 425
    .line 426
    goto/16 :goto_d

    .line 427
    .line 428
    :cond_a
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    invoke-virtual {v5, v11}, Landroidx/graphics/shapes/RoundedCorner;->a(F)F

    .line 433
    .line 434
    .line 435
    move-result v24

    .line 436
    invoke-virtual {v5, v3}, Landroidx/graphics/shapes/RoundedCorner;->a(F)F

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    mul-float/2addr v10, v6

    .line 441
    div-float v35, v10, v1

    .line 442
    .line 443
    sget v1, Landroidx/graphics/shapes/Utils;->b:F

    .line 444
    .line 445
    mul-float v1, v35, v35

    .line 446
    .line 447
    mul-float v10, v6, v6

    .line 448
    .line 449
    add-float/2addr v10, v1

    .line 450
    float-to-double v10, v10

    .line 451
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 452
    .line 453
    .line 454
    move-result-wide v10

    .line 455
    double-to-float v1, v10

    .line 456
    invoke-static {v14, v15, v12, v13}, Landroidx/graphics/shapes/PointKt;->g(JJ)J

    .line 457
    .line 458
    .line 459
    move-result-wide v10

    .line 460
    move-object/from16 p2, v2

    .line 461
    .line 462
    const/high16 v2, 0x40000000    # 2.0f

    .line 463
    .line 464
    invoke-static {v10, v11, v2}, Landroidx/graphics/shapes/PointKt;->a(JF)J

    .line 465
    .line 466
    .line 467
    move-result-wide v10

    .line 468
    invoke-static {v10, v11}, Landroidx/graphics/shapes/PointKt;->c(J)J

    .line 469
    .line 470
    .line 471
    move-result-wide v10

    .line 472
    invoke-static {v10, v11, v1}, Landroidx/graphics/shapes/PointKt;->h(JF)J

    .line 473
    .line 474
    .line 475
    move-result-wide v1

    .line 476
    invoke-static {v7, v8, v1, v2}, Landroidx/graphics/shapes/PointKt;->g(JJ)J

    .line 477
    .line 478
    .line 479
    move-result-wide v1

    .line 480
    iput-wide v1, v5, Landroidx/graphics/shapes/RoundedCorner;->i:J

    .line 481
    .line 482
    invoke-static {v14, v15, v6}, Landroidx/graphics/shapes/PointKt;->h(JF)J

    .line 483
    .line 484
    .line 485
    move-result-wide v1

    .line 486
    invoke-static {v7, v8, v1, v2}, Landroidx/graphics/shapes/PointKt;->g(JJ)J

    .line 487
    .line 488
    .line 489
    move-result-wide v29

    .line 490
    invoke-static {v12, v13, v6}, Landroidx/graphics/shapes/PointKt;->h(JF)J

    .line 491
    .line 492
    .line 493
    move-result-wide v1

    .line 494
    invoke-static {v7, v8, v1, v2}, Landroidx/graphics/shapes/PointKt;->g(JJ)J

    .line 495
    .line 496
    .line 497
    move-result-wide v31

    .line 498
    iget-wide v1, v5, Landroidx/graphics/shapes/RoundedCorner;->b:J

    .line 499
    .line 500
    iget-wide v7, v5, Landroidx/graphics/shapes/RoundedCorner;->a:J

    .line 501
    .line 502
    iget-wide v10, v5, Landroidx/graphics/shapes/RoundedCorner;->i:J

    .line 503
    .line 504
    move-wide/from16 v25, v1

    .line 505
    .line 506
    move/from16 v23, v6

    .line 507
    .line 508
    move-wide/from16 v27, v7

    .line 509
    .line 510
    move-wide/from16 v33, v10

    .line 511
    .line 512
    invoke-static/range {v23 .. v35}, Landroidx/graphics/shapes/RoundedCorner;->b(FFJJJJJF)Landroidx/graphics/shapes/Cubic;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    iget-wide v6, v5, Landroidx/graphics/shapes/RoundedCorner;->b:J

    .line 517
    .line 518
    iget-wide v10, v5, Landroidx/graphics/shapes/RoundedCorner;->c:J

    .line 519
    .line 520
    iget-wide v12, v5, Landroidx/graphics/shapes/RoundedCorner;->i:J

    .line 521
    .line 522
    move-wide/from16 v24, v31

    .line 523
    .line 524
    move-wide/from16 v31, v29

    .line 525
    .line 526
    move-wide/from16 v29, v24

    .line 527
    .line 528
    move/from16 v24, v3

    .line 529
    .line 530
    move-wide/from16 v25, v6

    .line 531
    .line 532
    move-wide/from16 v27, v10

    .line 533
    .line 534
    move-wide/from16 v33, v12

    .line 535
    .line 536
    invoke-static/range {v23 .. v35}, Landroidx/graphics/shapes/RoundedCorner;->b(FFJJJJJF)Landroidx/graphics/shapes/Cubic;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 541
    .line 542
    .line 543
    move-result v23

    .line 544
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 545
    .line 546
    .line 547
    move-result v24

    .line 548
    iget-object v2, v2, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 549
    .line 550
    const/4 v3, 0x4

    .line 551
    aget v25, v2, v3

    .line 552
    .line 553
    const/4 v3, 0x5

    .line 554
    aget v26, v2, v3

    .line 555
    .line 556
    aget v27, v2, v19

    .line 557
    .line 558
    const/4 v3, 0x3

    .line 559
    aget v28, v2, v3

    .line 560
    .line 561
    aget v29, v2, v16

    .line 562
    .line 563
    aget v30, v2, v17

    .line 564
    .line 565
    invoke-static/range {v23 .. v30}, Landroidx/graphics/shapes/CubicKt;->a(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    iget-wide v6, v5, Landroidx/graphics/shapes/RoundedCorner;->i:J

    .line 570
    .line 571
    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    iget-wide v7, v5, Landroidx/graphics/shapes/RoundedCorner;->i:J

    .line 576
    .line 577
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    invoke-virtual {v1}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 582
    .line 583
    .line 584
    move-result v7

    .line 585
    invoke-virtual {v1}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 586
    .line 587
    .line 588
    move-result v8

    .line 589
    iget-object v10, v2, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 590
    .line 591
    aget v11, v10, v16

    .line 592
    .line 593
    aget v10, v10, v17

    .line 594
    .line 595
    sub-float v12, v7, v6

    .line 596
    .line 597
    sub-float v13, v8, v5

    .line 598
    .line 599
    invoke-static {v12, v13}, Landroidx/graphics/shapes/Utils;->b(FF)J

    .line 600
    .line 601
    .line 602
    move-result-wide v14

    .line 603
    sub-float v6, v11, v6

    .line 604
    .line 605
    sub-float v5, v10, v5

    .line 606
    .line 607
    move-object/from16 v21, v4

    .line 608
    .line 609
    invoke-static {v6, v5}, Landroidx/graphics/shapes/Utils;->b(FF)J

    .line 610
    .line 611
    .line 612
    move-result-wide v3

    .line 613
    move-object/from16 v32, v1

    .line 614
    .line 615
    invoke-static {v14, v15}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    neg-float v1, v1

    .line 620
    move-object/from16 v33, v2

    .line 621
    .line 622
    invoke-static {v14, v15}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 627
    .line 628
    .line 629
    move-result-wide v1

    .line 630
    move-wide/from16 v23, v1

    .line 631
    .line 632
    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    neg-float v1, v1

    .line 637
    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 642
    .line 643
    .line 644
    move-result-wide v1

    .line 645
    invoke-static/range {v23 .. v24}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 646
    .line 647
    .line 648
    move-result v25

    .line 649
    mul-float v25, v25, v6

    .line 650
    .line 651
    invoke-static/range {v23 .. v24}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    mul-float/2addr v6, v5

    .line 656
    add-float v6, v6, v25

    .line 657
    .line 658
    cmpl-float v5, v6, p1

    .line 659
    .line 660
    if-ltz v5, :cond_b

    .line 661
    .line 662
    move/from16 v5, v17

    .line 663
    .line 664
    goto :goto_8

    .line 665
    :cond_b
    move/from16 v5, v16

    .line 666
    .line 667
    :goto_8
    invoke-static {v14, v15, v3, v4}, Landroidx/graphics/shapes/PointKt;->b(JJ)F

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    const v4, 0x3f7fbe77    # 0.999f

    .line 672
    .line 673
    .line 674
    cmpl-float v4, v3, v4

    .line 675
    .line 676
    if-lez v4, :cond_c

    .line 677
    .line 678
    invoke-static {v7, v8, v11, v10}, Landroidx/graphics/shapes/Cubic$Companion;->a(FFFF)Landroidx/graphics/shapes/Cubic;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    :goto_9
    const/4 v2, 0x3

    .line 683
    goto :goto_b

    .line 684
    :cond_c
    mul-float/2addr v12, v12

    .line 685
    mul-float/2addr v13, v13

    .line 686
    add-float/2addr v13, v12

    .line 687
    float-to-double v12, v13

    .line 688
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 689
    .line 690
    .line 691
    move-result-wide v12

    .line 692
    double-to-float v4, v12

    .line 693
    const/high16 v6, 0x40800000    # 4.0f

    .line 694
    .line 695
    mul-float/2addr v4, v6

    .line 696
    const/high16 v6, 0x40400000    # 3.0f

    .line 697
    .line 698
    div-float/2addr v4, v6

    .line 699
    move/from16 v6, v19

    .line 700
    .line 701
    int-to-float v12, v6

    .line 702
    move/from16 v6, v17

    .line 703
    .line 704
    int-to-float v13, v6

    .line 705
    sub-float v6, v13, v3

    .line 706
    .line 707
    mul-float/2addr v12, v6

    .line 708
    float-to-double v14, v12

    .line 709
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    .line 710
    .line 711
    .line 712
    move-result-wide v14

    .line 713
    double-to-float v12, v14

    .line 714
    mul-float/2addr v3, v3

    .line 715
    sub-float/2addr v13, v3

    .line 716
    float-to-double v13, v13

    .line 717
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 718
    .line 719
    .line 720
    move-result-wide v13

    .line 721
    double-to-float v3, v13

    .line 722
    sub-float/2addr v12, v3

    .line 723
    mul-float/2addr v12, v4

    .line 724
    div-float/2addr v12, v6

    .line 725
    if-eqz v5, :cond_d

    .line 726
    .line 727
    const/high16 v3, 0x3f800000    # 1.0f

    .line 728
    .line 729
    goto :goto_a

    .line 730
    :cond_d
    const/high16 v3, -0x40800000    # -1.0f

    .line 731
    .line 732
    :goto_a
    mul-float/2addr v12, v3

    .line 733
    invoke-static/range {v23 .. v24}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    mul-float/2addr v3, v12

    .line 738
    add-float v25, v3, v7

    .line 739
    .line 740
    invoke-static/range {v23 .. v24}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    mul-float/2addr v3, v12

    .line 745
    add-float v26, v3, v8

    .line 746
    .line 747
    invoke-static {v1, v2}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    mul-float/2addr v3, v12

    .line 752
    sub-float v27, v11, v3

    .line 753
    .line 754
    invoke-static {v1, v2}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    mul-float/2addr v1, v12

    .line 759
    sub-float v28, v10, v1

    .line 760
    .line 761
    move/from16 v23, v7

    .line 762
    .line 763
    move/from16 v24, v8

    .line 764
    .line 765
    move/from16 v30, v10

    .line 766
    .line 767
    move/from16 v29, v11

    .line 768
    .line 769
    invoke-static/range {v23 .. v30}, Landroidx/graphics/shapes/CubicKt;->a(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    goto :goto_9

    .line 774
    :goto_b
    new-array v2, v2, [Landroidx/graphics/shapes/Cubic;

    .line 775
    .line 776
    aput-object v32, v2, v16

    .line 777
    .line 778
    const/16 v17, 0x1

    .line 779
    .line 780
    aput-object v1, v2, v17

    .line 781
    .line 782
    const/16 v19, 0x2

    .line 783
    .line 784
    aput-object v33, v2, v19

    .line 785
    .line 786
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    :goto_c
    move-object/from16 v2, v21

    .line 791
    .line 792
    goto :goto_e

    .line 793
    :goto_d
    iput-wide v7, v5, Landroidx/graphics/shapes/RoundedCorner;->i:J

    .line 794
    .line 795
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 800
    .line 801
    .line 802
    move-result v2

    .line 803
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    invoke-static {v1, v2, v3, v4}, Landroidx/graphics/shapes/Cubic$Companion;->a(FFFF)Landroidx/graphics/shapes/Cubic;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    goto :goto_c

    .line 820
    :goto_e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    add-int/lit8 v1, v20, 0x1

    .line 824
    .line 825
    move-object v4, v2

    .line 826
    move/from16 v10, v16

    .line 827
    .line 828
    move/from16 v8, v18

    .line 829
    .line 830
    const/4 v6, 0x2

    .line 831
    const/4 v7, 0x1

    .line 832
    move-object/from16 v2, p2

    .line 833
    .line 834
    goto/16 :goto_6

    .line 835
    .line 836
    :cond_e
    move-object v2, v4

    .line 837
    move/from16 v18, v8

    .line 838
    .line 839
    move/from16 v16, v10

    .line 840
    .line 841
    new-instance v1, Ljava/util/ArrayList;

    .line 842
    .line 843
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .line 845
    .line 846
    move/from16 v3, v16

    .line 847
    .line 848
    :goto_f
    if-ge v3, v8, :cond_10

    .line 849
    .line 850
    const/4 v6, 0x1

    .line 851
    invoke-static {v3, v8, v6, v8}, Landroid/support/v4/media/a;->B(IIII)I

    .line 852
    .line 853
    .line 854
    move-result v4

    .line 855
    add-int/lit8 v5, v3, 0x1

    .line 856
    .line 857
    rem-int v7, v5, v8

    .line 858
    .line 859
    mul-int/lit8 v10, v3, 0x2

    .line 860
    .line 861
    aget v11, v0, v10

    .line 862
    .line 863
    add-int/2addr v10, v6

    .line 864
    aget v10, v0, v10

    .line 865
    .line 866
    invoke-static {v11, v10}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 867
    .line 868
    .line 869
    move-result-wide v10

    .line 870
    const/16 v19, 0x2

    .line 871
    .line 872
    mul-int/lit8 v4, v4, 0x2

    .line 873
    .line 874
    aget v12, v0, v4

    .line 875
    .line 876
    add-int/2addr v4, v6

    .line 877
    aget v4, v0, v4

    .line 878
    .line 879
    invoke-static {v12, v4}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 880
    .line 881
    .line 882
    move-result-wide v12

    .line 883
    mul-int/lit8 v4, v7, 0x2

    .line 884
    .line 885
    aget v14, v0, v4

    .line 886
    .line 887
    add-int/2addr v4, v6

    .line 888
    aget v4, v0, v4

    .line 889
    .line 890
    invoke-static {v14, v4}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 891
    .line 892
    .line 893
    move-result-wide v14

    .line 894
    invoke-static {v10, v11, v12, v13}, Landroidx/graphics/shapes/PointKt;->f(JJ)J

    .line 895
    .line 896
    .line 897
    move-result-wide v12

    .line 898
    invoke-static {v14, v15, v10, v11}, Landroidx/graphics/shapes/PointKt;->f(JJ)J

    .line 899
    .line 900
    .line 901
    move-result-wide v14

    .line 902
    invoke-static {v12, v13}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 903
    .line 904
    .line 905
    move-result v4

    .line 906
    invoke-static {v14, v15}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 907
    .line 908
    .line 909
    move-result v6

    .line 910
    mul-float/2addr v6, v4

    .line 911
    invoke-static {v12, v13}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    invoke-static {v14, v15}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 916
    .line 917
    .line 918
    move-result v12

    .line 919
    mul-float/2addr v12, v4

    .line 920
    sub-float/2addr v6, v12

    .line 921
    cmpl-float v4, v6, p1

    .line 922
    .line 923
    if-lez v4, :cond_f

    .line 924
    .line 925
    const/16 v26, 0x1

    .line 926
    .line 927
    goto :goto_10

    .line 928
    :cond_f
    move/from16 v26, v16

    .line 929
    .line 930
    :goto_10
    new-instance v20, Landroidx/graphics/shapes/Feature$Corner;

    .line 931
    .line 932
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    move-object/from16 v21, v4

    .line 937
    .line 938
    check-cast v21, Ljava/util/List;

    .line 939
    .line 940
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v4

    .line 944
    check-cast v4, Landroidx/graphics/shapes/RoundedCorner;

    .line 945
    .line 946
    iget-wide v12, v4, Landroidx/graphics/shapes/RoundedCorner;->i:J

    .line 947
    .line 948
    move-wide/from16 v22, v10

    .line 949
    .line 950
    move-wide/from16 v24, v12

    .line 951
    .line 952
    invoke-direct/range {v20 .. v26}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;JJZ)V

    .line 953
    .line 954
    .line 955
    move-object/from16 v4, v20

    .line 956
    .line 957
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    new-instance v4, Landroidx/graphics/shapes/Feature$Edge;

    .line 961
    .line 962
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v6

    .line 966
    check-cast v6, Ljava/util/List;

    .line 967
    .line 968
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v6

    .line 972
    check-cast v6, Landroidx/graphics/shapes/Cubic;

    .line 973
    .line 974
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 975
    .line 976
    .line 977
    move-result v6

    .line 978
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    check-cast v3, Ljava/util/List;

    .line 983
    .line 984
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v3

    .line 988
    check-cast v3, Landroidx/graphics/shapes/Cubic;

    .line 989
    .line 990
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 991
    .line 992
    .line 993
    move-result v3

    .line 994
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v10

    .line 998
    check-cast v10, Ljava/util/List;

    .line 999
    .line 1000
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v10

    .line 1004
    check-cast v10, Landroidx/graphics/shapes/Cubic;

    .line 1005
    .line 1006
    iget-object v10, v10, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 1007
    .line 1008
    aget v10, v10, v16

    .line 1009
    .line 1010
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v7

    .line 1014
    check-cast v7, Ljava/util/List;

    .line 1015
    .line 1016
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v7

    .line 1020
    check-cast v7, Landroidx/graphics/shapes/Cubic;

    .line 1021
    .line 1022
    iget-object v7, v7, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 1023
    .line 1024
    const/16 v17, 0x1

    .line 1025
    .line 1026
    aget v7, v7, v17

    .line 1027
    .line 1028
    invoke-static {v6, v3, v10, v7}, Landroidx/graphics/shapes/Cubic$Companion;->a(FFFF)Landroidx/graphics/shapes/Cubic;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v3

    .line 1032
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v3

    .line 1036
    invoke-direct {v4, v3}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move v3, v5

    .line 1043
    goto/16 :goto_f

    .line 1044
    .line 1045
    :cond_10
    const/4 v2, 0x1

    .line 1046
    cmpg-float v3, p3, v2

    .line 1047
    .line 1048
    if-nez v3, :cond_11

    .line 1049
    .line 1050
    goto :goto_11

    .line 1051
    :cond_11
    cmpg-float v2, p4, v2

    .line 1052
    .line 1053
    if-nez v2, :cond_13

    .line 1054
    .line 1055
    :goto_11
    move/from16 v2, p1

    .line 1056
    .line 1057
    move v11, v2

    .line 1058
    move/from16 v10, v16

    .line 1059
    .line 1060
    :goto_12
    array-length v3, v0

    .line 1061
    if-ge v10, v3, :cond_12

    .line 1062
    .line 1063
    add-int/lit8 v3, v10, 0x1

    .line 1064
    .line 1065
    aget v4, v0, v10

    .line 1066
    .line 1067
    add-float/2addr v11, v4

    .line 1068
    add-int/lit8 v10, v10, 0x2

    .line 1069
    .line 1070
    aget v3, v0, v3

    .line 1071
    .line 1072
    add-float/2addr v2, v3

    .line 1073
    goto :goto_12

    .line 1074
    :cond_12
    array-length v3, v0

    .line 1075
    int-to-float v3, v3

    .line 1076
    div-float/2addr v11, v3

    .line 1077
    const/4 v6, 0x2

    .line 1078
    int-to-float v3, v6

    .line 1079
    div-float/2addr v11, v3

    .line 1080
    array-length v0, v0

    .line 1081
    int-to-float v0, v0

    .line 1082
    div-float/2addr v2, v0

    .line 1083
    div-float/2addr v2, v3

    .line 1084
    invoke-static {v11, v2}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v2

    .line 1088
    goto :goto_13

    .line 1089
    :cond_13
    invoke-static/range {p3 .. p4}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 1090
    .line 1091
    .line 1092
    move-result-wide v2

    .line 1093
    :goto_13
    const/16 v0, 0x20

    .line 1094
    .line 1095
    shr-long v4, v2, v0

    .line 1096
    .line 1097
    long-to-int v0, v4

    .line 1098
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1099
    .line 1100
    .line 1101
    move-result v0

    .line 1102
    const-wide v4, 0xffffffffL

    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    and-long/2addr v2, v4

    .line 1108
    long-to-int v2, v2

    .line 1109
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1110
    .line 1111
    .line 1112
    move-result v2

    .line 1113
    new-instance v3, Landroidx/graphics/shapes/RoundedPolygon;

    .line 1114
    .line 1115
    invoke-direct {v3, v1, v0, v2}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;FF)V

    .line 1116
    .line 1117
    .line 1118
    return-object v3

    .line 1119
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1120
    .line 1121
    const-string v1, "The vertices array should have even size"

    .line 1122
    .line 1123
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    throw v0

    .line 1127
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1128
    .line 1129
    const-string v1, "Polygons must have at least 3 vertices"

    .line 1130
    .line 1131
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    throw v0
.end method
