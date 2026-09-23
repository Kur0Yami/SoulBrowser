.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->c:I

    .line 14
    .line 15
    const/16 v1, 0x3100

    .line 16
    .line 17
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->d:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->e:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->f:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    sget-object v2, Landroidx/palette/graphics/Palette;->f:Landroidx/palette/graphics/Palette$Filter;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->a:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    sget-object p1, Landroidx/palette/graphics/Target;->d:Landroidx/palette/graphics/Target;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    sget-object p1, Landroidx/palette/graphics/Target;->e:Landroidx/palette/graphics/Target;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    sget-object p1, Landroidx/palette/graphics/Target;->f:Landroidx/palette/graphics/Target;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    sget-object p1, Landroidx/palette/graphics/Target;->g:Landroidx/palette/graphics/Target;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    sget-object p1, Landroidx/palette/graphics/Target;->h:Landroidx/palette/graphics/Target;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    sget-object p1, Landroidx/palette/graphics/Target;->i:Landroidx/palette/graphics/Target;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v0, "Bitmap is not valid"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method


# virtual methods
.method public final a()Landroidx/palette/graphics/Palette;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/palette/graphics/Palette$Builder;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 8
    .line 9
    iget v4, v0, Landroidx/palette/graphics/Palette$Builder;->d:I

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    mul-int/2addr v6, v5

    .line 22
    if-le v6, v4, :cond_1

    .line 23
    .line 24
    int-to-double v2, v4

    .line 25
    int-to-double v4, v6

    .line 26
    div-double/2addr v2, v4

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v4, v0, Landroidx/palette/graphics/Palette$Builder;->e:I

    .line 33
    .line 34
    if-lez v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-le v5, v4, :cond_1

    .line 49
    .line 50
    int-to-double v2, v4

    .line 51
    int-to-double v4, v5

    .line 52
    div-double/2addr v2, v4

    .line 53
    :cond_1
    :goto_0
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    cmpg-double v4, v2, v4

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    if-gtz v4, :cond_2

    .line 59
    .line 60
    move-object v6, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    int-to-double v6, v4

    .line 67
    mul-double/2addr v6, v2

    .line 68
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    double-to-int v4, v6

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    int-to-double v6, v6

    .line 78
    mul-double/2addr v6, v2

    .line 79
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    double-to-int v2, v2

    .line 84
    invoke-static {v1, v4, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v6, v2

    .line 89
    :goto_1
    new-instance v2, Landroidx/palette/graphics/ColorCutQuantizer;

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    mul-int v3, v9, v13

    .line 100
    .line 101
    new-array v7, v3, [I

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v8, 0x0

    .line 106
    move v12, v9

    .line 107
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 108
    .line 109
    .line 110
    iget v3, v0, Landroidx/palette/graphics/Palette$Builder;->c:I

    .line 111
    .line 112
    iget-object v4, v0, Landroidx/palette/graphics/Palette$Builder;->f:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_3

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    new-array v8, v8, [Landroidx/palette/graphics/Palette$Filter;

    .line 127
    .line 128
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, [Landroidx/palette/graphics/Palette$Filter;

    .line 133
    .line 134
    :goto_2
    invoke-direct {v2, v7, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$Filter;)V

    .line 135
    .line 136
    .line 137
    if-eq v6, v1, :cond_4

    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    .line 141
    .line 142
    :cond_4
    new-instance v1, Landroidx/palette/graphics/Palette;

    .line 143
    .line 144
    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->b:Ljava/util/ArrayList;

    .line 145
    .line 146
    iget-object v2, v2, Landroidx/palette/graphics/ColorCutQuantizer;->c:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v1, v3, v2}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    move v4, v5

    .line 156
    :goto_3
    iget-object v6, v1, Landroidx/palette/graphics/Palette;->d:Landroid/util/SparseBooleanArray;

    .line 157
    .line 158
    if-ge v4, v2, :cond_12

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, Landroidx/palette/graphics/Target;

    .line 165
    .line 166
    iget-object v8, v7, Landroidx/palette/graphics/Target;->c:[F

    .line 167
    .line 168
    iget-object v10, v7, Landroidx/palette/graphics/Target;->a:[F

    .line 169
    .line 170
    array-length v11, v8

    .line 171
    const/4 v12, 0x0

    .line 172
    move v13, v5

    .line 173
    move v14, v12

    .line 174
    :goto_4
    if-ge v13, v11, :cond_6

    .line 175
    .line 176
    aget v15, v8, v13

    .line 177
    .line 178
    cmpl-float v16, v15, v12

    .line 179
    .line 180
    if-lez v16, :cond_5

    .line 181
    .line 182
    add-float/2addr v14, v15

    .line 183
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    cmpl-float v11, v14, v12

    .line 187
    .line 188
    if-eqz v11, :cond_8

    .line 189
    .line 190
    array-length v11, v8

    .line 191
    move v13, v5

    .line 192
    :goto_5
    if-ge v13, v11, :cond_8

    .line 193
    .line 194
    aget v15, v8, v13

    .line 195
    .line 196
    cmpl-float v16, v15, v12

    .line 197
    .line 198
    if-lez v16, :cond_7

    .line 199
    .line 200
    div-float/2addr v15, v14

    .line 201
    aput v15, v8, v13

    .line 202
    .line 203
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_8
    iget-object v8, v1, Landroidx/palette/graphics/Palette;->a:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    move v13, v5

    .line 213
    move/from16 v16, v13

    .line 214
    .line 215
    move v15, v12

    .line 216
    const/4 v14, 0x0

    .line 217
    :goto_6
    const/4 v5, 0x1

    .line 218
    if-ge v13, v11, :cond_10

    .line 219
    .line 220
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v17

    .line 224
    move-object/from16 v9, v17

    .line 225
    .line 226
    check-cast v9, Landroidx/palette/graphics/Palette$Swatch;

    .line 227
    .line 228
    invoke-virtual {v9}, Landroidx/palette/graphics/Palette$Swatch;->b()[F

    .line 229
    .line 230
    .line 231
    move-result-object v17

    .line 232
    aget v18, v17, v5

    .line 233
    .line 234
    move/from16 v19, v12

    .line 235
    .line 236
    iget-object v12, v7, Landroidx/palette/graphics/Target;->b:[F

    .line 237
    .line 238
    aget v20, v10, v16

    .line 239
    .line 240
    cmpl-float v20, v18, v20

    .line 241
    .line 242
    if-ltz v20, :cond_e

    .line 243
    .line 244
    const/16 v20, 0x2

    .line 245
    .line 246
    aget v21, v10, v20

    .line 247
    .line 248
    cmpg-float v18, v18, v21

    .line 249
    .line 250
    if-gtz v18, :cond_e

    .line 251
    .line 252
    aget v17, v17, v20

    .line 253
    .line 254
    aget v18, v12, v16

    .line 255
    .line 256
    cmpl-float v18, v17, v18

    .line 257
    .line 258
    if-ltz v18, :cond_e

    .line 259
    .line 260
    aget v18, v12, v20

    .line 261
    .line 262
    cmpg-float v17, v17, v18

    .line 263
    .line 264
    if-gtz v17, :cond_e

    .line 265
    .line 266
    move/from16 v17, v5

    .line 267
    .line 268
    iget v5, v9, Landroidx/palette/graphics/Palette$Swatch;->d:I

    .line 269
    .line 270
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-nez v5, :cond_e

    .line 275
    .line 276
    invoke-virtual {v9}, Landroidx/palette/graphics/Palette$Swatch;->b()[F

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    iget-object v0, v1, Landroidx/palette/graphics/Palette;->e:Landroidx/palette/graphics/Palette$Swatch;

    .line 281
    .line 282
    if-eqz v0, :cond_9

    .line 283
    .line 284
    iget v0, v0, Landroidx/palette/graphics/Palette$Swatch;->e:I

    .line 285
    .line 286
    :goto_7
    move/from16 v18, v2

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_9
    move/from16 v0, v17

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :goto_8
    iget-object v2, v7, Landroidx/palette/graphics/Target;->c:[F

    .line 293
    .line 294
    aget v21, v2, v16

    .line 295
    .line 296
    cmpl-float v22, v21, v19

    .line 297
    .line 298
    const/high16 v23, 0x3f800000    # 1.0f

    .line 299
    .line 300
    if-lez v22, :cond_a

    .line 301
    .line 302
    aget v22, v5, v17

    .line 303
    .line 304
    aget v24, v10, v17

    .line 305
    .line 306
    sub-float v22, v22, v24

    .line 307
    .line 308
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    .line 309
    .line 310
    .line 311
    move-result v22

    .line 312
    sub-float v22, v23, v22

    .line 313
    .line 314
    mul-float v22, v22, v21

    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_a
    move/from16 v22, v19

    .line 318
    .line 319
    :goto_9
    aget v21, v2, v17

    .line 320
    .line 321
    cmpl-float v24, v21, v19

    .line 322
    .line 323
    if-lez v24, :cond_b

    .line 324
    .line 325
    aget v5, v5, v20

    .line 326
    .line 327
    aget v12, v12, v17

    .line 328
    .line 329
    sub-float/2addr v5, v12

    .line 330
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    sub-float v23, v23, v5

    .line 335
    .line 336
    mul-float v23, v23, v21

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_b
    move/from16 v23, v19

    .line 340
    .line 341
    :goto_a
    aget v2, v2, v20

    .line 342
    .line 343
    cmpl-float v5, v2, v19

    .line 344
    .line 345
    if-lez v5, :cond_c

    .line 346
    .line 347
    iget v5, v9, Landroidx/palette/graphics/Palette$Swatch;->e:I

    .line 348
    .line 349
    int-to-float v5, v5

    .line 350
    int-to-float v0, v0

    .line 351
    div-float/2addr v5, v0

    .line 352
    mul-float/2addr v5, v2

    .line 353
    goto :goto_b

    .line 354
    :cond_c
    move/from16 v5, v19

    .line 355
    .line 356
    :goto_b
    add-float v22, v22, v23

    .line 357
    .line 358
    add-float v22, v22, v5

    .line 359
    .line 360
    if-eqz v14, :cond_d

    .line 361
    .line 362
    cmpl-float v0, v22, v15

    .line 363
    .line 364
    if-lez v0, :cond_f

    .line 365
    .line 366
    :cond_d
    move-object v14, v9

    .line 367
    move/from16 v15, v22

    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_e
    move/from16 v18, v2

    .line 371
    .line 372
    :cond_f
    :goto_c
    add-int/lit8 v13, v13, 0x1

    .line 373
    .line 374
    move-object/from16 v0, p0

    .line 375
    .line 376
    move/from16 v2, v18

    .line 377
    .line 378
    move/from16 v12, v19

    .line 379
    .line 380
    goto/16 :goto_6

    .line 381
    .line 382
    :cond_10
    move/from16 v18, v2

    .line 383
    .line 384
    move/from16 v17, v5

    .line 385
    .line 386
    if-eqz v14, :cond_11

    .line 387
    .line 388
    iget v0, v14, Landroidx/palette/graphics/Palette$Swatch;->d:I

    .line 389
    .line 390
    move/from16 v2, v17

    .line 391
    .line 392
    invoke-virtual {v6, v0, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 393
    .line 394
    .line 395
    :cond_11
    iget-object v0, v1, Landroidx/palette/graphics/Palette;->c:Landroidx/collection/ArrayMap;

    .line 396
    .line 397
    invoke-virtual {v0, v7, v14}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    add-int/lit8 v4, v4, 0x1

    .line 401
    .line 402
    move-object/from16 v0, p0

    .line 403
    .line 404
    move/from16 v5, v16

    .line 405
    .line 406
    move/from16 v2, v18

    .line 407
    .line 408
    goto/16 :goto_3

    .line 409
    .line 410
    :cond_12
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 411
    .line 412
    .line 413
    return-object v1

    .line 414
    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 417
    .line 418
    .line 419
    throw v0
.end method
