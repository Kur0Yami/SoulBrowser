.class final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Comparator;


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:Ljava/util/ArrayList;

.field public final d:[Landroidx/palette/graphics/Palette$Filter;

.field public final e:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->f:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([II[Landroidx/palette/graphics/Palette$Filter;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [F

    .line 12
    .line 13
    iput-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->e:[F

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    iput-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->d:[Landroidx/palette/graphics/Palette$Filter;

    .line 18
    .line 19
    const v3, 0x8000

    .line 20
    .line 21
    .line 22
    new-array v4, v3, [I

    .line 23
    .line 24
    iput-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->b:[I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    move v6, v5

    .line 28
    :goto_0
    array-length v7, v1

    .line 29
    const/16 v8, 0x8

    .line 30
    .line 31
    const/4 v9, 0x5

    .line 32
    const/4 v10, 0x1

    .line 33
    if-ge v6, v7, :cond_0

    .line 34
    .line 35
    aget v7, v1, v6

    .line 36
    .line 37
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    invoke-static {v11, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    invoke-static {v12, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-static {v7, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    shl-int/lit8 v8, v11, 0xa

    .line 62
    .line 63
    shl-int/lit8 v9, v12, 0x5

    .line 64
    .line 65
    or-int/2addr v8, v9

    .line 66
    or-int/2addr v7, v8

    .line 67
    aput v7, v1, v6

    .line 68
    .line 69
    aget v8, v4, v7

    .line 70
    .line 71
    add-int/2addr v8, v10

    .line 72
    aput v8, v4, v7

    .line 73
    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v1, v5

    .line 78
    move v6, v1

    .line 79
    :goto_1
    if-ge v1, v3, :cond_4

    .line 80
    .line 81
    aget v7, v4, v1

    .line 82
    .line 83
    if-lez v7, :cond_2

    .line 84
    .line 85
    shr-int/lit8 v7, v1, 0xa

    .line 86
    .line 87
    and-int/lit8 v7, v7, 0x1f

    .line 88
    .line 89
    shr-int/lit8 v11, v1, 0x5

    .line 90
    .line 91
    and-int/lit8 v11, v11, 0x1f

    .line 92
    .line 93
    and-int/lit8 v12, v1, 0x1f

    .line 94
    .line 95
    invoke-static {v7, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v11, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-static {v12, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    invoke-static {v7, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    iget-object v11, v0, Landroidx/palette/graphics/ColorCutQuantizer;->e:[F

    .line 112
    .line 113
    sget-object v12, Landroidx/core/graphics/ColorUtils;->a:Ljava/lang/ThreadLocal;

    .line 114
    .line 115
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-static {v12, v13, v7, v11}, Landroidx/core/graphics/ColorUtils;->b(III[F)V

    .line 128
    .line 129
    .line 130
    iget-object v7, v0, Landroidx/palette/graphics/ColorCutQuantizer;->d:[Landroidx/palette/graphics/Palette$Filter;

    .line 131
    .line 132
    if-eqz v7, :cond_2

    .line 133
    .line 134
    array-length v12, v7

    .line 135
    if-lez v12, :cond_2

    .line 136
    .line 137
    array-length v12, v7

    .line 138
    move v13, v5

    .line 139
    :goto_2
    if-ge v13, v12, :cond_2

    .line 140
    .line 141
    aget-object v14, v7, v13

    .line 142
    .line 143
    invoke-interface {v14, v11}, Landroidx/palette/graphics/Palette$Filter;->a([F)Z

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-nez v14, :cond_1

    .line 148
    .line 149
    aput v5, v4, v1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    :goto_3
    aget v7, v4, v1

    .line 156
    .line 157
    if-lez v7, :cond_3

    .line 158
    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 160
    .line 161
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    new-array v1, v6, [I

    .line 165
    .line 166
    iput-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->a:[I

    .line 167
    .line 168
    move v7, v5

    .line 169
    move v11, v7

    .line 170
    :goto_4
    if-ge v7, v3, :cond_6

    .line 171
    .line 172
    aget v12, v4, v7

    .line 173
    .line 174
    if-lez v12, :cond_5

    .line 175
    .line 176
    add-int/lit8 v12, v11, 0x1

    .line 177
    .line 178
    aput v7, v1, v11

    .line 179
    .line 180
    move v11, v12

    .line 181
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_6
    if-gt v6, v2, :cond_8

    .line 185
    .line 186
    new-instance v2, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->c:Ljava/util/ArrayList;

    .line 192
    .line 193
    :goto_5
    if-ge v5, v6, :cond_7

    .line 194
    .line 195
    aget v2, v1, v5

    .line 196
    .line 197
    iget-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->c:Ljava/util/ArrayList;

    .line 198
    .line 199
    new-instance v7, Landroidx/palette/graphics/Palette$Swatch;

    .line 200
    .line 201
    shr-int/lit8 v10, v2, 0xa

    .line 202
    .line 203
    and-int/lit8 v10, v10, 0x1f

    .line 204
    .line 205
    shr-int/lit8 v11, v2, 0x5

    .line 206
    .line 207
    and-int/lit8 v11, v11, 0x1f

    .line 208
    .line 209
    and-int/lit8 v12, v2, 0x1f

    .line 210
    .line 211
    invoke-static {v10, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    invoke-static {v11, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    invoke-static {v12, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    aget v2, v4, v2

    .line 228
    .line 229
    invoke-direct {v7, v10, v2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_7
    return-void

    .line 239
    :cond_8
    new-instance v1, Ljava/util/PriorityQueue;

    .line 240
    .line 241
    sget-object v3, Landroidx/palette/graphics/ColorCutQuantizer;->f:Ljava/util/Comparator;

    .line 242
    .line 243
    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 247
    .line 248
    iget-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->a:[I

    .line 249
    .line 250
    array-length v4, v4

    .line 251
    sub-int/2addr v4, v10

    .line 252
    invoke-direct {v3, v0, v5, v4}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    :goto_6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-ge v3, v2, :cond_e

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 269
    .line 270
    if-eqz v3, :cond_e

    .line 271
    .line 272
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 273
    .line 274
    add-int/lit8 v6, v4, 0x1

    .line 275
    .line 276
    iget v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a:I

    .line 277
    .line 278
    sub-int/2addr v6, v7

    .line 279
    if-le v6, v10, :cond_e

    .line 280
    .line 281
    iget-object v6, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->j:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 282
    .line 283
    add-int/lit8 v11, v4, 0x1

    .line 284
    .line 285
    sub-int/2addr v11, v7

    .line 286
    if-le v11, v10, :cond_d

    .line 287
    .line 288
    iget v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->e:I

    .line 289
    .line 290
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->d:I

    .line 291
    .line 292
    sub-int/2addr v11, v12

    .line 293
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->g:I

    .line 294
    .line 295
    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->f:I

    .line 296
    .line 297
    sub-int/2addr v12, v13

    .line 298
    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->i:I

    .line 299
    .line 300
    iget v14, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->h:I

    .line 301
    .line 302
    sub-int/2addr v13, v14

    .line 303
    if-lt v11, v12, :cond_9

    .line 304
    .line 305
    if-lt v11, v13, :cond_9

    .line 306
    .line 307
    const/4 v11, -0x3

    .line 308
    goto :goto_7

    .line 309
    :cond_9
    if-lt v12, v11, :cond_a

    .line 310
    .line 311
    if-lt v12, v13, :cond_a

    .line 312
    .line 313
    const/4 v11, -0x2

    .line 314
    goto :goto_7

    .line 315
    :cond_a
    const/4 v11, -0x1

    .line 316
    :goto_7
    iget-object v12, v6, Landroidx/palette/graphics/ColorCutQuantizer;->a:[I

    .line 317
    .line 318
    iget-object v13, v6, Landroidx/palette/graphics/ColorCutQuantizer;->b:[I

    .line 319
    .line 320
    invoke-static {v12, v11, v7, v4}, Landroidx/palette/graphics/ColorCutQuantizer;->a([IIII)V

    .line 321
    .line 322
    .line 323
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 324
    .line 325
    add-int/2addr v4, v10

    .line 326
    invoke-static {v12, v7, v4}, Ljava/util/Arrays;->sort([III)V

    .line 327
    .line 328
    .line 329
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 330
    .line 331
    invoke-static {v12, v11, v7, v4}, Landroidx/palette/graphics/ColorCutQuantizer;->a([IIII)V

    .line 332
    .line 333
    .line 334
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->c:I

    .line 335
    .line 336
    div-int/lit8 v4, v4, 0x2

    .line 337
    .line 338
    move v14, v5

    .line 339
    move v11, v7

    .line 340
    :goto_8
    iget v15, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 341
    .line 342
    if-gt v11, v15, :cond_c

    .line 343
    .line 344
    aget v16, v12, v11

    .line 345
    .line 346
    aget v16, v13, v16

    .line 347
    .line 348
    add-int v14, v14, v16

    .line 349
    .line 350
    if-lt v14, v4, :cond_b

    .line 351
    .line 352
    add-int/lit8 v15, v15, -0x1

    .line 353
    .line 354
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    goto :goto_9

    .line 359
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_c
    :goto_9
    new-instance v4, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 363
    .line 364
    add-int/lit8 v11, v7, 0x1

    .line 365
    .line 366
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 367
    .line 368
    invoke-direct {v4, v6, v11, v12}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 369
    .line 370
    .line 371
    iput v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 372
    .line 373
    invoke-virtual {v3}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 384
    .line 385
    const-string v2, "Can not split a box with only 1 color"

    .line 386
    .line 387
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v1

    .line 391
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eqz v3, :cond_12

    .line 409
    .line 410
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 415
    .line 416
    iget-object v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->j:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 417
    .line 418
    iget-object v6, v4, Landroidx/palette/graphics/ColorCutQuantizer;->a:[I

    .line 419
    .line 420
    iget-object v4, v4, Landroidx/palette/graphics/ColorCutQuantizer;->b:[I

    .line 421
    .line 422
    iget v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a:I

    .line 423
    .line 424
    move v10, v5

    .line 425
    move v11, v10

    .line 426
    move v12, v11

    .line 427
    move v13, v12

    .line 428
    :goto_b
    iget v14, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 429
    .line 430
    if-gt v7, v14, :cond_f

    .line 431
    .line 432
    aget v14, v6, v7

    .line 433
    .line 434
    aget v15, v4, v14

    .line 435
    .line 436
    add-int/2addr v11, v15

    .line 437
    shr-int/lit8 v16, v14, 0xa

    .line 438
    .line 439
    and-int/lit8 v16, v16, 0x1f

    .line 440
    .line 441
    mul-int v16, v16, v15

    .line 442
    .line 443
    add-int v10, v16, v10

    .line 444
    .line 445
    shr-int/lit8 v16, v14, 0x5

    .line 446
    .line 447
    and-int/lit8 v16, v16, 0x1f

    .line 448
    .line 449
    mul-int v16, v16, v15

    .line 450
    .line 451
    add-int v12, v16, v12

    .line 452
    .line 453
    and-int/lit8 v14, v14, 0x1f

    .line 454
    .line 455
    mul-int/2addr v15, v14

    .line 456
    add-int/2addr v13, v15

    .line 457
    add-int/lit8 v7, v7, 0x1

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_f
    int-to-float v3, v10

    .line 461
    int-to-float v4, v11

    .line 462
    div-float/2addr v3, v4

    .line 463
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    int-to-float v6, v12

    .line 468
    div-float/2addr v6, v4

    .line 469
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    int-to-float v7, v13

    .line 474
    div-float/2addr v7, v4

    .line 475
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    new-instance v7, Landroidx/palette/graphics/Palette$Swatch;

    .line 480
    .line 481
    invoke-static {v3, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    invoke-static {v6, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    invoke-static {v4, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    invoke-direct {v7, v3, v11}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7}, Landroidx/palette/graphics/Palette$Swatch;->b()[F

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    iget-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->d:[Landroidx/palette/graphics/Palette$Filter;

    .line 505
    .line 506
    if-eqz v4, :cond_11

    .line 507
    .line 508
    array-length v6, v4

    .line 509
    if-lez v6, :cond_11

    .line 510
    .line 511
    array-length v6, v4

    .line 512
    move v10, v5

    .line 513
    :goto_c
    if-ge v10, v6, :cond_11

    .line 514
    .line 515
    aget-object v11, v4, v10

    .line 516
    .line 517
    invoke-interface {v11, v3}, Landroidx/palette/graphics/Palette$Filter;->a([F)Z

    .line 518
    .line 519
    .line 520
    move-result v11

    .line 521
    if-nez v11, :cond_10

    .line 522
    .line 523
    goto :goto_a

    .line 524
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :cond_11
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_a

    .line 531
    :cond_12
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->c:Ljava/util/ArrayList;

    .line 532
    .line 533
    return-void
.end method

.method public static a([IIII)V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    .line 9
    .line 10
    aget p1, p0, p2

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x1f

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0xa

    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x5

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x5

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    shr-int/lit8 p1, p1, 0xa

    .line 24
    .line 25
    and-int/lit8 p1, p1, 0x1f

    .line 26
    .line 27
    or-int/2addr p1, v0

    .line 28
    aput p1, p0, p2

    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    .line 34
    .line 35
    aget p1, p0, p2

    .line 36
    .line 37
    shr-int/lit8 v0, p1, 0x5

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    shl-int/lit8 v0, v0, 0xa

    .line 42
    .line 43
    shr-int/lit8 v1, p1, 0xa

    .line 44
    .line 45
    and-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    shl-int/lit8 v1, v1, 0x5

    .line 48
    .line 49
    or-int/2addr v0, v1

    .line 50
    and-int/lit8 p1, p1, 0x1f

    .line 51
    .line 52
    or-int/2addr p1, v0

    .line 53
    aput p1, p0, p2

    .line 54
    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_2
    return-void
.end method

.method public static b(III)I
    .locals 0

    .line 1
    if-le p2, p1, :cond_0

    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    :goto_0
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method
